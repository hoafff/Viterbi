`timescale 1ns/1ps

module control (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       en,

    output reg        ld_buf,
    output reg        en_fw,
    output reg        en_mem_wr,
    output reg        en_mem_rd,
    output reg        en_trbk,
    output reg        o_busy,

    output reg  [2:0] o_sym_idx,
    output reg  [2:0] o_tb_idx
);

    localparam [2:0] ST_IDLE      = 3'd0;
    localparam [2:0] ST_LOAD      = 3'd1;
    localparam [2:0] ST_FORWARD   = 3'd2;
    localparam [2:0] ST_TRACEBACK = 3'd3;
    localparam [2:0] ST_DONE      = 3'd4;

    reg [2:0] state, next_state;
    reg [2:0] sym_idx, next_sym_idx;
    reg [2:0] tb_idx,  next_tb_idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state   <= ST_IDLE;
            sym_idx <= 3'd0;
            tb_idx  <= 3'd7;
        end else begin
            state   <= next_state;
            sym_idx <= next_sym_idx;
            tb_idx  <= next_tb_idx;
        end
    end

    always @(*) begin
        next_state   = state;
        next_sym_idx = sym_idx;
        next_tb_idx  = tb_idx;

        ld_buf    = 1'b0;
        en_fw     = 1'b0;
        en_mem_wr = 1'b0;
        en_mem_rd = 1'b0;
        en_trbk   = 1'b0;
        o_busy    = 1'b0;

        o_sym_idx = sym_idx;
        o_tb_idx  = tb_idx;

        case (state)
            ST_IDLE: begin
                o_busy = 1'b0;

                if (en) begin
                    ld_buf       = 1'b1;
                    o_busy       = 1'b1;
                    next_state   = ST_FORWARD;
                    next_sym_idx = 3'd0;
                    next_tb_idx  = 3'd7;
                end
            end

            ST_LOAD: begin
                ld_buf = 1'b1;
                o_busy = 1'b1;

                next_state   = ST_FORWARD;
                next_sym_idx = 3'd0;
            end

            ST_FORWARD: begin
                en_fw     = 1'b1;
                en_mem_wr = 1'b1;
                o_busy    = 1'b1;

                if (sym_idx == 3'd7) begin
                    next_state  = ST_TRACEBACK;
                    next_tb_idx = 3'd7;
                end else begin
                    next_state   = ST_FORWARD;
                    next_sym_idx = sym_idx + 3'd1;
                end
            end

            ST_TRACEBACK: begin
                en_mem_rd = 1'b1;
                en_trbk   = 1'b1;
                o_busy    = 1'b1;

                if (tb_idx == 3'd0) begin
                    next_state = ST_DONE;
                end else begin
                    next_state = ST_TRACEBACK;
                    next_tb_idx = tb_idx - 3'd1;
                end
            end

            ST_DONE: begin
                o_busy = 1'b1;
                next_state   = ST_IDLE;
                next_sym_idx = 3'd0;
                next_tb_idx  = 3'd7;
            end

            default: begin
                next_state   = ST_IDLE;
                next_sym_idx = 3'd0;
                next_tb_idx  = 3'd7;
            end
        endcase
    end

endmodule