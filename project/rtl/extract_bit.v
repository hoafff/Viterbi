`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Module: extract_bit
// Description:
//   Sequential extractor for 16-bit encoded input frame.
//   Each time en_ext is asserted for one clock, the module outputs exactly
//   one 2-bit pair in time order:
//     1st: i_data[15:14]
//     2nd: i_data[13:12]
//     ...
//     8th: i_data[1:0]
//
// Notes:
//   - Reset is active-low asynchronous.
//   - i_init is used to re-initialize extraction at the beginning of each frame.
//   - Internal pointer starts at bit 15 and moves left by 2 on each valid enable.
//   - Indexed part-select i_data[bit_ptr -: 2] means:
//       bit_ptr=15 -> i_data[15:14]
//       bit_ptr=13 -> i_data[13:12]
//       ...
//       bit_ptr=1  -> i_data[1:0]
//////////////////////////////////////////////////////////////////////////////////

module extract_bit (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        i_init,
    input  wire        en_ext,
    input  wire [15:0] i_data,
    output reg  [1:0]  o_rx
);

    reg [3:0] bit_ptr;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_ptr <= 4'd15;
            o_rx    <= 2'b00;
        end
        else if (i_init) begin
            bit_ptr <= 4'd15;
            o_rx    <= 2'b00;
        end
        else if (en_ext) begin
            // Output current 2-bit pair according to pointer position.
            o_rx <= i_data[bit_ptr -: 2];

            // Move pointer by 2 bits each valid extraction.
            // Stop at bit_ptr = 1 to avoid wrapping to invalid positions.
            if (bit_ptr > 4'd1)
                bit_ptr <= bit_ptr - 4'd2;
            else
                bit_ptr <= 4'd1;
        end
    end

endmodule