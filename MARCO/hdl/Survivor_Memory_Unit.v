module Survivor_Memory_Unit (
    input clk,
    input rst_n,

    // Input: Các tín hiệu chọn đường từ khối ACS (PMU)
    input survivor_select_00,
    input survivor_select_01,
    input survivor_select_10,
    input survivor_select_11,

    // Input: Trạng thái có Metric nhỏ nhất (tính từ khối Minimum Metric Logic bên ngoài)
    input [1:0] winner_state,

    // Output: 8-bit dữ liệu đã được giải mã
    output [7:0] decoded_out
);

    // Dây nối nội bộ (Internal Wires)
    // Kết nối từ Register Exchange sang Output Selector
    wire [7:0] w_path_00;
    wire [7:0] w_path_01;
    wire [7:0] w_path_10;
    wire [7:0] w_path_11;

    //----------------------------------------------------------------
    // 1. Instance: Register Exchange
    // Quản lý và dịch chuyển các chuỗi bit ứng cử viên
    //----------------------------------------------------------------
    Register_exchange Reg_Exchange_Inst (
        .clk(clk),
        .rst_n(rst_n),
        
        // Survivor bits từ ACS
        .survivor_select_00(survivor_select_00),
        .survivor_select_01(survivor_select_01),
        .survivor_select_10(survivor_select_10),
        .survivor_select_11(survivor_select_11),
        
        // Output các đường path (nối vào wire nội bộ)
        .path_00(w_path_00),
        .path_01(w_path_01),
        .path_10(w_path_10),
        .path_11(w_path_11)
    );

    //----------------------------------------------------------------
    // 2. Instance: Output Register Location
    // Chọn 1 trong 4 đường path dựa trên trạng thái thắng (winner_state)
    //----------------------------------------------------------------
    Output_Register_Location Output_Select_Inst (
        .clk(clk),
        .rst_n(rst_n),
        
        // Input chọn trạng thái tốt nhất
        .winner_state(winner_state),
        
        // Input các đường path từ Register Exchange
        .decode_path_00(w_path_00),
        .decode_path_01(w_path_01),
        .decode_path_10(w_path_10),
        .decode_path_11(w_path_11),
        
        // Kết quả cuối cùng
        .decoded_out(decoded_out)
    );

endmodule