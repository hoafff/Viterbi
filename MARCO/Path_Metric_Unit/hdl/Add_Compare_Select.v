module Add_compare_select (
    input  [1:0] bm_00_00,  // Branch Metric từ trạng thái 00 đến 00
    input  [1:0] bm_00_10,
    input  [1:0] bm_01_00,
    input  [1:0] bm_01_10,
    input  [1:0] bm_10_01,
    input  [1:0] bm_10_11,
    input  [1:0] bm_11_01,
    input  [1:0] bm_11_11,
    
    input  [3:0] prev_00,   // previous path metric của state 00
    input  [3:0] prev_01,
    input  [3:0] prev_10,
    input  [3:0] prev_11,

    output [3:0] new_00,    // new path metric của state 00
    output [3:0] new_01,
    output [3:0] new_10,
    output [3:0] new_11,

    output servivor_select_00,  // chọn bit đúng cho đường đến state 00
    output servivor_select_01,
    output servivor_select_10,
    output servivor_select_11
);
    wire [3:0] sum_00_from_00; 
    wire [3:0] sum_00_from_01;

    wire [3:0] sum_01_from_10;
    wire [3:0] sum_01_from_11;

    wire [3:0] sum_10_from_00; 
    wire [3:0] sum_10_from_01;

    wire [3:0] sum_11_from_10; 
    wire [3:0] sum_11_from_11; 
    // Tính tổng path metric từ các trạng thái trước đến trạng thái hiện tại dẫn đến state mục tiêu
    // Ví dụ: sum_00_from_00 là tổng từ state 00 trước đến state 00 hiện tại
   
    assign sum_00_from_00 = prev_00 + bm_00_00; 
    assign sum_00_from_01 = prev_01 + bm_01_00;

    assign sum_01_from_10 = prev_10 + bm_10_01;
    assign sum_01_from_11 = prev_11 + bm_11_01;

    assign sum_10_from_00 = prev_00 + bm_00_10;
    assign sum_10_from_01 = prev_01 + bm_01_10;

    assign sum_11_from_10 = prev_10 + bm_10_11;
    assign sum_11_from_11 = prev_11 + bm_11_11;


    // So sánh các đường dẫn đến cùng 1 state và chọn đường có path metric nhỏ hơn 
    // Đồng thời xác định bit chọn tương ứng cho survivor path
    assign {servivor_select_00, new_00} = (sum_00_from_00 > sum_00_from_01) ? {1'b1, sum_00_from_01} : {1'b0, sum_00_from_00};

    assign {servivor_select_01, new_01} = (sum_01_from_10 > sum_01_from_11) ? {1'b1, sum_01_from_11} : {1'b0, sum_01_from_10};

    assign {servivor_select_10, new_10} = (sum_10_from_00 > sum_10_from_01) ? {1'b1, sum_10_from_01} : {1'b0, sum_10_from_00};

    assign {servivor_select_11, new_11} = (sum_11_from_10 > sum_11_from_11) ? {1'b1, sum_11_from_11} : {1'b0, sum_11_from_10};

endmodule
