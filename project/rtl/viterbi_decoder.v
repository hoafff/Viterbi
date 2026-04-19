`timescale 1ns/1ps

module viterbi_decoder (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire [15:0] i_data,
    output wire [7:0]  o_data,
    output wire        o_done
);

    // -------------------------------------------------------------------------
    // Control signals
    // -------------------------------------------------------------------------
    wire       ctrl_ld_buf;
    wire       ctrl_en_fw;
    wire       ctrl_en_mem_wr;
    wire       ctrl_en_mem_rd;
    wire       ctrl_en_trbk;
    wire       ctrl_busy;
    wire [2:0] ctrl_sym_idx;
    wire [2:0] ctrl_tb_idx;

    // -------------------------------------------------------------------------
    // input_buffer_rx_selector -> bm_acs
    // -------------------------------------------------------------------------
    wire [1:0] rx_pair;

    // -------------------------------------------------------------------------
    // bm_acs -> memory / traceback
    // -------------------------------------------------------------------------
    wire [1:0] acs_prev_st_00;
    wire [1:0] acs_prev_st_01;
    wire [1:0] acs_prev_st_10;
    wire [1:0] acs_prev_st_11;
    wire [1:0] acs_slt_node;

    // -------------------------------------------------------------------------
    // memory -> traceback
    // -------------------------------------------------------------------------
    wire [1:0] mem_prev_st_00;
    wire [1:0] mem_prev_st_01;
    wire [1:0] mem_prev_st_10;
    wire [1:0] mem_prev_st_11;

    wire [7:0] tb_data;
    wire       tb_done;

    // -------------------------------------------------------------------------
    // control
    // -------------------------------------------------------------------------
    control u_control (
        .clk       (clk),
        .rst_n     (rst_n),
        .en        (en),
        .ld_buf    (ctrl_ld_buf),
        .en_fw     (ctrl_en_fw),
        .en_mem_wr (ctrl_en_mem_wr),
        .en_mem_rd (ctrl_en_mem_rd),
        .en_trbk   (ctrl_en_trbk),
        .o_busy    (ctrl_busy),
        .o_sym_idx (ctrl_sym_idx),
        .o_tb_idx  (ctrl_tb_idx)
    );

    // -------------------------------------------------------------------------
    // input buffer + rx selector
    // -------------------------------------------------------------------------
    input_buffer_rx_selector u_input_buffer_rx_selector (
        .clk    (clk),
        .rst_n  (rst_n),
        .ld_buf (ctrl_ld_buf),
        .en_fw  (ctrl_en_fw),
        .i_data (i_data),
        .o_rx   (rx_pair)
    );

    // -------------------------------------------------------------------------
    // BM + ACS
    // -------------------------------------------------------------------------
    bm_acs u_bm_acs (
        .clk          (clk),
        .rst_n        (rst_n),
        .i_init       (ctrl_ld_buf),
        .en_fw        (ctrl_en_fw),
        .i_rx         (rx_pair),
        .o_prev_st_00 (acs_prev_st_00),
        .o_prev_st_01 (acs_prev_st_01),
        .o_prev_st_10 (acs_prev_st_10),
        .o_prev_st_11 (acs_prev_st_11),
        .o_slt_node   (acs_slt_node)
    );

    // -------------------------------------------------------------------------
    // memory
    // -------------------------------------------------------------------------
    memory u_memory (
        .clk          (clk),
        .rst_n        (rst_n),
        .en_mem_wr    (ctrl_en_mem_wr),
        .en_mem_rd    (ctrl_en_mem_rd),
        .i_wr_idx     (ctrl_sym_idx),
        .i_rd_idx     (ctrl_tb_idx),
        .i_prev_st_00 (acs_prev_st_00),
        .i_prev_st_01 (acs_prev_st_01),
        .i_prev_st_10 (acs_prev_st_10),
        .i_prev_st_11 (acs_prev_st_11),
        .o_prev_st_00 (mem_prev_st_00),
        .o_prev_st_01 (mem_prev_st_01),
        .o_prev_st_10 (mem_prev_st_10),
        .o_prev_st_11 (mem_prev_st_11)
    );

    // -------------------------------------------------------------------------
    // traceback
    // -------------------------------------------------------------------------
    traceback u_traceback (
        .clk          (clk),
        .rst_n        (rst_n),
        .en_trbk      (ctrl_en_trbk),
        .i_prev_st_00 (mem_prev_st_00),
        .i_prev_st_01 (mem_prev_st_01),
        .i_prev_st_10 (mem_prev_st_10),
        .i_prev_st_11 (mem_prev_st_11),
        .i_start_node (acs_slt_node),
        .o_data       (tb_data),
        .o_done       (tb_done)
    );

    assign o_data = {tb_data[0], tb_data[1], tb_data[2], tb_data[3],
                 tb_data[4], tb_data[5], tb_data[6], tb_data[7]};
    assign o_done = tb_done;

endmodule