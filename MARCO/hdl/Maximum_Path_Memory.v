module Maximum_Path_Memory (
    input  [3:0] prev_00, // previous path metric của state 00
    input  [3:0] prev_01,
    input  [3:0] prev_10,
    input  [3:0] prev_11,
    output [1:0] winner_state
);

    // Tầng 1: So sánh song song cặp (00, 01) và (10, 11)
    wire [3:0] min_01;
    wire [1:0] win_01;
    
    wire [3:0] min_23;
    wire [1:0] win_23;

    // Cặp 00 và 01: Dùng dấu <= để ưu tiên state 00 khi metric bằng nhau
    assign win_01 = (prev_00 <= prev_01) ? 2'b00 : 2'b01;
    assign min_01 = (prev_00 <= prev_01) ? prev_00 : prev_01;

    // Cặp 10 và 11: Ưu tiên state 10
    assign win_23 = (prev_10 <= prev_11) ? 2'b10 : 2'b11;
    assign min_23 = (prev_10 <= prev_11) ? prev_10 : prev_11;

    // Tầng 2: So sánh kết quả của 2 cặp trên
    // Ưu tiên nhóm (00, 01) hơn nhóm (10, 11)
    assign winner_state = (min_01 <= min_23) ? win_01 : win_23;

endmodule