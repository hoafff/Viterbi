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

 sky130_fd_sc_hd__inv_2 _39_ (.A(net16),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(net11),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(net15),
    .Y(_02_));
 sky130_fd_sc_hd__inv_2 _42_ (.A(net8),
    .Y(_03_));
 sky130_fd_sc_hd__inv_2 _43_ (.A(net7),
    .Y(_04_));
 sky130_fd_sc_hd__and2b_1 _44_ (.A_N(net2),
    .B(net6),
    .X(_05_));
 sky130_fd_sc_hd__nand2b_1 _45_ (.A_N(net6),
    .B(net2),
    .Y(_06_));
 sky130_fd_sc_hd__nand2b_1 _46_ (.A_N(net5),
    .B(net1),
    .Y(_07_));
 sky130_fd_sc_hd__a21oi_1 _47_ (.A1(_06_),
    .A2(_07_),
    .B1(_05_),
    .Y(_08_));
 sky130_fd_sc_hd__nand2_1 _48_ (.A(net4),
    .B(net8),
    .Y(_09_));
 sky130_fd_sc_hd__or2_1 _49_ (.A(net4),
    .B(net8),
    .X(_10_));
 sky130_fd_sc_hd__xor2_1 _50_ (.A(net3),
    .B(net7),
    .X(_11_));
 sky130_fd_sc_hd__a21o_1 _51_ (.A1(_09_),
    .A2(_10_),
    .B1(_11_),
    .X(_12_));
 sky130_fd_sc_hd__a211o_1 _52_ (.A1(_09_),
    .A2(_10_),
    .B1(net3),
    .C1(_04_),
    .X(_13_));
 sky130_fd_sc_hd__o221a_2 _53_ (.A1(net4),
    .A2(_03_),
    .B1(_08_),
    .B2(_12_),
    .C1(_13_),
    .X(_14_));
 sky130_fd_sc_hd__mux2_1 _54_ (.A0(net1),
    .A1(net5),
    .S(_14_),
    .X(_15_));
 sky130_fd_sc_hd__and2b_1 _55_ (.A_N(net10),
    .B(net14),
    .X(_16_));
 sky130_fd_sc_hd__nand2b_1 _56_ (.A_N(net14),
    .B(net10),
    .Y(_17_));
 sky130_fd_sc_hd__nand2b_1 _57_ (.A_N(net13),
    .B(net9),
    .Y(_18_));
 sky130_fd_sc_hd__a21oi_1 _58_ (.A1(_17_),
    .A2(_18_),
    .B1(_16_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2_1 _59_ (.A(net12),
    .B(net16),
    .Y(_20_));
 sky130_fd_sc_hd__or2_1 _60_ (.A(net12),
    .B(net16),
    .X(_21_));
 sky130_fd_sc_hd__xor2_1 _61_ (.A(net11),
    .B(net15),
    .X(_22_));
 sky130_fd_sc_hd__a21o_1 _62_ (.A1(_20_),
    .A2(_21_),
    .B1(_22_),
    .X(_23_));
 sky130_fd_sc_hd__a211o_1 _63_ (.A1(_20_),
    .A2(_21_),
    .B1(net11),
    .C1(_02_),
    .X(_24_));
 sky130_fd_sc_hd__o221a_1 _64_ (.A1(net12),
    .A2(_00_),
    .B1(_19_),
    .B2(_23_),
    .C1(_24_),
    .X(_25_));
 sky130_fd_sc_hd__mux2_1 _65_ (.A0(net9),
    .A1(net13),
    .S(_25_),
    .X(_26_));
 sky130_fd_sc_hd__nand2b_1 _66_ (.A_N(_26_),
    .B(_15_),
    .Y(_27_));
 sky130_fd_sc_hd__mux2_1 _67_ (.A0(net3),
    .A1(net7),
    .S(_14_),
    .X(_28_));
 sky130_fd_sc_hd__mux2_1 _68_ (.A0(_01_),
    .A1(_02_),
    .S(_25_),
    .X(_29_));
 sky130_fd_sc_hd__nand2_1 _69_ (.A(_28_),
    .B(_29_),
    .Y(_30_));
 sky130_fd_sc_hd__nand2b_1 _70_ (.A_N(net6),
    .B(_14_),
    .Y(_31_));
 sky130_fd_sc_hd__o21ai_1 _71_ (.A1(net2),
    .A2(_14_),
    .B1(_31_),
    .Y(_32_));
 sky130_fd_sc_hd__mux2_1 _72_ (.A0(net10),
    .A1(net14),
    .S(_25_),
    .X(_33_));
 sky130_fd_sc_hd__o211a_1 _73_ (.A1(_32_),
    .A2(_33_),
    .B1(_27_),
    .C1(_30_),
    .X(_34_));
 sky130_fd_sc_hd__nor2_1 _74_ (.A(_28_),
    .B(_29_),
    .Y(_35_));
 sky130_fd_sc_hd__and3_1 _75_ (.A(net12),
    .B(net16),
    .C(_09_),
    .X(_36_));
 sky130_fd_sc_hd__a311o_1 _76_ (.A1(_30_),
    .A2(_32_),
    .A3(_33_),
    .B1(_35_),
    .C1(_36_),
    .X(_37_));
 sky130_fd_sc_hd__nand2b_1 _77_ (.A_N(_09_),
    .B(_20_),
    .Y(_38_));
 sky130_fd_sc_hd__o21ai_1 _78_ (.A1(_34_),
    .A2(_37_),
    .B1(_38_),
    .Y(net18));
 sky130_fd_sc_hd__mux2_1 _79_ (.A0(_14_),
    .A1(_25_),
    .S(net18),
    .X(net17));
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
 sky130_fd_sc_hd__buf_1 input1 (.A(prev_00[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(prev_00[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(prev_00[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(prev_00[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(prev_01[0]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(prev_01[1]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(prev_01[2]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(prev_01[3]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(prev_10[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(prev_10[1]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(prev_10[2]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(prev_10[3]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(prev_11[0]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(prev_11[1]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(prev_11[2]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(prev_11[3]),
    .X(net16));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(winner_state[0]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(winner_state[1]));
endmodule
