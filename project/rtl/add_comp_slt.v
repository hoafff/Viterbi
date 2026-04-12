`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: add_comp_slt
// Description:
//   Add-Compare-Select (ACS) block for 4-state Viterbi decoder.
//
//   - Keeps 4 internal path metrics: PM00, PM01, PM10, PM11
//   - On each valid en_acs pulse, updates survivor predecessor for each
//     destination state and updates path metrics accordingly
//   - o_slt_node is only finalized when i_last_step is asserted
//
// Notes:
//   - Reset is active-low asynchronous
//   - i_init is used to re-initialize metrics at the beginning of each frame
//   - MMAX is used as "unreachable" metric sentinel
//   - Saturating add is used for MMAX to avoid overflow/wraparound
//////////////////////////////////////////////////////////////////////////////////

module add_comp_slt (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       i_init,
    input  wire       i_last_step,
    input  wire       en_acs,
    input  wire [1:0] hd1,
    input  wire [1:0] hd2,
    input  wire [1:0] hd3,
    input  wire [1:0] hd4,
    input  wire [1:0] hd5,
    input  wire [1:0] hd6,
    input  wire [1:0] hd7,
    input  wire [1:0] hd8,
    output reg  [1:0] o_prev_st_00,
    output reg  [1:0] o_prev_st_01,
    output reg  [1:0] o_prev_st_10,
    output reg  [1:0] o_prev_st_11,
    output reg  [1:0] o_slt_node
);

    //--------------------------------------------------------------------------
    // Local parameters
    //--------------------------------------------------------------------------
    localparam [1:0] ST_00 = 2'b00;
    localparam [1:0] ST_01 = 2'b01;
    localparam [1:0] ST_10 = 2'b10;
    localparam [1:0] ST_11 = 2'b11;

    localparam [4:0] MMAX  = 5'd31;

    //--------------------------------------------------------------------------
    // Internal path metrics
    //--------------------------------------------------------------------------
    reg [4:0] PM00, PM01, PM10, PM11;
    reg [4:0] next_PM00, next_PM01, next_PM10, next_PM11;

    // Next output values
    reg [1:0] next_prev_st_00, next_prev_st_01, next_prev_st_10, next_prev_st_11;
    reg [1:0] next_slt_node;

    // Candidate metrics (6-bit for safe compare)
    reg [5:0] cand_00_a, cand_00_b;
    reg [5:0] cand_10_a, cand_10_b;
    reg [5:0] cand_01_a, cand_01_b;
    reg [5:0] cand_11_a, cand_11_b;

    reg [4:0] min_metric;

    //--------------------------------------------------------------------------
    // Saturating add:
    //   if current PM is MMAX, keep result at MMAX
    //   else normal addition
    //--------------------------------------------------------------------------
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

    //--------------------------------------------------------------------------
    // Combinational next-state / next-output logic
    //--------------------------------------------------------------------------
    always @(*) begin
        // Hold current values by default
        next_PM00       = PM00;
        next_PM01       = PM01;
        next_PM10       = PM10;
        next_PM11       = PM11;

        next_prev_st_00 = o_prev_st_00;
        next_prev_st_01 = o_prev_st_01;
        next_prev_st_10 = o_prev_st_10;
        next_prev_st_11 = o_prev_st_11;
        next_slt_node   = o_slt_node;

        cand_00_a = 6'd0;
        cand_00_b = 6'd0;
        cand_10_a = 6'd0;
        cand_10_b = 6'd0;
        cand_01_a = 6'd0;
        cand_01_b = 6'd0;
        cand_11_a = 6'd0;
        cand_11_b = 6'd0;

        min_metric = 5'd0;

        if (en_acs) begin
            //==============================================================
            // Candidate mapping for destination state 00
            //   cand_00_a = PM00 + hd1, predecessor 00
            //   cand_00_b = PM01 + hd5, predecessor 01
            // Tie-break: prefer predecessor 00 when equal
            //==============================================================
            cand_00_a = sat_add(PM00, hd1);
            cand_00_b = sat_add(PM01, hd5);

            if (cand_00_a <= cand_00_b) begin
                next_PM00       = cand_00_a[4:0];
                next_prev_st_00 = ST_00;
            end
            else begin
                next_PM00       = cand_00_b[4:0];
                next_prev_st_00 = ST_01;
            end

            //==============================================================
            // Candidate mapping for destination state 10
            //   cand_10_a = PM00 + hd2, predecessor 00
            //   cand_10_b = PM01 + hd6, predecessor 01
            // Tie-break: prefer predecessor 00 when equal
            //==============================================================
            cand_10_a = sat_add(PM00, hd2);
            cand_10_b = sat_add(PM01, hd6);

            if (cand_10_a <= cand_10_b) begin
                next_PM10       = cand_10_a[4:0];
                next_prev_st_10 = ST_00;
            end
            else begin
                next_PM10       = cand_10_b[4:0];
                next_prev_st_10 = ST_01;
            end

            //==============================================================
            // Candidate mapping for destination state 01
            //   cand_01_a = PM10 + hd3, predecessor 10
            //   cand_01_b = PM11 + hd7, predecessor 11
            // Tie-break: prefer predecessor 10 when equal
            //==============================================================
            cand_01_a = sat_add(PM10, hd3);
            cand_01_b = sat_add(PM11, hd7);

            if (cand_01_a <= cand_01_b) begin
                next_PM01       = cand_01_a[4:0];
                next_prev_st_01 = ST_10;
            end
            else begin
                next_PM01       = cand_01_b[4:0];
                next_prev_st_01 = ST_11;
            end

            //==============================================================
            // Candidate mapping for destination state 11
            //   cand_11_a = PM10 + hd4, predecessor 10
            //   cand_11_b = PM11 + hd8, predecessor 11
            // Tie-break: prefer predecessor 10 when equal
            //==============================================================
            cand_11_a = sat_add(PM10, hd4);
            cand_11_b = sat_add(PM11, hd8);

            if (cand_11_a <= cand_11_b) begin
                next_PM11       = cand_11_a[4:0];
                next_prev_st_11 = ST_10;
            end
            else begin
                next_PM11       = cand_11_b[4:0];
                next_prev_st_11 = ST_11;
            end

            //==============================================================
            // Select best node from UPDATED metrics
            // Priority on tie: 00 > 10 > 01 > 11
            // Only used when i_last_step = 1
            //==============================================================
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

    //--------------------------------------------------------------------------
    // Sequential registers
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            PM00         <= 5'd0;
            PM01         <= MMAX;
            PM10         <= MMAX;
            PM11         <= MMAX;

            o_prev_st_00 <= ST_00;
            o_prev_st_01 <= ST_00;
            o_prev_st_10 <= ST_00;
            o_prev_st_11 <= ST_00;
            o_slt_node   <= ST_00;
        end
        else if (i_init) begin
            PM00         <= 5'd0;
            PM01         <= MMAX;
            PM10         <= MMAX;
            PM11         <= MMAX;

            o_prev_st_00 <= ST_00;
            o_prev_st_01 <= ST_00;
            o_prev_st_10 <= ST_00;
            o_prev_st_11 <= ST_00;
            o_slt_node   <= ST_00;
        end
        else if (en_acs) begin
            PM00         <= next_PM00;
            PM01         <= next_PM01;
            PM10         <= next_PM10;
            PM11         <= next_PM11;

            o_prev_st_00 <= next_prev_st_00;
            o_prev_st_01 <= next_prev_st_01;
            o_prev_st_10 <= next_prev_st_10;
            o_prev_st_11 <= next_prev_st_11;

            if (i_last_step)
                o_slt_node <= next_slt_node;
        end
    end

endmodule