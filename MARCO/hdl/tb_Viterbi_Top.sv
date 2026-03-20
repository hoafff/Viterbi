`timescale 1ns/1ps

module tb_Viterbi_Top;

    //============================================================
    // Khai báo tín hiệu kết nối với DUT (Device Under Test)
    // Thay 'logic' bằng 'reg' và 'wire'
    //============================================================
    reg clk;
    reg rst_n;
    reg start;
    reg [1:0] received;         // 2 bit symbol nhận
    wire [7:0] decoded_out;     // Kết quả giải mã
    wire frame_done;            // DUT báo hoàn thành

    //============================================================
    // Khởi tạo DUT
    //============================================================
    Viterbi_Top dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .received(received),
        .decoded_out(decoded_out),
        .frame_done(frame_done)
    );

    //============================================================
    // Tạo xung clock: chu kỳ 10ns
    //============================================================
    always #5 clk = ~clk;

    //============================================================
    // Xuất file VCD
    //============================================================
    initial begin
        $dumpfile("viterbi_top_file.vcd");
        $dumpvars(0);
    end

    //============================================================
    // Biến phục vụ đọc file và kiểm tra kết quả
    // Trong Verilog không có string, ta dùng mảng byte
    //============================================================
    integer fout, fin;
    integer frame_id;
    integer total_ok;
    integer err;
    integer j;
    integer c; // biến tạm để đọc ký tự

    reg [7:0] expected, got;
    
    // Bộ đệm để lưu chuỗi đọc từ file (giả sử tối đa 256 ký tự/dòng)
    reg [7:0] in_line_mem [0:255]; 
    reg [7:0] en_line_mem [0:255];
    integer in_len;
    integer en_len;
    integer eof_flag;

    //============================================================
    // Task: gửi 1 symbol (2 bit) vào DUT trong 1 chu kỳ
    //============================================================
    task send_symbol;
        input [1:0] sym;
        begin
            received = sym;
            #10;
        end
    endtask

    //============================================================
    // Task: Đọc 1 dòng từ file vào bộ nhớ đệm (thay thế fgets/string)
    //============================================================
    task read_line_to_mem;
        input integer file_desc;
        output integer length;
        output integer is_eof;
        integer i;
        integer char_code;
        begin
            i = 0;
            length = 0;
            is_eof = 0;
            
            // Đọc ký tự đầu tiên
            char_code = $fgetc(file_desc);
            
            // Kiểm tra EOF ngay đầu
            if (char_code == -1) begin
                is_eof = 1;
            end else begin
                // Đọc cho đến khi gặp xuống dòng hoặc EOF
                while (char_code != -1 && char_code != 10 && char_code != 13) begin // 10=\n, 13=\r
                    // Ghi vào bộ nhớ đệm
                    if (file_desc == fout) in_line_mem[i] = char_code;
                    else                   en_line_mem[i] = char_code;
                    
                    i = i + 1;
                    char_code = $fgetc(file_desc);
                end
                length = i;
                
                // Nếu gặp \r (Windows), có thể tiếp theo là \n, cần đọc bỏ qua
                if (char_code == 13) begin
                    char_code = $fgetc(file_desc); // Đọc bỏ \n
                end
            end
        end
    endtask

    //============================================================
    // Task: Chuyển buffer in_line_mem thành 8-bit vector (thay str_to_bits)
    //============================================================
    task parse_expected_bits;
        input integer len;
        output [7:0] val;
        integer i;
        begin
            val = 8'b0;
            // Map mem[0] -> val[7], mem[7] -> val[0]
            for (i = 0; i < 8 && i < len; i = i + 1) begin
                if (in_line_mem[i] == "1") 
                    val[7-i] = 1'b1;
                else
                    val[7-i] = 1'b0;
            end
        end
    endtask

    //============================================================
    // Luồng chính của testbench
    //============================================================
    //============================================================
    // Luồng chính của testbench (Đã sửa lỗi break)
    //============================================================
    integer run_loop; // Biến điều khiển vòng lặp thay cho break

    initial begin : MAIN
        frame_id = 0;
        total_ok = 0;
        err = 0;
        run_loop = 1; // Bật cờ chạy vòng lặp

        //--------------------------------------------------------
        // Reset ban đầu
        //--------------------------------------------------------
        clk = 0;
        rst_n = 0;
        start = 0;
        received = 2'b00;

        #20 rst_n = 1;     // bỏ reset
        #15;

        //--------------------------------------------------------
        // Mở file
        //--------------------------------------------------------
        fout = $fopen("./output.txt", "r");
        fin = $fopen("./input.txt", "r");

        if (fout == 0 || fin == 0) begin
            $display("Error: Cannot open input/output files.");
            $finish;
        end

        //--------------------------------------------------------
        // Vòng lặp chạy từng frame (Sử dụng run_loop thay vì while(1))
        //--------------------------------------------------------
        while (run_loop) begin
            // 1. Đọc dòng từ file output (expected)
            read_line_to_mem(fout, in_len, eof_flag);
            
            if (eof_flag) begin
                run_loop = 0; // Thay thế cho break
            end 
            else begin
                // 2. Đọc dòng từ file input (encoded)
                read_line_to_mem(fin, en_len, eof_flag);
                
                if (eof_flag) begin
                    run_loop = 0; // Thay thế cho break
                end
                else begin
                    // Nếu cả 2 file đều đọc thành công thì mới chạy test
                    
                    frame_id = frame_id + 1;

                    //----------------------------------------------------
                    // Chuyển chuỗi mong đợi sang dạng vector 8-bit
                    //----------------------------------------------------
                    parse_expected_bits(in_len, expected);

                    #5;

                    //----------------------------------------------------
                    // Bắt đầu giải mã frame mới
                    //----------------------------------------------------
                    start = 1;

                    // Gửi 2 bit đầu tiên từ mảng en_line_mem
                    received = {(en_line_mem[0] == "1"), (en_line_mem[1] == "1")};
                    #10;
                    start = 0;

                    //----------------------------------------------------
                    // Gửi toàn bộ phần còn lại của chuỗi mã hoá
                    //----------------------------------------------------
                    for (j = 2; j < en_len; j = j + 2) begin
                        send_symbol({(en_line_mem[j] == "1"), (en_line_mem[j+1] == "1")});
                    end

                    //----------------------------------------------------
                    // Chờ DUT xử lý xong
                    //----------------------------------------------------
                    wait(frame_done === 1);
                    #10;

                    //----------------------------------------------------
                    // So sánh kết quả với expected
                    //----------------------------------------------------
                    got = decoded_out;
                    if (got !== expected) begin
                        err = err + 1;
                        $display("Frame %0d FAIL", frame_id);
                        $display("Expected: %08b", expected);
                        $display("Got     : %08b", got);
                    end else begin
                        total_ok = total_ok + 1;
                    end

                    #30; 
                end // end else (fin read ok)
            end // end else (fout read ok)
        end // end while

        //--------------------------------------------------------
        // In thống kê cuối cùng
        //--------------------------------------------------------
        $display("\nfinish: %0d/%0d frame correct.", total_ok, frame_id);

        //--------------------------------------------------------
        // PASS message
        //--------------------------------------------------------
        if (err == 0) begin
        `ifdef SYN
            $display("        ****************************               ");
            $display("        **     Viterbi - SYN      **               ");
        `else
            $display("        ****************************               ");
            $display("        **     Viterbi - RTL      **               ");
        `endif
            $display("        ****************************               ");
            $display("        **                        **       |\\__||  ");
            $display("        **  Congratulations !!    **      / O.O  | ");
            $display("        **                        **    /_____   | ");
            $display("        **  SIMULATION PASS !!    **   /^ ^ ^ \\  |");
            $display("        **                        **  |^ ^ ^ ^ |w| ");
            $display("        ****************************   \\m___m__|_|");
            $display("\n");
        end

        //--------------------------------------------------------
        // FAIL message
        //--------------------------------------------------------
        else begin
        `ifdef SYN
            $display("        ****************************               ");
            $display("        **     Viterbi - SYN      **               ");
        `else
            $display("        ****************************               ");
            $display("        **     Viterbi - RTL      **               ");
        `endif
            $display("        ****************************               ");
            $display("        **                        **       |\\__||  ");
            $display("        **  OOPS!!                **      / X,X  | ");
            $display("        **                        **    /_____   | ");
            $display("        **  SIMULATION Failed!!   **   /^ ^ ^ \\  |");
            $display("        **                        **  |^ ^ ^ ^ |w| ");
            $display("        ****************************   \\m___m__|_|");
            $display("         Totally has %0d errors                     ", err);
            $display("\n");
        end

        //--------------------------------------------------------
        // End simulation
        //--------------------------------------------------------
        $finish;
    end
endmodule 
