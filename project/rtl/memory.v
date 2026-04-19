`timescale 1ns/1ps

module memory (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en_mem_wr,
    input  wire       en_mem_rd,
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

    reg [1:0] mem00 [0:7];
    reg [1:0] mem01 [0:7];
    reg [1:0] mem10 [0:7];
    reg [1:0] mem11 [0:7];

    integer idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (idx = 0; idx < 8; idx = idx + 1) begin
                mem00[idx] <= 2'b00;
                mem01[idx] <= 2'b00;
                mem10[idx] <= 2'b00;
                mem11[idx] <= 2'b00;
            end
        end
        else if (en_mem_wr && !en_mem_rd) begin
            mem00[i_wr_idx] <= i_prev_st_00;
            mem01[i_wr_idx] <= i_prev_st_01;
            mem10[i_wr_idx] <= i_prev_st_10;
            mem11[i_wr_idx] <= i_prev_st_11;
        end
    end

    always @(*) begin
        if (en_mem_rd && !en_mem_wr) begin
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