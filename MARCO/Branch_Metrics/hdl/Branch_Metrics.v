module Branch_Metrics (
    input  [1:0] received, // cặp bit nhận được từ kênh
    
    output [1:0] bm_00_00, // Branch Metric từ trạng thái 00 đến 00
    output [1:0] bm_00_10,
    output [1:0] bm_01_00,
    output [1:0] bm_01_10,
    output [1:0] bm_10_01,
    output [1:0] bm_10_11,
    output [1:0] bm_11_01,
    output [1:0] bm_11_11
);

    // Tính toán Branch Metrics cho từng nhánh dựa trên cặp bit nhận được
    // bm_xy_zw: Branch Metric từ trạng thái xy đến trạng thái zw

    assign bm_00_00 = (received[1] ^ 1'b0) + (received[0] ^ 1'b0);
    assign bm_00_10 = (received[1] ^ 1'b1) + (received[0] ^ 1'b1);

    assign bm_01_00 = (received[1] ^ 1'b1) + (received[0] ^ 1'b1);
    assign bm_01_10 = (received[1] ^ 1'b0) + (received[0] ^ 1'b0);

    assign bm_10_01 = (received[1] ^ 1'b1) + (received[0] ^ 1'b0);
    assign bm_10_11 = (received[1] ^ 1'b0) + (received[0] ^ 1'b1);

    assign bm_11_01 = (received[1] ^ 1'b0) + (received[0] ^ 1'b1);
    assign bm_11_11 = (received[1] ^ 1'b1) + (received[0] ^ 1'b0);

endmodule
