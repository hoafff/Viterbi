`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: traceback
// Description:
//   Reconstructs decoded 8-bit data from stored predecessor history.
//
//   Traceback rule:
//     current state 00 -> decoded bit 0
//     current state 01 -> decoded bit 0
//     current state 10 -> decoded bit 1
//     current state 11 -> decoded bit 1
//
//   Predecessor selection rule:
//     current state 00 -> next state = i_bck_prev_st_00
//     current state 01 -> next state = i_bck_prev_st_01
//     current state 10 -> next state = i_bck_prev_st_10
//     current state 11 -> next state = i_bck_prev_st_11
//
// Notes:
//   - Reset is active-low asynchronous.
//   - One traceback session processes exactly 8 steps.
//   - First traceback cycle uses i_slt_node as the starting current state
//     and writes o_data[7].
//   - After writing o_data[0], done_pending is set.
//   - o_done is asserted for exactly one clock cycle on the next cycle.
//   - wait_en_low prevents unintended retrigger if en_trbk stays high after done.
//////////////////////////////////////////////////////////////////////////////////

module traceback (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en_trbk,
    input  wire [1:0] i_bck_prev_st_00,
    input  wire [1:0] i_bck_prev_st_01,
    input  wire [1:0] i_bck_prev_st_10,
    input  wire [1:0] i_bck_prev_st_11,
    input  wire [1:0] i_slt_node,
    output reg  [7:0] o_data,
    output reg        o_done
);

    localparam [1:0] ST_00 = 2'b00;
    localparam [1:0] ST_01 = 2'b01;
    localparam [1:0] ST_10 = 2'b10;
    localparam [1:0] ST_11 = 2'b11;

    reg [1:0] cur_state;
    reg [2:0] tb_idx;
    reg       trbk_active;
    reg       wait_en_low;
    reg       done_pending;

    // Return decoded bit from current state:
    // 00/01 -> 0, 10/11 -> 1
    function decode_bit;
        input [1:0] state;
        begin
            case (state)
                ST_00: decode_bit = 1'b0;
                ST_01: decode_bit = 1'b0;
                ST_10: decode_bit = 1'b1;
                ST_11: decode_bit = 1'b1;
                default: decode_bit = 1'b0;
            endcase
        end
    endfunction

    // Return predecessor of current state from memory readback
    function [1:0] select_prev_state;
        input [1:0] state;
        begin
            case (state)
                ST_00: select_prev_state = i_bck_prev_st_00;
                ST_01: select_prev_state = i_bck_prev_st_01;
                ST_10: select_prev_state = i_bck_prev_st_10;
                ST_11: select_prev_state = i_bck_prev_st_11;
                default: select_prev_state = ST_00;
            endcase
        end
    endfunction

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            o_data       <= 8'b0000_0000;
            o_done       <= 1'b0;
            cur_state    <= ST_00;
            tb_idx       <= 3'd7;
            trbk_active  <= 1'b0;
            wait_en_low  <= 1'b0;
            done_pending <= 1'b0;
        end
        else begin
            // Default: o_done is a one-cycle pulse
            o_done <= 1'b0;

            // Pulse done exactly one cycle after final data bit is written
            if (done_pending) begin
                o_done       <= 1'b1;
                done_pending <= 1'b0;
            end

            // Release retrigger lock when en_trbk goes low
            if (!en_trbk) begin
                wait_en_low <= 1'b0;
            end

            // Start of a new traceback session
            if (en_trbk && !trbk_active && !wait_en_low) begin
                // First step uses i_slt_node directly and writes o_data[7]
                o_data[7]   <= decode_bit(i_slt_node);
                cur_state   <= select_prev_state(i_slt_node);
                tb_idx      <= 3'd6;
                trbk_active <= 1'b1;
            end
            // Continue ongoing traceback session
            else if (en_trbk && trbk_active) begin
                o_data[tb_idx] <= decode_bit(cur_state);

                if (tb_idx == 3'd0) begin
                    // Final step completed: o_data[0] just written
                    cur_state    <= select_prev_state(cur_state);
                    trbk_active  <= 1'b0;
                    wait_en_low  <= 1'b1;
                    tb_idx       <= 3'd7;
                    done_pending <= 1'b1;
                end
                else begin
                    cur_state <= select_prev_state(cur_state);
                    tb_idx    <= tb_idx - 3'd1;
                end
            end
        end
    end

endmodule