`timescale 1ns/1ps

module input_buffer_rx_selector (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        ld_buf,
    input  wire        en_fw,
    input  wire [15:0] i_data,
    output reg  [1:0]  o_rx
);

    reg [15:0] frame_reg;
    reg [2:0]  sym_idx;

    // Latch whole frame once at start of transaction.
    // Then advance one symbol index per forward cycle.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            frame_reg <= 16'h0000;
            sym_idx   <= 3'd0;
        end
        else if (ld_buf) begin
            frame_reg <= i_data;
            sym_idx   <= 3'd0;
        end
        else if (en_fw) begin
            if (sym_idx < 3'd7)
                sym_idx <= sym_idx + 3'd1;
            else
                sym_idx <= 3'd7;
        end
    end

    // Combinational symbol select.
    // This is important so bm_acs can use o_rx in the same forward cycle.
    always @(*) begin
        case (sym_idx)
            3'd0: o_rx = frame_reg[15:14];
            3'd1: o_rx = frame_reg[13:12];
            3'd2: o_rx = frame_reg[11:10];
            3'd3: o_rx = frame_reg[9:8];
            3'd4: o_rx = frame_reg[7:6];
            3'd5: o_rx = frame_reg[5:4];
            3'd6: o_rx = frame_reg[3:2];
            3'd7: o_rx = frame_reg[1:0];
            default: o_rx = 2'b00;
        endcase
    end

endmodule