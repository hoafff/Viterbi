module Register_exchange (
    input clk,
    input rst_n,

    input survivor_select_00, // chọn bit đúng cho đường đến state 00
    input survivor_select_01,
    input survivor_select_10,
    input survivor_select_11,

    output reg [7:0] path_00, // đường đi giải mã đến state 00
    output reg [7:0] path_01,
    output reg [7:0] path_10,
    output reg [7:0] path_11
);

    reg [7:0] next_00, next_01, next_10, next_11;

    always @(survivor_select_00, survivor_select_01, survivor_select_10, survivor_select_11, path_00, path_01, path_10, path_11) begin
        next_00 = (survivor_select_00) ? {path_01[6:0],1'b0} : {path_00[6:0],1'b0}; // cập nhật đường đi giải mã mới dựa trên bit chọn survivor

        next_01 = (survivor_select_01) ? {path_11[6:0],1'b0} : {path_10[6:0],1'b0}; 

        next_10 = (survivor_select_10) ? {path_01[6:0],1'b1} : {path_00[6:0],1'b1};

        next_11 = (survivor_select_11) ? {path_11[6:0],1'b1} : {path_10[6:0], 1'b1};
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n ) begin
            path_00 <= 8'd0; // khởi tạo giá trị ban đầu
            path_01 <= 8'd0;
            path_10 <= 8'd0;
            path_11 <= 8'd0;
        end
        else  begin
            path_00 <= next_00; // cập nhật giá trị mới
            path_01 <= next_01;
            path_10 <= next_10;
            path_11 <= next_11;
        end
    end

endmodule
