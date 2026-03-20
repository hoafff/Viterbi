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
endmodule
