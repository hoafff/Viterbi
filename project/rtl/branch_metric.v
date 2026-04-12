`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: branch_metric
// Description:
//   Combinational branch-metric mapper for 4-state Viterbi decoder.
//   Given one received 2-bit symbol i_rx, this block outputs 8 Hamming-distance
//   branch metrics hd1..hd8 according to the fixed trellis mapping.
//   - rst_n  = 0  => all outputs are forced to 0
//   - en_brch = 0 => all outputs are forced to 0
//////////////////////////////////////////////////////////////////////////////////

module branch_metric (
    input  wire       rst_n,
    input  wire       en_brch,
    input  wire [1:0] i_rx,
    output reg  [1:0] hd1,
    output reg  [1:0] hd2,
    output reg  [1:0] hd3,
    output reg  [1:0] hd4,
    output reg  [1:0] hd5,
    output reg  [1:0] hd6,
    output reg  [1:0] hd7,
    output reg  [1:0] hd8
);

    always @(*) begin
        // Default safe outputs
        hd1 = 2'd0;
        hd2 = 2'd0;
        hd3 = 2'd0;
        hd4 = 2'd0;
        hd5 = 2'd0;
        hd6 = 2'd0;
        hd7 = 2'd0;
        hd8 = 2'd0;

        // Only output valid branch metrics when reset is inactive and enable is asserted
        if (rst_n && en_brch) begin
            case (i_rx)
                2'b00: begin
                    // Hamming distance from rx=00 to expected branch outputs:
                    // hd1(00)=0, hd2(11)=2, hd3(10)=1, hd4(01)=1,
                    // hd5(11)=2, hd6(00)=0, hd7(01)=1, hd8(10)=1
                    hd1 = 2'd0;
                    hd2 = 2'd2;
                    hd3 = 2'd1;
                    hd4 = 2'd1;
                    hd5 = 2'd2;
                    hd6 = 2'd0;
                    hd7 = 2'd1;
                    hd8 = 2'd1;
                end

                2'b01: begin
                    hd1 = 2'd1;
                    hd2 = 2'd1;
                    hd3 = 2'd2;
                    hd4 = 2'd0;
                    hd5 = 2'd1;
                    hd6 = 2'd1;
                    hd7 = 2'd0;
                    hd8 = 2'd2;
                end

                2'b10: begin
                    hd1 = 2'd1;
                    hd2 = 2'd1;
                    hd3 = 2'd0;
                    hd4 = 2'd2;
                    hd5 = 2'd1;
                    hd6 = 2'd1;
                    hd7 = 2'd2;
                    hd8 = 2'd0;
                end

                2'b11: begin
                    hd1 = 2'd2;
                    hd2 = 2'd0;
                    hd3 = 2'd1;
                    hd4 = 2'd1;
                    hd5 = 2'd0;
                    hd6 = 2'd2;
                    hd7 = 2'd1;
                    hd8 = 2'd1;
                end

                default: begin
                    hd1 = 2'd0;
                    hd2 = 2'd0;
                    hd3 = 2'd0;
                    hd4 = 2'd0;
                    hd5 = 2'd0;
                    hd6 = 2'd0;
                    hd7 = 2'd0;
                    hd8 = 2'd0;
                end
            endcase
        end
    end

endmodule