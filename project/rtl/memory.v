`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: memory
// Description:
//   Trellis predecessor memory for 8 time-steps of a 4-state Viterbi decoder.
//
//   Architecture decision for this project:
//   - memory does NOT keep hidden write/read pointers
//   - top/control provides explicit mode and explicit index
//   - memory only stores and reads predecessor records
//
//   Storage organization:
//   - 8 entries (time-step 0..7)
//   - each entry stores 4 predecessors, each predecessor is 2 bits
//
//   Mode convention:
//   - en_mem=1, i_mem_wr=1, i_mem_rd=0 : write one entry at i_wr_idx
//   - en_mem=1, i_mem_wr=0, i_mem_rd=1 : read one entry from i_rd_idx
//   - other combinations                  : no operation (illegal/unused mode)
//
// Notes:
//   - Reset is active-low asynchronous
//   - Write is sequential
//   - Readback is combinational for traceback
//////////////////////////////////////////////////////////////////////////////////

module memory (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en_mem,
    input  wire       i_mem_wr,
    input  wire       i_mem_rd,
    input  wire [2:0] i_wr_idx,
    input  wire [2:0] i_rd_idx,
    input  wire [1:0] i_prev_st_00,
    input  wire [1:0] i_prev_st_01,
    input  wire [1:0] i_prev_st_10,
    input  wire [1:0] i_prev_st_11,
    output reg  [1:0] o_prev_st_00,
    output reg  [1:0] o_prev_st_01,
    output reg  [1:0] o_prev_st_10,
    output reg  [1:0] o_prev_st_11
);

    // 8 time-step records, each record stores predecessor of 4 destination states
    reg [1:0] mem00 [0:7];
    reg [1:0] mem01 [0:7];
    reg [1:0] mem10 [0:7];
    reg [1:0] mem11 [0:7];

    integer idx;

    //--------------------------------------------------------------------------
    // Sequential write
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (idx = 0; idx < 8; idx = idx + 1) begin
                mem00[idx] <= 2'b00;
                mem01[idx] <= 2'b00;
                mem10[idx] <= 2'b00;
                mem11[idx] <= 2'b00;
            end
        end
        else if (en_mem && i_mem_wr && !i_mem_rd) begin
            mem00[i_wr_idx] <= i_prev_st_00;
            mem01[i_wr_idx] <= i_prev_st_01;
            mem10[i_wr_idx] <= i_prev_st_10;
            mem11[i_wr_idx] <= i_prev_st_11;
        end
    end

    //--------------------------------------------------------------------------
    // Combinational readback
    //--------------------------------------------------------------------------
    always @(*) begin
        if (en_mem && !i_mem_wr && i_mem_rd) begin
            o_prev_st_00 = mem00[i_rd_idx];
            o_prev_st_01 = mem01[i_rd_idx];
            o_prev_st_10 = mem10[i_rd_idx];
            o_prev_st_11 = mem11[i_rd_idx];
        end
        else begin
            o_prev_st_00 = 2'b00;
            o_prev_st_01 = 2'b00;
            o_prev_st_10 = 2'b00;
            o_prev_st_11 = 2'b00;
        end
    end

endmodule