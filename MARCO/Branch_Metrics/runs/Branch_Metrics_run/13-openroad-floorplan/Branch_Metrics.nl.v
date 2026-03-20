module Branch_Metrics (bm_00_00,
    bm_00_10,
    bm_01_00,
    bm_01_10,
    bm_10_01,
    bm_10_11,
    bm_11_01,
    bm_11_11,
    received);
 output [1:0] bm_00_00;
 output [1:0] bm_00_10;
 output [1:0] bm_01_00;
 output [1:0] bm_01_10;
 output [1:0] bm_10_01;
 output [1:0] bm_10_11;
 output [1:0] bm_11_01;
 output [1:0] bm_11_11;
 input [1:0] received;


 sky130_fd_sc_hd__and2_2 _00_ (.A(received[0]),
    .B(received[1]),
    .X(bm_00_00[1]));
 sky130_fd_sc_hd__nor2_2 _01_ (.A(received[0]),
    .B(received[1]),
    .Y(bm_00_10[1]));
 sky130_fd_sc_hd__xor2_2 _02_ (.A(received[0]),
    .B(received[1]),
    .X(bm_00_00[0]));
 sky130_fd_sc_hd__xnor2_2 _03_ (.A(received[0]),
    .B(received[1]),
    .Y(bm_10_01[0]));
 sky130_fd_sc_hd__and2b_2 _04_ (.A_N(received[0]),
    .B(received[1]),
    .X(bm_10_11[1]));
 sky130_fd_sc_hd__and2b_2 _05_ (.A_N(received[1]),
    .B(received[0]),
    .X(bm_10_01[1]));
 sky130_fd_sc_hd__buf_2 _06_ (.A(bm_00_00[0]),
    .X(bm_00_10[0]));
 sky130_fd_sc_hd__buf_2 _07_ (.A(bm_00_00[0]),
    .X(bm_01_00[0]));
 sky130_fd_sc_hd__buf_2 _08_ (.A(bm_00_10[1]),
    .X(bm_01_00[1]));
 sky130_fd_sc_hd__buf_2 _09_ (.A(bm_00_00[0]),
    .X(bm_01_10[0]));
 sky130_fd_sc_hd__buf_2 _10_ (.A(bm_00_00[1]),
    .X(bm_01_10[1]));
 sky130_fd_sc_hd__buf_2 _11_ (.A(bm_10_01[0]),
    .X(bm_10_11[0]));
 sky130_fd_sc_hd__buf_2 _12_ (.A(bm_10_01[0]),
    .X(bm_11_01[0]));
 sky130_fd_sc_hd__buf_2 _13_ (.A(bm_10_11[1]),
    .X(bm_11_01[1]));
 sky130_fd_sc_hd__buf_2 _14_ (.A(bm_10_01[0]),
    .X(bm_11_11[0]));
 sky130_fd_sc_hd__buf_2 _15_ (.A(bm_10_01[1]),
    .X(bm_11_11[1]));
endmodule
