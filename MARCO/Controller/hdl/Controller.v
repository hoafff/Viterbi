module Controller #(
    parameter FRAME_LEN = 8      // Độ dài frame cần giải mã
)(
    input  wire       clk,
    input  wire       rst_n,

    input  wire       start,      // Tín hiệu bắt đầu 1 frame mới
    output reg        clr_me,     // Clear Metric_Exchange khi bắt đầu frame mới
    output reg        frame_done  // Báo kết thúc 1 frame
);
    // FSM state encoding
    localparam S_IDLE   = 2'b00;  // Chờ start
    localparam S_DECODE = 2'b01;  // Đang giải mã (tăng counter)
    localparam S_OUTPUT = 2'b10;  // Xuất output và báo frame_done

    reg [1:0] state, next_state;

    // sym_cnt đếm số symbol đã decode
    // Cần $clog2(FRAME_LEN) bit để đếm hết FRAME_LEN-1
    reg [$clog2(FRAME_LEN):0] sym_cnt;  


    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= S_IDLE;
            sym_cnt  <= 0;
        end else begin
            state <= next_state;

            // ----------- Đếm symbol khi đang decode -------------
            if (state == S_DECODE) begin
                if (sym_cnt == FRAME_LEN-1)
                    sym_cnt <= 0;              // Cuối frame → reset counter
                else
                    sym_cnt <= sym_cnt + 1'b1; // Tăng counter
            end else begin
                sym_cnt <= 0;                  // Không decode → reset counter
            end
        end
    end


    always @( state, start, sym_cnt ) begin
        case (state)
            // IDLE: Chờ tín hiệu start từ bên 
            S_IDLE: begin
                if (start) begin
                    next_state = S_DECODE; // Bắt đầu decode
                    clr_me    = 1'b0;      // Không reset ME
                end
                else begin
                    next_state = S_IDLE;    // Vẫn chờ start
                    clr_me    = 1'b1;      // Giữ reset ME khi idle
                end
                frame_done = 1'b0;         // Chưa xong frame
            end
            // DECODE: Xử lý từng symbol cho đến FRAME_LEN
            S_DECODE: begin
                // Đi hết 1 frame → chuyển sang xuất output
                if (sym_cnt == FRAME_LEN-1) begin
                    next_state = S_OUTPUT;
                end
                else begin
                    next_state = S_DECODE; // Tiếp tục decode
                end
                clr_me     = 1'b0;         // ME đang chạy
                frame_done = 1'b0;         // Chưa kết thúc
            end
            // OUTPUT: Xuất dữ liệu ra và báo kết thúc frame
            S_OUTPUT: begin
                next_state = S_IDLE;       // Quay lại idle
                clr_me    = 1'b0;
                frame_done = 1'b1;         // Frame đã hoàn thành
            end
            default: begin
                next_state = S_IDLE;
                clr_me     = 1'b1;
                frame_done = 1'b0;
            end
        endcase
    end
endmodule

