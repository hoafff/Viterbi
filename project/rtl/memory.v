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

    reg [7:0] pred_mem [0:7];

    always @(posedge clk) begin
        if (en_mem_wr && !en_mem_rd) begin
            pred_mem[i_wr_idx] <= {
                i_prev_st_11,
                i_prev_st_10,
                i_prev_st_01,
                i_prev_st_00
            };
        end
    end

    always @(*) begin
        if (!rst_n) begin
            o_prev_st_00 = 2'b00;
            o_prev_st_01 = 2'b00;
            o_prev_st_10 = 2'b00;
            o_prev_st_11 = 2'b00;
        end
        else if (en_mem_rd && !en_mem_wr) begin
            {
                o_prev_st_11,
                o_prev_st_10,
                o_prev_st_01,
                o_prev_st_00
            } = pred_mem[i_rd_idx];
        end
        else begin
            o_prev_st_00 = 2'b00;
            o_prev_st_01 = 2'b00;
            o_prev_st_10 = 2'b00;
            o_prev_st_11 = 2'b00;
        end
    end

endmodule