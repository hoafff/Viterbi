module Path_Metric_Unit (
    input clk,
    input rst_n,
    input clr_me,

    // Input: Branch Metrics (Tính toán từ khối BMU bên ngoài đưa vào)
    input [1:0] bm_00_00,
    input [1:0] bm_00_10,
    input [1:0] bm_01_00,
    input [1:0] bm_01_10,
    input [1:0] bm_10_01,
    input [1:0] bm_10_11,
    input [1:0] bm_11_01,
    input [1:0] bm_11_11,

    // Output: Các bit quyết định đường (Survivor Path) để đưa vào khối Traceback
    output servivor_select_00,
    output servivor_select_01,
    output servivor_select_10,
    output servivor_select_11,

    // Output: Path Metric hiện tại (Optional - dùng để debug hoặc normalization)
    output [3:0] current_metric_00,
    output [3:0] current_metric_01,
    output [3:0] current_metric_10,
    output [3:0] current_metric_11
);

    // Dây nối nội bộ (Internal Wires)
    // Nối từ ngõ ra của ACS (new) vào ngõ vào của Register
    wire [3:0] w_new_00;
    wire [3:0] w_new_01;
    wire [3:0] w_new_10;
    wire [3:0] w_new_11;

    // Nối từ ngõ ra của Register (prev) vào ngõ vào của ACS
    // Đồng thời dây này cũng nối ra output current_metric để quan sát
    wire [3:0] w_prev_00;
    wire [3:0] w_prev_01;
    wire [3:0] w_prev_10;
    wire [3:0] w_prev_11;

    // Gán wire nội bộ ra output port để debug/quan sát
    assign current_metric_00 = w_prev_00;
    assign current_metric_01 = w_prev_01;
    assign current_metric_10 = w_prev_10;
    assign current_metric_11 = w_prev_11;

    //----------------------------------------------------------------
    // 1. Instance: Add Compare Select (ACS)
    // Tính toán path metric tiếp theo và chọn đường đi tốt nhất
    //----------------------------------------------------------------
    Add_compare_select ACS_Unit (
        // Branch Metrics Inputs
        .bm_00_00(bm_00_00), .bm_00_10(bm_00_10),
        .bm_01_00(bm_01_00), .bm_01_10(bm_01_10),
        .bm_10_01(bm_10_01), .bm_10_11(bm_10_11),
        .bm_11_01(bm_11_01), .bm_11_11(bm_11_11),

        // Current Path Metrics (Feedback từ Register)
        .prev_00(w_prev_00),
        .prev_01(w_prev_01),
        .prev_10(w_prev_10),
        .prev_11(w_prev_11),

        // Calculated New Path Metrics (Nối sang Register)
        .new_00(w_new_00),
        .new_01(w_new_01),
        .new_10(w_new_10),
        .new_11(w_new_11),

        // Survivor Bits (Output ra ngoài Top)
        .servivor_select_00(servivor_select_00),
        .servivor_select_01(servivor_select_01),
        .servivor_select_10(servivor_select_10),
        .servivor_select_11(servivor_select_11)
    );

    //----------------------------------------------------------------
    // 2. Instance: Metric Register
    // Lưu trữ path metric để dùng cho chu kỳ sau
    //----------------------------------------------------------------
    Metric_register PM_Reg_Unit (
        .clk(clk),
        .rst_n(rst_n),
        .clr_me(clr_me),

        // Input lấy từ output của ACS
        .new_00(w_new_00),
        .new_01(w_new_01),
        .new_10(w_new_10),
        .new_11(w_new_11),

        // Output quay vòng lại ACS (Feedback)
        .prev_00(w_prev_00),
        .prev_01(w_prev_01),
        .prev_10(w_prev_10),
        .prev_11(w_prev_11)
    );

endmodule