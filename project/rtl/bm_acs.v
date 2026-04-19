`timescale 1ns/1ps

module bm_acs (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       i_init,
    input  wire       en_fw,
    input  wire [1:0] i_rx,
    output wire [1:0] o_prev_st_00,
    output wire [1:0] o_prev_st_01,
    output wire [1:0] o_prev_st_10,
    output wire [1:0] o_prev_st_11,
    output reg  [1:0] o_slt_node
);

    localparam [1:0] ST_00 = 2'b00;
    localparam [1:0] ST_01 = 2'b01;
    localparam [1:0] ST_10 = 2'b10;
    localparam [1:0] ST_11 = 2'b11;

    localparam [4:0] MMAX = 5'd31;

    // Registered path metrics
    reg [4:0] PM00, PM01, PM10, PM11;
    reg [4:0] next_PM00, next_PM01, next_PM10, next_PM11;

    // Combinational predecessor outputs for SAME-CYCLE memory write
    reg [1:0] next_prev_st_00, next_prev_st_01, next_prev_st_10, next_prev_st_11;
    reg [1:0] next_slt_node;

    reg [1:0] hd1, hd2, hd3, hd4, hd5, hd6, hd7, hd8;

    reg [5:0] cand_00_a, cand_00_b;
    reg [5:0] cand_10_a, cand_10_b;
    reg [5:0] cand_01_a, cand_01_b;
    reg [5:0] cand_11_a, cand_11_b;

    reg [4:0] min_metric;

    assign o_prev_st_00 = next_prev_st_00;
    assign o_prev_st_01 = next_prev_st_01;
    assign o_prev_st_10 = next_prev_st_10;
    assign o_prev_st_11 = next_prev_st_11;

    function [5:0] sat_add;
        input [4:0] pm;
        input [1:0] bm;
        begin
            if (pm == MMAX)
                sat_add = {1'b0, MMAX};
            else
                sat_add = {1'b0, pm} + {4'b0000, bm};
        end
    endfunction

    // -------------------------------------------------------------
    // Branch metric lookup
    // -------------------------------------------------------------
    always @(*) begin
        case (i_rx)
            2'b00: begin
                hd1 = 2'd0; hd2 = 2'd2; hd3 = 2'd1; hd4 = 2'd1;
                hd5 = 2'd2; hd6 = 2'd0; hd7 = 2'd1; hd8 = 2'd1;
            end
            2'b01: begin
                hd1 = 2'd1; hd2 = 2'd1; hd3 = 2'd2; hd4 = 2'd0;
                hd5 = 2'd1; hd6 = 2'd1; hd7 = 2'd0; hd8 = 2'd2;
            end
            2'b10: begin
                hd1 = 2'd1; hd2 = 2'd1; hd3 = 2'd0; hd4 = 2'd2;
                hd5 = 2'd1; hd6 = 2'd1; hd7 = 2'd2; hd8 = 2'd0;
            end
            2'b11: begin
                hd1 = 2'd2; hd2 = 2'd0; hd3 = 2'd1; hd4 = 2'd1;
                hd5 = 2'd0; hd6 = 2'd2; hd7 = 2'd1; hd8 = 2'd1;
            end
            default: begin
                hd1 = 2'd0; hd2 = 2'd0; hd3 = 2'd0; hd4 = 2'd0;
                hd5 = 2'd0; hd6 = 2'd0; hd7 = 2'd0; hd8 = 2'd0;
            end
        endcase
    end

    // -------------------------------------------------------------
    // Combinational ACS
    // -------------------------------------------------------------
    always @(*) begin
        next_PM00 = PM00;
        next_PM01 = PM01;
        next_PM10 = PM10;
        next_PM11 = PM11;

        next_prev_st_00 = ST_00;
        next_prev_st_01 = ST_00;
        next_prev_st_10 = ST_00;
        next_prev_st_11 = ST_00;
        next_slt_node   = o_slt_node;

        cand_00_a = 6'd0; cand_00_b = 6'd0;
        cand_10_a = 6'd0; cand_10_b = 6'd0;
        cand_01_a = 6'd0; cand_01_b = 6'd0;
        cand_11_a = 6'd0; cand_11_b = 6'd0;

        min_metric = 5'd0;

        if (en_fw) begin
            // destination 00: from 00 or 01
            cand_00_a = sat_add(PM00, hd1);
            cand_00_b = sat_add(PM01, hd5);
            if (cand_00_a <= cand_00_b) begin
                next_PM00       = cand_00_a[4:0];
                next_prev_st_00 = ST_00;
            end else begin
                next_PM00       = cand_00_b[4:0];
                next_prev_st_00 = ST_01;
            end

            // destination 10: from 00 or 01
            cand_10_a = sat_add(PM00, hd2);
            cand_10_b = sat_add(PM01, hd6);
            if (cand_10_a <= cand_10_b) begin
                next_PM10       = cand_10_a[4:0];
                next_prev_st_10 = ST_00;
            end else begin
                next_PM10       = cand_10_b[4:0];
                next_prev_st_10 = ST_01;
            end

            // destination 01: from 10 or 11
            cand_01_a = sat_add(PM10, hd3);
            cand_01_b = sat_add(PM11, hd7);
            if (cand_01_a <= cand_01_b) begin
                next_PM01       = cand_01_a[4:0];
                next_prev_st_01 = ST_10;
            end else begin
                next_PM01       = cand_01_b[4:0];
                next_prev_st_01 = ST_11;
            end

            // destination 11: from 10 or 11
            cand_11_a = sat_add(PM10, hd4);
            cand_11_b = sat_add(PM11, hd8);
            if (cand_11_a <= cand_11_b) begin
                next_PM11       = cand_11_a[4:0];
                next_prev_st_11 = ST_10;
            end else begin
                next_PM11       = cand_11_b[4:0];
                next_prev_st_11 = ST_11;
            end

            // best final node from UPDATED metrics
            next_slt_node = ST_00;
            min_metric    = next_PM00;

            if (next_PM10 < min_metric) begin
                next_slt_node = ST_10;
                min_metric    = next_PM10;
            end
            if (next_PM01 < min_metric) begin
                next_slt_node = ST_01;
                min_metric    = next_PM01;
            end
            if (next_PM11 < min_metric) begin
                next_slt_node = ST_11;
                min_metric    = next_PM11;
            end
        end
    end

    // -------------------------------------------------------------
    // Sequential metric update
    // -------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            PM00       <= 5'd0;
            PM01       <= MMAX;
            PM10       <= MMAX;
            PM11       <= MMAX;
            o_slt_node <= ST_00;
        end
        else if (i_init) begin
            PM00       <= 5'd0;
            PM01       <= MMAX;
            PM10       <= MMAX;
            PM11       <= MMAX;
            o_slt_node <= ST_00;
        end
        else if (en_fw) begin
            PM00       <= next_PM00;
            PM01       <= next_PM01;
            PM10       <= next_PM10;
            PM11       <= next_PM11;
            o_slt_node <= next_slt_node;
        end
    end

endmodule