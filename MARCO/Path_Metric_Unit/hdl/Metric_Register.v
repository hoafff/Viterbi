module Metric_register (
    input clk,
    input rst_n,
    input clr_me,           

    input  [3:0] new_00, // new path metric của state 00
    input  [3:0] new_01,
    input  [3:0] new_10,
    input  [3:0] new_11,

    output reg [3:0] prev_00, // previous path metric của state 00
    output reg [3:0] prev_01,
    output reg [3:0] prev_10,
    output reg [3:0] prev_11
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n ) begin
            prev_00 <= 0; // giá trị lỗi tối đa cho 8 symbol là 2 => số lỗi tối đa là 16 nên khởi tạo bằng 16 coi như vô cùng
            prev_01 <= 4'h0;
            prev_10 <= 4'h0;
            prev_11 <= 4'h0;
        end 
        else if(clr_me ) begin
            prev_00 <= 0; // giá trị lỗi tối đa cho 8 symbol là 2 => số lỗi tối đa là 16 nên khởi tạo bằng 16 coi như vô cùng
            prev_01 <= 4'h0;
            prev_10 <= 4'h0;
            prev_11 <= 4'h0;
        end 
        else  begin
            prev_00 <= new_00; // cập nhật giá trị mới
            prev_01 <= new_01;
            prev_10 <= new_10;
            prev_11 <= new_11;
        end
    end

endmodule
