`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: control
// Description:
//   FSM controller for Code 1 Viterbi decoder.
//
//   Processing phases:
//     IDLE -> EXT -> BM_ACS -> STORE   (repeat 8 times)
//                                   -> TRACEBACK (8 cycles)
//                                   -> DONE (1 cycle)
//                                   -> IDLE
//
// Notes:
//   - Reset is active-low asynchronous.
//   - Moore-style control outputs.
//   - o_pair_count is intended to be used by top as write index during STORE.
//   - o_tb_count   is intended to be used by top as read index during TRACEBACK.
//   - In TRACEBACK, en_mem and en_trbk are both asserted, matching the spec
//     that memory readback and traceback run together in this phase.
//////////////////////////////////////////////////////////////////////////////////

module control (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,
    output reg        en_ext,
    output reg        en_brch,
    output reg        en_acs,
    output reg        en_mem,
    output reg        en_trbk,
    output reg        o_busy,
    output reg  [2:0] o_pair_count,
    output reg  [2:0] o_tb_count
);

    //--------------------------------------------------------------------------
    // State encoding
    //--------------------------------------------------------------------------
    localparam [2:0] ST_IDLE      = 3'd0;
    localparam [2:0] ST_EXT       = 3'd1;
    localparam [2:0] ST_BM_ACS    = 3'd2;
    localparam [2:0] ST_STORE     = 3'd3;
    localparam [2:0] ST_TRACEBACK = 3'd4;
    localparam [2:0] ST_DONE      = 3'd5;

    reg [2:0] state, next_state;
    reg [2:0] pair_count, next_pair_count;
    reg [2:0] tb_count,   next_tb_count;

    //--------------------------------------------------------------------------
    // Sequential state / counter registers
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state      <= ST_IDLE;
            pair_count <= 3'd0;
            tb_count   <= 3'd7;
        end
        else begin
            state      <= next_state;
            pair_count <= next_pair_count;
            tb_count   <= next_tb_count;
        end
    end

    //--------------------------------------------------------------------------
    // Combinational next-state / output logic
    //--------------------------------------------------------------------------
    always @(*) begin
        // Default holds
        next_state      = state;
        next_pair_count = pair_count;
        next_tb_count   = tb_count;

        // Default outputs
        en_ext       = 1'b0;
        en_brch      = 1'b0;
        en_acs       = 1'b0;
        en_mem       = 1'b0;
        en_trbk      = 1'b0;
        o_busy       = 1'b0;
        o_pair_count = pair_count;
        o_tb_count   = tb_count;

        case (state)
            //------------------------------------------------------------------
            // IDLE
            //------------------------------------------------------------------
            ST_IDLE: begin
                o_busy = 1'b0;

                // Accept a new frame request only in IDLE
                if (en) begin
                    next_state      = ST_EXT;
                    next_pair_count = 3'd0;
                    next_tb_count   = 3'd7;
                end
            end

            //------------------------------------------------------------------
            // EXT: enable extract_bit for one cycle
            //------------------------------------------------------------------
            ST_EXT: begin
                en_ext = 1'b1;
                o_busy = 1'b1;

                next_state = ST_BM_ACS;
            end

            //------------------------------------------------------------------
            // BM_ACS: enable branch_metric and add_comp_slt for one cycle
            //------------------------------------------------------------------
            ST_BM_ACS: begin
                en_brch = 1'b1;
                en_acs  = 1'b1;
                o_busy  = 1'b1;

                next_state = ST_STORE;
            end

            //------------------------------------------------------------------
            // STORE: enable memory write for one cycle
            // pair_count indicates the current trellis time-step being written
            //------------------------------------------------------------------
            ST_STORE: begin
                en_mem = 1'b1;
                o_busy = 1'b1;

                if (pair_count == 3'd7) begin
                    // Finished writing the 8th pair, prepare traceback
                    next_state    = ST_TRACEBACK;
                    next_tb_count = 3'd7;
                end
                else begin
                    next_state      = ST_EXT;
                    next_pair_count = pair_count + 3'd1;
                end
            end

            //------------------------------------------------------------------
            // TRACEBACK: memory readback + traceback run together
            // tb_count indicates the current trellis time-step being read
            //------------------------------------------------------------------
            ST_TRACEBACK: begin
                en_mem  = 1'b1;
                en_trbk = 1'b1;
                o_busy  = 1'b1;

                if (tb_count == 3'd0) begin
                    next_state = ST_DONE;
                end
                else begin
                    next_state    = ST_TRACEBACK;
                    next_tb_count = tb_count - 3'd1;
                end
            end

            //------------------------------------------------------------------
            // DONE: one-cycle completion state, then return to IDLE
            //------------------------------------------------------------------
            ST_DONE: begin
                o_busy = 1'b1;

                next_state      = ST_IDLE;
                next_pair_count = 3'd0;
                next_tb_count   = 3'd7;
            end

            default: begin
                next_state      = ST_IDLE;
                next_pair_count = 3'd0;
                next_tb_count   = 3'd7;
            end
        endcase
    end

endmodule