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

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;

 sky130_fd_sc_hd__and2_1 _00_ (.A(net1),
    .B(net2),
    .X(net4));
 sky130_fd_sc_hd__nor2_1 _01_ (.A(net1),
    .B(net2),
    .Y(net6));
 sky130_fd_sc_hd__xor2_1 _02_ (.A(net1),
    .B(net2),
    .X(net3));
 sky130_fd_sc_hd__xnor2_1 _03_ (.A(net1),
    .B(net2),
    .Y(net11));
 sky130_fd_sc_hd__and2b_1 _04_ (.A_N(net1),
    .B(net2),
    .X(net14));
 sky130_fd_sc_hd__and2b_1 _05_ (.A_N(net2),
    .B(net1),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 _06_ (.A(net3),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 _07_ (.A(net3),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 _08_ (.A(net6),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 _09_ (.A(net3),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 _10_ (.A(net4),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 _11_ (.A(net11),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 _12_ (.A(net11),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 _13_ (.A(net14),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 _14_ (.A(net11),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 _15_ (.A(net12),
    .X(net18));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_85 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(received[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(received[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(bm_00_00[0]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(bm_00_00[1]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(bm_00_10[0]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(bm_00_10[1]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(bm_01_00[0]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(bm_01_00[1]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(bm_01_10[0]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(bm_01_10[1]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(bm_10_01[0]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(bm_10_01[1]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(bm_10_11[0]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(bm_10_11[1]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(bm_11_01[0]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(bm_11_01[1]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(bm_11_11[0]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(bm_11_11[1]));
endmodule
