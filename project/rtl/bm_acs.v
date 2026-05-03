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

    // -------------------------------------------------------------
    // State encoding
    // -------------------------------------------------------------
    localparam [1:0] ST_00 = 2'b00;
    localparam [1:0] ST_01 = 2'b01;
    localparam [1:0] ST_10 = 2'b10;
    localparam [1:0] ST_11 = 2'b11;

    // Maximum metric.
    // With 8 received symbols and max branch metric = 2,
    // real maximum path metric is 16. 5 bits are safe.
    localparam [4:0] MMAX = 5'd31;

    // -------------------------------------------------------------
    // Registered path metrics
    // -------------------------------------------------------------
    reg [4:0] PM00, PM01, PM10, PM11;
    reg [4:0] next_PM00, next_PM01, next_PM10, next_PM11;

    // -------------------------------------------------------------
    // Combinational predecessor outputs
    // These are written to memory in the same forward cycle.
    // -------------------------------------------------------------
    reg [1:0] next_prev_st_00;
    reg [1:0] next_prev_st_01;
    reg [1:0] next_prev_st_10;
    reg [1:0] next_prev_st_11;

    reg [1:0] next_slt_node;

    assign o_prev_st_00 = next_prev_st_00;
    assign o_prev_st_01 = next_prev_st_01;
    assign o_prev_st_10 = next_prev_st_10;
    assign o_prev_st_11 = next_prev_st_11;

    // -------------------------------------------------------------
    // Optimized branch metrics
    //
    // Hamming distance from received pair i_rx to each theoretical
    // encoder output:
    //   hd00: distance to 00
    //   hd01: distance to 01
    //   hd10: distance to 10
    //   hd11: distance to 11
    //
    // This replaces hd1..hd8 because several trellis branches share
    // the same theoretical output.
    // -------------------------------------------------------------
    wire [1:0] hd00;
    wire [1:0] hd01;
    wire [1:0] hd10;
    wire [1:0] hd11;

    assign hd00 = {1'b0,  i_rx[1]} + {1'b0,  i_rx[0]};
    assign hd11 = {1'b0, ~i_rx[1]} + {1'b0, ~i_rx[0]};
    assign hd10 = {1'b0, ~i_rx[1]} + {1'b0,  i_rx[0]};
    assign hd01 = {1'b0,  i_rx[1]} + {1'b0, ~i_rx[0]};

    // -------------------------------------------------------------
    // Candidate path metrics
    // -------------------------------------------------------------
    reg [5:0] cand_00_a, cand_00_b;
    reg [5:0] cand_01_a, cand_01_b;
    reg [5:0] cand_10_a, cand_10_b;
    reg [5:0] cand_11_a, cand_11_b;

    reg [4:0] min_metric;

    // -------------------------------------------------------------
    // Saturating add
    //
    // If a state has metric MMAX, it is treated as unreachable.
    // Keeping saturation prevents wraparound when adding branch metric.
    // -------------------------------------------------------------
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
    // Combinational ACS
    //
    // Trellis mapping for g1 = 111, g2 = 101:
    //
    // Current state  Input  Next state  Output
    //      00          0       00         00
    //      00          1       10         11
    //      01          0       00         11
    //      01          1       10         00
    //      10          0       01         10
    //      10          1       11         01
    //      11          0       01         01
    //      11          1       11         10
    // -------------------------------------------------------------
    always @(*) begin
        // Default: hold metrics if en_fw = 0.
        next_PM00 = PM00;
        next_PM01 = PM01;
        next_PM10 = PM10;
        next_PM11 = PM11;

        next_prev_st_00 = ST_00;
        next_prev_st_01 = ST_00;
        next_prev_st_10 = ST_00;
        next_prev_st_11 = ST_00;

        next_slt_node = o_slt_node;

        cand_00_a = 6'd0;
        cand_00_b = 6'd0;
        cand_01_a = 6'd0;
        cand_01_b = 6'd0;
        cand_10_a = 6'd0;
        cand_10_b = 6'd0;
        cand_11_a = 6'd0;
        cand_11_b = 6'd0;

        min_metric = 5'd0;

        if (en_fw) begin
            // -----------------------------------------------------
            // Destination state 00:
            //   from 00, output 00
            //   from 01, output 11
            // -----------------------------------------------------
            cand_00_a = sat_add(PM00, hd00);
            cand_00_b = sat_add(PM01, hd11);

            if (cand_00_a <= cand_00_b) begin
                next_PM00       = cand_00_a[4:0];
                next_prev_st_00 = ST_00;
            end
            else begin
                next_PM00       = cand_00_b[4:0];
                next_prev_st_00 = ST_01;
            end

            // -----------------------------------------------------
            // Destination state 10:
            //   from 00, output 11
            //   from 01, output 00
            // -----------------------------------------------------
            cand_10_a = sat_add(PM00, hd11);
            cand_10_b = sat_add(PM01, hd00);

            if (cand_10_a <= cand_10_b) begin
                next_PM10       = cand_10_a[4:0];
                next_prev_st_10 = ST_00;
            end
            else begin
                next_PM10       = cand_10_b[4:0];
                next_prev_st_10 = ST_01;
            end

            // -----------------------------------------------------
            // Destination state 01:
            //   from 10, output 10
            //   from 11, output 01
            // -----------------------------------------------------
            cand_01_a = sat_add(PM10, hd10);
            cand_01_b = sat_add(PM11, hd01);

            if (cand_01_a <= cand_01_b) begin
                next_PM01       = cand_01_a[4:0];
                next_prev_st_01 = ST_10;
            end
            else begin
                next_PM01       = cand_01_b[4:0];
                next_prev_st_01 = ST_11;
            end

            // -----------------------------------------------------
            // Destination state 11:
            //   from 10, output 01
            //   from 11, output 10
            // -----------------------------------------------------
            cand_11_a = sat_add(PM10, hd01);
            cand_11_b = sat_add(PM11, hd10);

            if (cand_11_a <= cand_11_b) begin
                next_PM11       = cand_11_a[4:0];
                next_prev_st_11 = ST_10;
            end
            else begin
                next_PM11       = cand_11_b[4:0];
                next_prev_st_11 = ST_11;
            end

            // -----------------------------------------------------
            // Select best final node from updated path metrics.
            //
            // Tie priority is kept deterministic:
            //   00 -> 10 -> 01 -> 11
            // This matches the original comparison style.
            // -----------------------------------------------------
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
    // Sequential path metric update
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