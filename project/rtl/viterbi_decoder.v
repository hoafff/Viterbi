`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: viterbi_decoder
// Description:
//   Top-level RTL for Code 1 Viterbi decoder.
//
//   Integrated submodules:
//     - control
//     - extract_bit
//     - branch_metric
//     - add_comp_slt
//     - memory
//     - traceback
//
// Notes on integration choices:
//   1) i_data is latched when a new frame is accepted.
//   2) New requests are ignored while busy.
//   3) extract_bit and add_comp_slt are explicitly re-initialized by frame_accept.
//   4) memory readback is combinational, so traceback uses memory output directly.
//   5) add_comp_slt only finalizes selected node on the last ACS step.
//////////////////////////////////////////////////////////////////////////////////

module viterbi_decoder (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire [15:0] i_data,
    output reg  [7:0]  o_data,
    output reg         o_done
);

    //--------------------------------------------------------------------------
    // Latched input frame
    //--------------------------------------------------------------------------
    reg [15:0] frame_latched;

    //--------------------------------------------------------------------------
    // Control signals
    //--------------------------------------------------------------------------
    wire       ctrl_en_ext;
    wire       ctrl_en_brch;
    wire       ctrl_en_acs;
    wire       ctrl_en_mem;
    wire       ctrl_en_trbk;
    wire       ctrl_busy;
    wire [2:0] ctrl_pair_count;
    wire [2:0] ctrl_tb_count;

    //--------------------------------------------------------------------------
    // Start-of-frame accept handshake
    //--------------------------------------------------------------------------
    wire frame_accept;

    assign frame_accept = en & ~ctrl_busy;

    //--------------------------------------------------------------------------
    // Explicit per-frame init / final-step signals
    //--------------------------------------------------------------------------
    wire ext_init;
    wire acs_init;
    wire acs_last_step;

    assign ext_init      = frame_accept;
    assign acs_init      = frame_accept;
    assign acs_last_step = ctrl_en_acs && (ctrl_pair_count == 3'd7);

    //--------------------------------------------------------------------------
    // extract_bit <-> branch_metric
    //--------------------------------------------------------------------------
    wire [1:0] rx_pair;

    wire [1:0] hd1;
    wire [1:0] hd2;
    wire [1:0] hd3;
    wire [1:0] hd4;
    wire [1:0] hd5;
    wire [1:0] hd6;
    wire [1:0] hd7;
    wire [1:0] hd8;

    //--------------------------------------------------------------------------
    // ACS outputs
    //--------------------------------------------------------------------------
    wire [1:0] acs_prev_st_00;
    wire [1:0] acs_prev_st_01;
    wire [1:0] acs_prev_st_10;
    wire [1:0] acs_prev_st_11;
    wire [1:0] acs_slt_node;

    //--------------------------------------------------------------------------
    // Memory interface
    //--------------------------------------------------------------------------
    wire       mem_wr;
    wire       mem_rd;
    wire [2:0] mem_wr_idx;
    wire [2:0] mem_rd_idx;
    wire [1:0] mem_prev_st_00;
    wire [1:0] mem_prev_st_01;
    wire [1:0] mem_prev_st_10;
    wire [1:0] mem_prev_st_11;

    //--------------------------------------------------------------------------
    // Traceback outputs
    //--------------------------------------------------------------------------
    wire [7:0] tb_o_data;
    wire       tb_o_done;

    //--------------------------------------------------------------------------
    // Latch input frame only when request is accepted
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            frame_latched <= 16'h0000;
        end
        else if (frame_accept) begin
            frame_latched <= i_data;
        end
    end

    //--------------------------------------------------------------------------
    // Control instance
    //--------------------------------------------------------------------------
    control u_control (
        .clk          (clk),
        .rst_n        (rst_n),
        .en           (en),
        .en_ext       (ctrl_en_ext),
        .en_brch      (ctrl_en_brch),
        .en_acs       (ctrl_en_acs),
        .en_mem       (ctrl_en_mem),
        .en_trbk      (ctrl_en_trbk),
        .o_busy       (ctrl_busy),
        .o_pair_count (ctrl_pair_count),
        .o_tb_count   (ctrl_tb_count)
    );

    //--------------------------------------------------------------------------
    // extract_bit instance
    //--------------------------------------------------------------------------
    extract_bit u_extract_bit (
        .clk    (clk),
        .rst_n  (rst_n),
        .i_init (ext_init),
        .en_ext (ctrl_en_ext),
        .i_data (frame_latched),
        .o_rx   (rx_pair)
    );

    //--------------------------------------------------------------------------
    // branch_metric instance
    //--------------------------------------------------------------------------
    branch_metric u_branch_metric (
        .rst_n   (rst_n),
        .en_brch (ctrl_en_brch),
        .i_rx    (rx_pair),
        .hd1     (hd1),
        .hd2     (hd2),
        .hd3     (hd3),
        .hd4     (hd4),
        .hd5     (hd5),
        .hd6     (hd6),
        .hd7     (hd7),
        .hd8     (hd8)
    );

    //--------------------------------------------------------------------------
    // add_comp_slt instance
    //--------------------------------------------------------------------------
    add_comp_slt u_add_comp_slt (
        .clk          (clk),
        .rst_n        (rst_n),
        .i_init       (acs_init),
        .i_last_step  (acs_last_step),
        .en_acs       (ctrl_en_acs),
        .hd1          (hd1),
        .hd2          (hd2),
        .hd3          (hd3),
        .hd4          (hd4),
        .hd5          (hd5),
        .hd6          (hd6),
        .hd7          (hd7),
        .hd8          (hd8),
        .o_prev_st_00 (acs_prev_st_00),
        .o_prev_st_01 (acs_prev_st_01),
        .o_prev_st_10 (acs_prev_st_10),
        .o_prev_st_11 (acs_prev_st_11),
        .o_slt_node   (acs_slt_node)
    );

    //--------------------------------------------------------------------------
    // Memory mode/index generation
    //--------------------------------------------------------------------------
    assign mem_wr     = ctrl_en_mem & ~ctrl_en_trbk;
    assign mem_rd     = ctrl_en_mem &  ctrl_en_trbk;
    assign mem_wr_idx = ctrl_pair_count;
    assign mem_rd_idx = ctrl_tb_count;

    memory u_memory (
        .clk          (clk),
        .rst_n        (rst_n),
        .en_mem       (ctrl_en_mem),
        .i_mem_wr     (mem_wr),
        .i_mem_rd     (mem_rd),
        .i_wr_idx     (mem_wr_idx),
        .i_rd_idx     (mem_rd_idx),
        .i_prev_st_00 (acs_prev_st_00),
        .i_prev_st_01 (acs_prev_st_01),
        .i_prev_st_10 (acs_prev_st_10),
        .i_prev_st_11 (acs_prev_st_11),
        .o_prev_st_00 (mem_prev_st_00),
        .o_prev_st_01 (mem_prev_st_01),
        .o_prev_st_10 (mem_prev_st_10),
        .o_prev_st_11 (mem_prev_st_11)
    );

    //--------------------------------------------------------------------------
    // Traceback instance
    // Uses memory readback directly.
    //--------------------------------------------------------------------------
    traceback u_traceback (
        .clk             (clk),
        .rst_n           (rst_n),
        .en_trbk         (ctrl_en_trbk),
        .i_bck_prev_st_00(mem_prev_st_00),
        .i_bck_prev_st_01(mem_prev_st_01),
        .i_bck_prev_st_10(mem_prev_st_10),
        .i_bck_prev_st_11(mem_prev_st_11),
        .i_slt_node      (acs_slt_node),
        .o_data          (tb_o_data),
        .o_done          (tb_o_done)
    );

    //--------------------------------------------------------------------------
    // Top outputs
    //--------------------------------------------------------------------------
    always @(*) begin
        o_data = tb_o_data;
        o_done = tb_o_done;
    end

endmodule