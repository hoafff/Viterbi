`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// File: tb_viterbi_decoder_basic.v
// Description:
//   Basic smoke-test testbench for top module viterbi_decoder.
//
//   - Clock period: 10 ns
//   - Reset: active-low
//   - Reference encoder uses generator polynomials:
//       g1 = 111  => out1 = u ^ s0 ^ s1
//       g2 = 101  => out2 = u ^ s1
//
// Important bit-order convention used in this TB:
//   - Source bits are encoded in time order from src[0] -> src[7]
//   - Encoded pairs are packed into i_data from MSB side:
//       pair1 -> i_data[15:14]
//       pair2 -> i_data[13:12]
//       ...
//       pair8 -> i_data[1:0]
//
// This convention is chosen to match the current RTL traceback behavior,
// where the first recovered traceback bit is written to o_data[7].
//////////////////////////////////////////////////////////////////////////////////

module tb_viterbi_decoder_basic;

    reg         clk;
    reg         rst_n;
    reg         en;
    reg  [15:0] i_data;
    wire [7:0]  o_data;
    wire        o_done;

    integer pass_count;
    integer fail_count;

    //--------------------------------------------------------------------------
    // DUT
    //--------------------------------------------------------------------------
    viterbi_decoder dut (
        .clk   (clk),
        .rst_n (rst_n),
        .en    (en),
        .i_data(i_data),
        .o_data(o_data),
        .o_done(o_done)
    );

    //--------------------------------------------------------------------------
    // 10 ns clock
    //--------------------------------------------------------------------------
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    //--------------------------------------------------------------------------
    // Reference convolutional encoder
    //
    // src[0] is treated as the first input bit in time.
    // The first encoded pair is packed into bits [15:14].
    //--------------------------------------------------------------------------
    function [15:0] ref_encode;
        input [7:0] src;
        integer k;
        reg s0, s1;
        reg u;
        reg out1, out2;
        begin
            ref_encode = 16'h0000;
            s0 = 1'b0;
            s1 = 1'b0;

            for (k = 0; k < 8; k = k + 1) begin
                u    = src[k];
                out1 = u ^ s0 ^ s1;
                out2 = u ^ s1;

                // Pack pair in receive-time order:
                // k=0 -> [15:14], k=1 -> [13:12], ..., k=7 -> [1:0]
                ref_encode[15 - 2*k -: 2] = {out1, out2};

                // Shift state
                s1 = s0;
                s0 = u;
            end
        end
    endfunction

    //--------------------------------------------------------------------------
    // Reset task
    //--------------------------------------------------------------------------
    task automatic apply_reset;
        begin
            rst_n  = 1'b0;
            en     = 1'b0;
            i_data = 16'h0000;

            repeat (3) @(posedge clk);
            #1;
            rst_n = 1'b1;

            repeat (2) @(posedge clk);
            #1;
        end
    endtask

    //--------------------------------------------------------------------------
    // Send one encoded frame with en pulse = 1 cycle
    //--------------------------------------------------------------------------
    task automatic send_frame;
        input [15:0] encoded_frame;
        begin
            @(negedge clk);
            i_data = encoded_frame;
            en     = 1'b1;

            @(negedge clk);
            en     = 1'b0;
        end
    endtask

    //--------------------------------------------------------------------------
    // Wait for done and check decoded data
    //--------------------------------------------------------------------------
    task automatic wait_done_and_check;
        input [7:0]  expected_data;
        input [15:0] encoded_frame;
        integer timeout;
        begin
            timeout = 0;

            while ((o_done !== 1'b1) && (timeout < 200)) begin
                @(posedge clk);
                #1;
                timeout = timeout + 1;
            end

            if (timeout >= 200) begin
                $display("[FAIL] Timeout waiting o_done. encoded=%h expected=%h", encoded_frame, expected_data);
                fail_count = fail_count + 1;
            end
            else begin
                if (o_data !== expected_data) begin
                    $display("[FAIL] Data mismatch. encoded=%h expected=%h got=%h",
                             encoded_frame, expected_data, o_data);
                    fail_count = fail_count + 1;
                end
                else begin
                    $display("[PASS] encoded=%h decoded=%h", encoded_frame, o_data);
                    pass_count = pass_count + 1;
                end

                // Check o_done pulse width = 1 cycle
                @(posedge clk);
                #1;
                if (o_done !== 1'b0) begin
                    $display("[FAIL] o_done is not a 1-cycle pulse. encoded=%h", encoded_frame);
                    fail_count = fail_count + 1;
                end
            end
        end
    endtask

    //--------------------------------------------------------------------------
    // Run one testcase from 8-bit source data
    //--------------------------------------------------------------------------
    task automatic run_case;
        input [7:0] src_data;
        reg   [15:0] encoded_frame;
        begin
            encoded_frame = ref_encode(src_data);

            $display("------------------------------------------------------------");
            $display("[INFO] src_data=%h  encoded_frame=%h", src_data, encoded_frame);

            send_frame(encoded_frame);
            wait_done_and_check(src_data, encoded_frame);

            // Give DUT a couple of quiet cycles before next frame
            repeat (2) @(posedge clk);
            #1;
        end
    endtask

    //--------------------------------------------------------------------------
    // Main test sequence
    //--------------------------------------------------------------------------
    initial begin
        pass_count = 0;
        fail_count = 0;

        apply_reset();

        // Smoke tests
        run_case(8'h00);
        run_case(8'hFF);
        run_case(8'hAA);
        run_case(8'h55);

        $display("============================================================");
        $display("[SUMMARY] PASS=%0d  FAIL=%0d", pass_count, fail_count);
        $display("============================================================");

        if (fail_count == 0)
            $display("[TB RESULT] ALL SMOKE TESTS PASSED");
        else
            $display("[TB RESULT] SOME TESTS FAILED");

        #20;
        $finish;
    end

endmodule