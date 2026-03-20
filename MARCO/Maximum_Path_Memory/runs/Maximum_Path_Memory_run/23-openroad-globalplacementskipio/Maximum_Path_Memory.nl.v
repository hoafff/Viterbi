module Maximum_Path_Memory (prev_00,
    prev_01,
    prev_10,
    prev_11,
    winner_state);
 input [3:0] prev_00;
 input [3:0] prev_01;
 input [3:0] prev_10;
 input [3:0] prev_11;
 output [1:0] winner_state;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;

 sky130_fd_sc_hd__inv_2 _39_ (.A(prev_11[3]),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(prev_10[2]),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(prev_11[2]),
    .Y(_02_));
 sky130_fd_sc_hd__inv_2 _42_ (.A(prev_01[3]),
    .Y(_03_));
 sky130_fd_sc_hd__inv_2 _43_ (.A(prev_01[2]),
    .Y(_04_));
 sky130_fd_sc_hd__and2b_2 _44_ (.A_N(prev_00[1]),
    .B(prev_01[1]),
    .X(_05_));
 sky130_fd_sc_hd__nand2b_2 _45_ (.A_N(prev_01[1]),
    .B(prev_00[1]),
    .Y(_06_));
 sky130_fd_sc_hd__nand2b_2 _46_ (.A_N(prev_01[0]),
    .B(prev_00[0]),
    .Y(_07_));
 sky130_fd_sc_hd__a21oi_2 _47_ (.A1(_06_),
    .A2(_07_),
    .B1(_05_),
    .Y(_08_));
 sky130_fd_sc_hd__nand2_2 _48_ (.A(prev_00[3]),
    .B(prev_01[3]),
    .Y(_09_));
 sky130_fd_sc_hd__or2_2 _49_ (.A(prev_00[3]),
    .B(prev_01[3]),
    .X(_10_));
 sky130_fd_sc_hd__xor2_2 _50_ (.A(prev_00[2]),
    .B(prev_01[2]),
    .X(_11_));
 sky130_fd_sc_hd__a21o_2 _51_ (.A1(_09_),
    .A2(_10_),
    .B1(_11_),
    .X(_12_));
 sky130_fd_sc_hd__a211o_2 _52_ (.A1(_09_),
    .A2(_10_),
    .B1(prev_00[2]),
    .C1(_04_),
    .X(_13_));
 sky130_fd_sc_hd__o221a_2 _53_ (.A1(prev_00[3]),
    .A2(_03_),
    .B1(_08_),
    .B2(_12_),
    .C1(_13_),
    .X(_14_));
 sky130_fd_sc_hd__mux2_1 _54_ (.A0(prev_00[0]),
    .A1(prev_01[0]),
    .S(_14_),
    .X(_15_));
 sky130_fd_sc_hd__and2b_2 _55_ (.A_N(prev_10[1]),
    .B(prev_11[1]),
    .X(_16_));
 sky130_fd_sc_hd__nand2b_2 _56_ (.A_N(prev_11[1]),
    .B(prev_10[1]),
    .Y(_17_));
 sky130_fd_sc_hd__nand2b_2 _57_ (.A_N(prev_11[0]),
    .B(prev_10[0]),
    .Y(_18_));
 sky130_fd_sc_hd__a21oi_2 _58_ (.A1(_17_),
    .A2(_18_),
    .B1(_16_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2_2 _59_ (.A(prev_10[3]),
    .B(prev_11[3]),
    .Y(_20_));
 sky130_fd_sc_hd__or2_2 _60_ (.A(prev_10[3]),
    .B(prev_11[3]),
    .X(_21_));
 sky130_fd_sc_hd__xor2_2 _61_ (.A(prev_10[2]),
    .B(prev_11[2]),
    .X(_22_));
 sky130_fd_sc_hd__a21o_2 _62_ (.A1(_20_),
    .A2(_21_),
    .B1(_22_),
    .X(_23_));
 sky130_fd_sc_hd__a211o_2 _63_ (.A1(_20_),
    .A2(_21_),
    .B1(prev_10[2]),
    .C1(_02_),
    .X(_24_));
 sky130_fd_sc_hd__o221a_2 _64_ (.A1(prev_10[3]),
    .A2(_00_),
    .B1(_19_),
    .B2(_23_),
    .C1(_24_),
    .X(_25_));
 sky130_fd_sc_hd__mux2_1 _65_ (.A0(prev_10[0]),
    .A1(prev_11[0]),
    .S(_25_),
    .X(_26_));
 sky130_fd_sc_hd__nand2b_2 _66_ (.A_N(_26_),
    .B(_15_),
    .Y(_27_));
 sky130_fd_sc_hd__mux2_1 _67_ (.A0(prev_00[2]),
    .A1(prev_01[2]),
    .S(_14_),
    .X(_28_));
 sky130_fd_sc_hd__mux2_1 _68_ (.A0(_01_),
    .A1(_02_),
    .S(_25_),
    .X(_29_));
 sky130_fd_sc_hd__nand2_2 _69_ (.A(_28_),
    .B(_29_),
    .Y(_30_));
 sky130_fd_sc_hd__nand2b_2 _70_ (.A_N(prev_01[1]),
    .B(_14_),
    .Y(_31_));
 sky130_fd_sc_hd__o21ai_2 _71_ (.A1(prev_00[1]),
    .A2(_14_),
    .B1(_31_),
    .Y(_32_));
 sky130_fd_sc_hd__mux2_1 _72_ (.A0(prev_10[1]),
    .A1(prev_11[1]),
    .S(_25_),
    .X(_33_));
 sky130_fd_sc_hd__o211a_2 _73_ (.A1(_32_),
    .A2(_33_),
    .B1(_27_),
    .C1(_30_),
    .X(_34_));
 sky130_fd_sc_hd__nor2_2 _74_ (.A(_28_),
    .B(_29_),
    .Y(_35_));
 sky130_fd_sc_hd__and3_2 _75_ (.A(prev_10[3]),
    .B(prev_11[3]),
    .C(_09_),
    .X(_36_));
 sky130_fd_sc_hd__a311o_2 _76_ (.A1(_30_),
    .A2(_32_),
    .A3(_33_),
    .B1(_35_),
    .C1(_36_),
    .X(_37_));
 sky130_fd_sc_hd__nand2b_2 _77_ (.A_N(_09_),
    .B(_20_),
    .Y(_38_));
 sky130_fd_sc_hd__o21ai_2 _78_ (.A1(_34_),
    .A2(_37_),
    .B1(_38_),
    .Y(winner_state[1]));
 sky130_fd_sc_hd__mux2_1 _79_ (.A0(_14_),
    .A1(_25_),
    .S(winner_state[1]),
    .X(winner_state[0]));
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
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_75 ();
endmodule
