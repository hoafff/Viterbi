module Viterbi_Top (
    input        clk,
    input        rst_n,
    input        start,
    input  [1:0] received,      // Cặp bit nhận được từ kênh truyền
    output [7:0] decoded_out,   // Byte dữ liệu đã giải mã
    output       frame_done     // Báo hiệu đã hoàn thành 1 frame (8 bit)
);

    // ----------------------------
    // 1. Tín hiệu nội bộ (Interconnect Wires)
    // ----------------------------
    
    // Tín hiệu điều khiển từ Controller
    wire clr_me;

    // Branch Metrics: Từ BMU -> PMU
    wire [1:0] bm_00_00, bm_00_10, bm_01_00, bm_01_10;
    wire [1:0] bm_10_01, bm_10_11, bm_11_01, bm_11_11;

    // Survivor Selects: Từ PMU -> SMU
    // Quyết định bit '0' hay '1' được chọn tại mỗi trạng thái
    wire servivor_select_00;
    wire servivor_select_01;
    wire servivor_select_10;
    wire servivor_select_11;

    // Path Metrics (Current/Prev): Từ PMU -> MPM
    // Dùng để so sánh tìm ra trạng thái tốt nhất
    wire [3:0] pm_00, pm_01, pm_10, pm_11;

    // Winner State: Từ MPM -> SMU
    // Trạng thái có metric tốt nhất (nhỏ nhất)
    wire [1:0] winner_state;


    // ----------------------------
    // 2. Các khối chức năng (Module Instances)
    // ----------------------------

    // --- A. Controller ---
    // Điều khiển quá trình reset metric và báo hiệu kết thúc frame
    Controller CTRL (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .clr_me(clr_me),       // Xóa tích lũy metric khi bắt đầu frame mới
        .frame_done(frame_done)
    );

    // --- B. Branch Metrics Unit (BMU) ---
    // Tính toán khoảng cách (Hamming) giữa cặp bit nhận được và lý thuyết
    Branch_Metrics BMU (
        .received(received),
        .bm_00_00(bm_00_00), .bm_00_10(bm_00_10),
        .bm_01_00(bm_01_00), .bm_01_10(bm_01_10),
        .bm_10_01(bm_10_01), .bm_10_11(bm_10_11),
        .bm_11_01(bm_11_01), .bm_11_11(bm_11_11)
    );

    // --- C. Path Metric Unit (PMU) ---
    // (Bao gồm: Add-Compare-Select + Metric Register)
    // Tính toán metric tích lũy và xác định bit sống sót
    Path_Metric_Unit PMU_Top (
        .clk(clk),
        .rst_n(rst_n),
        .clr_me(clr_me),

        // Input: Branch Metrics
        .bm_00_00(bm_00_00), .bm_00_10(bm_00_10),
        .bm_01_00(bm_01_00), .bm_01_10(bm_01_10),
        .bm_10_01(bm_10_01), .bm_10_11(bm_10_11),
        .bm_11_01(bm_11_01), .bm_11_11(bm_11_11),

        // Output: Survivor Bits (đưa sang SMU)
        .servivor_select_00(servivor_select_00),
        .servivor_select_01(servivor_select_01),
        .servivor_select_10(servivor_select_10),
        .servivor_select_11(servivor_select_11),

        // Output: Current Metrics (đưa sang MPM để tìm winner)
        .current_metric_00(pm_00),
        .current_metric_01(pm_01),
        .current_metric_10(pm_10),
        .current_metric_11(pm_11)
    );

    // --- D. Maximum (Minimum) Path Memory (MPM) ---
    // So sánh 4 metric hiện tại để tìm ra trạng thái có lỗi ít nhất (Winner)
    // *Lưu ý: Tên module là Maximum nhưng logic bên trong cần tìm Min nếu dùng Hamming Distance
    Maximum_Path_Memory MPM (
        .prev_00(pm_00),
        .prev_01(pm_01),
        .prev_10(pm_10),
        .prev_11(pm_11),
        .winner_state(winner_state) // Output: 00, 01, 10 hoặc 11
    );

    // --- E. Survivor Memory Unit (SMU) ---
    // (Bao gồm: Register Exchange + Output Register Location)
    // Quản lý các chuỗi bit ứng viên và chọn chuỗi kết quả dựa trên winner_state
    Survivor_Memory_Unit SMU_Top (
        .clk(clk),
        .rst_n(rst_n),

        // Input: Survivor Bits từ PMU
        .survivor_select_00(servivor_select_00),
        .survivor_select_01(servivor_select_01),
        .survivor_select_10(servivor_select_10),
        .survivor_select_11(servivor_select_11),

        // Input: Trạng thái thắng từ MPM
        .winner_state(winner_state),

        // Output: Kết quả giải mã
        .decoded_out(decoded_out)
    );

endmodule