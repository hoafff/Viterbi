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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__inv_2 _13_ (.A(\state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_04_));
 sky130_fd_sc_hd__and2b_2 _14_ (.A_N(\state[1] ),
    .B(\state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_05_));
 sky130_fd_sc_hd__nand2b_2 _15_ (.A_N(\state[1] ),
    .B(\state[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_2 _16_ (.A(\sym_cnt[0] ),
    .B(_06_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_00_));
 sky130_fd_sc_hd__or2_2 _17_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_07_));
 sky130_fd_sc_hd__nand2_2 _18_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_08_));
 sky130_fd_sc_hd__and3_2 _19_ (.A(_05_),
    .B(_07_),
    .C(_08_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_01_));
 sky130_fd_sc_hd__a21o_2 _20_ (.A1(\sym_cnt[1] ),
    .A2(\sym_cnt[0] ),
    .B1(\sym_cnt[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_09_));
 sky130_fd_sc_hd__nand3_2 _21_ (.A(\sym_cnt[1] ),
    .B(\sym_cnt[0] ),
    .C(\sym_cnt[2] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_10_));
 sky130_fd_sc_hd__and3_2 _22_ (.A(_05_),
    .B(_09_),
    .C(_10_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_02_));
 sky130_fd_sc_hd__and3_2 _23_ (.A(\sym_cnt[3] ),
    .B(_05_),
    .C(_10_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_03_));
 sky130_fd_sc_hd__and4b_2 _24_ (.A_N(\sym_cnt[3] ),
    .B(\sym_cnt[2] ),
    .C(\sym_cnt[1] ),
    .D(\sym_cnt[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_11_));
 sky130_fd_sc_hd__or3b_2 _25_ (.A(\state[1] ),
    .B(\state[0] ),
    .C_N(start),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_12_));
 sky130_fd_sc_hd__o21ai_2 _26_ (.A1(_06_),
    .A2(_11_),
    .B1(_12_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\next_state[0] ));
 sky130_fd_sc_hd__and2_2 _27_ (.A(_05_),
    .B(_11_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\next_state[1] ));
 sky130_fd_sc_hd__and2b_2 _28_ (.A_N(\state[0] ),
    .B(\state[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(frame_done));
 sky130_fd_sc_hd__a211oi_2 _29_ (.A1(_04_),
    .A2(start),
    .B1(_05_),
    .C1(frame_done),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(clr_me));
 sky130_fd_sc_hd__dfrtp_2 _30_ (.CLK(clk),
    .D(\next_state[0] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_2 _31_ (.CLK(clk),
    .D(\next_state[1] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _32_ (.CLK(clk),
    .D(_00_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\sym_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _33_ (.CLK(clk),
    .D(_01_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\sym_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _34_ (.CLK(clk),
    .D(_02_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\sym_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_2 _35_ (.CLK(clk),
    .D(_03_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\sym_cnt[3] ));
endmodule
