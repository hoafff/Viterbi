module Output_Register_Location (
    input clk,
    input rst_n,

    input [1:0] winner_state,       // trạng thái thắng từ MPM

    input [7:0] decode_path_00,
    input [7:0] decode_path_01,
    input [7:0] decode_path_10,
    input [7:0] decode_path_11,

    output reg [7:0] decoded_out   // xuất song song toàn bộ
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            decoded_out <= 8'd0;
        end
        else begin
            
                // chọn đúng đường thắng và xuất toàn bộ 8 bit
                case(winner_state)
                    2'b00: decoded_out <= decode_path_00;
                    2'b01: decoded_out <= decode_path_01;
                    2'b10: decoded_out <= decode_path_10;
                    2'b11: decoded_out <= decode_path_11;
                    default: decoded_out <= 8'd0;
                endcase
            
            

        end
 
    end

endmodule
