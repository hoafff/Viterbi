module Controller (clk,
    clr_me,
    frame_done,
    rst_n,
    start);
 input clk;
 output clr_me;
 output frame_done;
 input rst_n;
 input start;

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
 wire \next_state[0] ;
 wire \next_state[1] ;
 wire \state[0] ;
 wire \state[1] ;
 wire \sym_cnt[0] ;
 wire \sym_cnt[1] ;
 wire \sym_cnt[2] ;
 wire \sym_cnt[3] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net5;
 wire net6;
 wire net7;

 sky130_fd_sc_hd__inv_2 _13_ (.A(\state[0] ),
    .Y(_04_));
 sky130_fd_sc_hd__and2b_1 _14_ (.A_N(\state[1] ),
    .B(\state[0] ),
    .X(_05_));
 sky130_fd_sc_hd__nand2b_1 _15_ (.A_N(\state[1] ),
    .B(\state[0] ),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_1 _16_ (.A(net6),
    .B(_06_),
    .Y(_00_));
 sky130_fd_sc_hd__or2_1 _17_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .X(_07_));
 sky130_fd_sc_hd__nand2_1 _18_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .Y(_08_));
 sky130_fd_sc_hd__and3_1 _19_ (.A(_05_),
    .B(_07_),
    .C(_08_),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _20_ (.A1(\sym_cnt[1] ),
    .A2(\sym_cnt[0] ),
    .B1(\sym_cnt[2] ),
    .X(_09_));
 sky130_fd_sc_hd__nand3_1 _21_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .C(\sym_cnt[2] ),
    .Y(_10_));
 sky130_fd_sc_hd__and3_1 _22_ (.A(_05_),
    .B(_09_),
    .C(_10_),
    .X(_02_));
 sky130_fd_sc_hd__and3_1 _23_ (.A(net5),
    .B(_05_),
    .C(_10_),
    .X(_03_));
 sky130_fd_sc_hd__and4b_1 _24_ (.A_N(\sym_cnt[3] ),
    .B(\sym_cnt[2] ),
    .C(\sym_cnt[1] ),
    .D(\sym_cnt[0] ),
    .X(_11_));
 sky130_fd_sc_hd__or3b_1 _25_ (.A(net7),
    .B(\state[0] ),
    .C_N(net2),
    .X(_12_));
 sky130_fd_sc_hd__o21ai_1 _26_ (.A1(_06_),
    .A2(_11_),
    .B1(_12_),
    .Y(\next_state[0] ));
 sky130_fd_sc_hd__and2_1 _27_ (.A(_05_),
    .B(_11_),
    .X(\next_state[1] ));
 sky130_fd_sc_hd__and2b_1 _28_ (.A_N(\state[0] ),
    .B(\state[1] ),
    .X(net4));
 sky130_fd_sc_hd__a211oi_1 _29_ (.A1(_04_),
    .A2(net2),
    .B1(_05_),
    .C1(net4),
    .Y(net3));
 sky130_fd_sc_hd__dfrtp_1 _30_ (.CLK(clknet_1_0__leaf_clk),
    .D(\next_state[0] ),
    .RESET_B(net1),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _31_ (.CLK(clknet_1_0__leaf_clk),
    .D(\next_state[1] ),
    .RESET_B(net1),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_1 _32_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .RESET_B(net1),
    .Q(\sym_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_1 _33_ (.CLK(clknet_1_1__leaf_clk),
    .D(_01_),
    .RESET_B(net1),
    .Q(\sym_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _34_ (.CLK(clknet_1_1__leaf_clk),
    .D(_02_),
    .RESET_B(net1),
    .Q(\sym_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _35_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .RESET_B(net1),
    .Q(\sym_cnt[3] ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_15 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_16 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_17 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_18 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_45 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(start),
    .X(net2));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(clr_me));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(frame_done));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\sym_cnt[3] ),
    .X(net5));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\sym_cnt[0] ),
    .X(net6));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\state[1] ),
    .X(net7));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_173 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_79 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_120 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_132 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_165 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_185 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_73 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_5_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_97 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_6_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_189 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_165 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_189 ();
endmodule
