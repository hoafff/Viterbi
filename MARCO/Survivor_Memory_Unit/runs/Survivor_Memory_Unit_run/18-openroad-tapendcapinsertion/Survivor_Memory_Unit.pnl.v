module Survivor_Memory_Unit (clk,
    rst_n,
    survivor_select_00,
    survivor_select_01,
    survivor_select_10,
    survivor_select_11,
    decoded_out,
    winner_state);
 input clk;
 input rst_n;
 input survivor_select_00;
 input survivor_select_01;
 input survivor_select_10;
 input survivor_select_11;
 output [7:0] decoded_out;
 input [1:0] winner_state;

 wire \Output_Select_Inst.decode_path_00[2] ;
 wire \Output_Select_Inst.decode_path_00[3] ;
 wire \Output_Select_Inst.decode_path_00[4] ;
 wire \Output_Select_Inst.decode_path_00[5] ;
 wire \Output_Select_Inst.decode_path_00[6] ;
 wire \Output_Select_Inst.decode_path_00[7] ;
 wire \Output_Select_Inst.decode_path_01[1] ;
 wire \Output_Select_Inst.decode_path_01[2] ;
 wire \Output_Select_Inst.decode_path_01[3] ;
 wire \Output_Select_Inst.decode_path_01[4] ;
 wire \Output_Select_Inst.decode_path_01[5] ;
 wire \Output_Select_Inst.decode_path_01[6] ;
 wire \Output_Select_Inst.decode_path_01[7] ;
 wire \Output_Select_Inst.decode_path_10[0] ;
 wire \Output_Select_Inst.decode_path_10[2] ;
 wire \Output_Select_Inst.decode_path_10[3] ;
 wire \Output_Select_Inst.decode_path_10[4] ;
 wire \Output_Select_Inst.decode_path_10[5] ;
 wire \Output_Select_Inst.decode_path_10[6] ;
 wire \Output_Select_Inst.decode_path_10[7] ;
 wire \Output_Select_Inst.decode_path_11[2] ;
 wire \Output_Select_Inst.decode_path_11[3] ;
 wire \Output_Select_Inst.decode_path_11[4] ;
 wire \Output_Select_Inst.decode_path_11[5] ;
 wire \Output_Select_Inst.decode_path_11[6] ;
 wire \Output_Select_Inst.decode_path_11[7] ;
 wire \Reg_Exchange_Inst.next_00[2] ;
 wire \Reg_Exchange_Inst.next_00[3] ;
 wire \Reg_Exchange_Inst.next_00[4] ;
 wire \Reg_Exchange_Inst.next_00[5] ;
 wire \Reg_Exchange_Inst.next_00[6] ;
 wire \Reg_Exchange_Inst.next_00[7] ;
 wire \Reg_Exchange_Inst.next_01[2] ;
 wire \Reg_Exchange_Inst.next_01[3] ;
 wire \Reg_Exchange_Inst.next_01[4] ;
 wire \Reg_Exchange_Inst.next_01[5] ;
 wire \Reg_Exchange_Inst.next_01[6] ;
 wire \Reg_Exchange_Inst.next_01[7] ;
 wire \Reg_Exchange_Inst.next_10[2] ;
 wire \Reg_Exchange_Inst.next_10[3] ;
 wire \Reg_Exchange_Inst.next_10[4] ;
 wire \Reg_Exchange_Inst.next_10[5] ;
 wire \Reg_Exchange_Inst.next_10[6] ;
 wire \Reg_Exchange_Inst.next_10[7] ;
 wire \Reg_Exchange_Inst.next_11[2] ;
 wire \Reg_Exchange_Inst.next_11[3] ;
 wire \Reg_Exchange_Inst.next_11[4] ;
 wire \Reg_Exchange_Inst.next_11[5] ;
 wire \Reg_Exchange_Inst.next_11[6] ;
 wire \Reg_Exchange_Inst.next_11[7] ;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__mux2_1 _030_ (.A0(\Output_Select_Inst.decode_path_10[2] ),
    .A1(\Output_Select_Inst.decode_path_11[2] ),
    .S(survivor_select_11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[3] ));
 sky130_fd_sc_hd__mux2_1 _031_ (.A0(\Output_Select_Inst.decode_path_10[3] ),
    .A1(\Output_Select_Inst.decode_path_11[3] ),
    .S(survivor_select_11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[4] ));
 sky130_fd_sc_hd__mux2_1 _032_ (.A0(\Output_Select_Inst.decode_path_10[4] ),
    .A1(\Output_Select_Inst.decode_path_11[4] ),
    .S(survivor_select_11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[5] ));
 sky130_fd_sc_hd__mux2_1 _033_ (.A0(\Output_Select_Inst.decode_path_10[5] ),
    .A1(\Output_Select_Inst.decode_path_11[5] ),
    .S(survivor_select_11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[6] ));
 sky130_fd_sc_hd__mux2_1 _034_ (.A0(\Output_Select_Inst.decode_path_10[6] ),
    .A1(\Output_Select_Inst.decode_path_11[6] ),
    .S(survivor_select_11),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[7] ));
 sky130_fd_sc_hd__and2_2 _035_ (.A(survivor_select_10),
    .B(\Output_Select_Inst.decode_path_01[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[2] ));
 sky130_fd_sc_hd__mux2_1 _036_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .S(survivor_select_10),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[3] ));
 sky130_fd_sc_hd__mux2_1 _037_ (.A0(\Output_Select_Inst.decode_path_00[3] ),
    .A1(\Output_Select_Inst.decode_path_01[3] ),
    .S(survivor_select_10),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[4] ));
 sky130_fd_sc_hd__mux2_1 _038_ (.A0(\Output_Select_Inst.decode_path_00[4] ),
    .A1(\Output_Select_Inst.decode_path_01[4] ),
    .S(survivor_select_10),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[5] ));
 sky130_fd_sc_hd__mux2_1 _039_ (.A0(\Output_Select_Inst.decode_path_00[5] ),
    .A1(\Output_Select_Inst.decode_path_01[5] ),
    .S(survivor_select_10),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[6] ));
 sky130_fd_sc_hd__mux2_1 _040_ (.A0(\Output_Select_Inst.decode_path_00[6] ),
    .A1(\Output_Select_Inst.decode_path_01[6] ),
    .S(survivor_select_10),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_10[7] ));
 sky130_fd_sc_hd__and2_2 _041_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[2] ));
 sky130_fd_sc_hd__mux2_1 _042_ (.A0(\Output_Select_Inst.decode_path_10[2] ),
    .A1(\Output_Select_Inst.decode_path_11[2] ),
    .S(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[3] ));
 sky130_fd_sc_hd__mux2_1 _043_ (.A0(\Output_Select_Inst.decode_path_10[3] ),
    .A1(\Output_Select_Inst.decode_path_11[3] ),
    .S(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[4] ));
 sky130_fd_sc_hd__mux2_1 _044_ (.A0(\Output_Select_Inst.decode_path_10[4] ),
    .A1(\Output_Select_Inst.decode_path_11[4] ),
    .S(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[5] ));
 sky130_fd_sc_hd__mux2_1 _045_ (.A0(\Output_Select_Inst.decode_path_10[5] ),
    .A1(\Output_Select_Inst.decode_path_11[5] ),
    .S(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[6] ));
 sky130_fd_sc_hd__mux2_1 _046_ (.A0(\Output_Select_Inst.decode_path_10[6] ),
    .A1(\Output_Select_Inst.decode_path_11[6] ),
    .S(survivor_select_01),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_01[7] ));
 sky130_fd_sc_hd__and2_2 _047_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[2] ));
 sky130_fd_sc_hd__mux2_1 _048_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .S(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[3] ));
 sky130_fd_sc_hd__mux2_1 _049_ (.A0(\Output_Select_Inst.decode_path_00[3] ),
    .A1(\Output_Select_Inst.decode_path_01[3] ),
    .S(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[4] ));
 sky130_fd_sc_hd__mux2_1 _050_ (.A0(\Output_Select_Inst.decode_path_00[4] ),
    .A1(\Output_Select_Inst.decode_path_01[4] ),
    .S(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[5] ));
 sky130_fd_sc_hd__mux2_1 _051_ (.A0(\Output_Select_Inst.decode_path_00[5] ),
    .A1(\Output_Select_Inst.decode_path_01[5] ),
    .S(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[6] ));
 sky130_fd_sc_hd__mux2_1 _052_ (.A0(\Output_Select_Inst.decode_path_00[6] ),
    .A1(\Output_Select_Inst.decode_path_01[6] ),
    .S(survivor_select_00),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_00[7] ));
 sky130_fd_sc_hd__and2_2 _053_ (.A(winner_state[1]),
    .B(\Output_Select_Inst.decode_path_10[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_000_));
 sky130_fd_sc_hd__and2_2 _054_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(winner_state[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_001_));
 sky130_fd_sc_hd__nor2_2 _055_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_021_));
 sky130_fd_sc_hd__mux4_2 _056_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .A2(\Output_Select_Inst.decode_path_10[2] ),
    .A3(\Output_Select_Inst.decode_path_11[2] ),
    .S0(winner_state[0]),
    .S1(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_002_));
 sky130_fd_sc_hd__or3_2 _057_ (.A(\Output_Select_Inst.decode_path_00[3] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_022_));
 sky130_fd_sc_hd__and3_2 _058_ (.A(\Output_Select_Inst.decode_path_11[3] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_023_));
 sky130_fd_sc_hd__and3b_2 _059_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_024_));
 sky130_fd_sc_hd__and2b_2 _060_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[3] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_025_));
 sky130_fd_sc_hd__o41a_2 _061_ (.A1(_021_),
    .A2(_023_),
    .A3(_024_),
    .A4(_025_),
    .B1(_022_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_003_));
 sky130_fd_sc_hd__and3b_2 _062_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_026_));
 sky130_fd_sc_hd__and3_2 _063_ (.A(\Output_Select_Inst.decode_path_11[4] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_027_));
 sky130_fd_sc_hd__and2b_2 _064_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[4] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_028_));
 sky130_fd_sc_hd__or3_2 _065_ (.A(\Output_Select_Inst.decode_path_00[4] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_008_));
 sky130_fd_sc_hd__o41a_2 _066_ (.A1(_021_),
    .A2(_026_),
    .A3(_027_),
    .A4(_028_),
    .B1(_008_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_004_));
 sky130_fd_sc_hd__or3_2 _067_ (.A(\Output_Select_Inst.decode_path_00[5] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_009_));
 sky130_fd_sc_hd__and3_2 _068_ (.A(\Output_Select_Inst.decode_path_11[5] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_010_));
 sky130_fd_sc_hd__and3b_2 _069_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_011_));
 sky130_fd_sc_hd__and2b_2 _070_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[5] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_012_));
 sky130_fd_sc_hd__o41a_2 _071_ (.A1(_021_),
    .A2(_010_),
    .A3(_011_),
    .A4(_012_),
    .B1(_009_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_005_));
 sky130_fd_sc_hd__or3_2 _072_ (.A(\Output_Select_Inst.decode_path_00[6] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_013_));
 sky130_fd_sc_hd__and3b_2 _073_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_014_));
 sky130_fd_sc_hd__and3_2 _074_ (.A(\Output_Select_Inst.decode_path_11[6] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_015_));
 sky130_fd_sc_hd__and2b_2 _075_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[6] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_016_));
 sky130_fd_sc_hd__o41a_2 _076_ (.A1(_021_),
    .A2(_014_),
    .A3(_015_),
    .A4(_016_),
    .B1(_013_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_006_));
 sky130_fd_sc_hd__or3_2 _077_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .C(\Output_Select_Inst.decode_path_00[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_017_));
 sky130_fd_sc_hd__and3b_2 _078_ (.A_N(winner_state[1]),
    .B(\Output_Select_Inst.decode_path_01[7] ),
    .C(winner_state[0]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_018_));
 sky130_fd_sc_hd__and3_2 _079_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .C(\Output_Select_Inst.decode_path_11[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_019_));
 sky130_fd_sc_hd__and2b_2 _080_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[7] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_020_));
 sky130_fd_sc_hd__o41a_2 _081_ (.A1(_021_),
    .A2(_018_),
    .A3(_019_),
    .A4(_020_),
    .B1(_017_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(_007_));
 sky130_fd_sc_hd__and2_2 _082_ (.A(survivor_select_11),
    .B(\Output_Select_Inst.decode_path_01[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\Reg_Exchange_Inst.next_11[2] ));
 sky130_fd_sc_hd__dfrtp_2 _083_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[2] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[2] ));
 sky130_fd_sc_hd__dfrtp_2 _084_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[3] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[3] ));
 sky130_fd_sc_hd__dfrtp_2 _085_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[4] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[4] ));
 sky130_fd_sc_hd__dfrtp_2 _086_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[5] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[5] ));
 sky130_fd_sc_hd__dfrtp_2 _087_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[6] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[6] ));
 sky130_fd_sc_hd__dfrtp_2 _088_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[7] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[7] ));
 sky130_fd_sc_hd__dfrtp_2 _089_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[2] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[2] ));
 sky130_fd_sc_hd__dfrtp_2 _090_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[3] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[3] ));
 sky130_fd_sc_hd__dfrtp_2 _091_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[4] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[4] ));
 sky130_fd_sc_hd__dfrtp_2 _092_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[5] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[5] ));
 sky130_fd_sc_hd__dfrtp_2 _093_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[6] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[6] ));
 sky130_fd_sc_hd__dfrtp_2 _094_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[7] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_00[7] ));
 sky130_fd_sc_hd__dfrtp_2 _095_ (.CLK(clk),
    .D(\Output_Select_Inst.decode_path_10[0] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[1] ));
 sky130_fd_sc_hd__dfrtp_2 _096_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[2] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[2] ));
 sky130_fd_sc_hd__dfrtp_2 _097_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[3] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[3] ));
 sky130_fd_sc_hd__dfrtp_2 _098_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[4] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[4] ));
 sky130_fd_sc_hd__dfrtp_2 _099_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[5] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[5] ));
 sky130_fd_sc_hd__dfrtp_2 _100_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[6] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[6] ));
 sky130_fd_sc_hd__dfrtp_2 _101_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[7] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_01[7] ));
 sky130_fd_sc_hd__dfrtp_2 _102_ (.CLK(clk),
    .D(_029_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_10[0] ));
 sky130_fd_sc_hd__dfrtp_2 _103_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[2] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[2] ));
 sky130_fd_sc_hd__dfrtp_2 _104_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[3] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[3] ));
 sky130_fd_sc_hd__dfrtp_2 _105_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[4] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[4] ));
 sky130_fd_sc_hd__dfrtp_2 _106_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[5] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[5] ));
 sky130_fd_sc_hd__dfrtp_2 _107_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[6] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[6] ));
 sky130_fd_sc_hd__dfrtp_2 _108_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[7] ),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\Output_Select_Inst.decode_path_11[7] ));
 sky130_fd_sc_hd__dfrtp_2 _109_ (.CLK(clk),
    .D(_000_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[0]));
 sky130_fd_sc_hd__dfrtp_2 _110_ (.CLK(clk),
    .D(_001_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[1]));
 sky130_fd_sc_hd__dfrtp_2 _111_ (.CLK(clk),
    .D(_002_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[2]));
 sky130_fd_sc_hd__dfrtp_2 _112_ (.CLK(clk),
    .D(_003_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[3]));
 sky130_fd_sc_hd__dfrtp_2 _113_ (.CLK(clk),
    .D(_004_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[4]));
 sky130_fd_sc_hd__dfrtp_2 _114_ (.CLK(clk),
    .D(_005_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[5]));
 sky130_fd_sc_hd__dfrtp_2 _115_ (.CLK(clk),
    .D(_006_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[6]));
 sky130_fd_sc_hd__dfrtp_2 _116_ (.CLK(clk),
    .D(_007_),
    .RESET_B(rst_n),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(decoded_out[7]));
 sky130_fd_sc_hd__conb_1 _117_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(_029_));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_28 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_29 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_30 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_31 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_32 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_33 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_34 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_35 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_36 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_37 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_38 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_39 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_40 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_41 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_42 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_43 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_44 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_45 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_46 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_47 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_48 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_49 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_50 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_51 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_52 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_53 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_54 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_55 (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_56 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_57 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_58 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_59 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_60 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_61 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_62 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_63 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_64 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_65 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_66 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_67 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_68 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_69 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_70 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_71 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_72 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_73 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_74 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_75 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_76 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_77 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_78 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_79 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_80 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_81 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_82 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_83 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_84 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_85 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_86 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_87 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_88 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_89 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_90 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_91 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_92 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_93 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_94 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_95 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_96 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_97 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_98 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_99 (.VGND(VGND),
    .VPWR(VPWR));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_100 (.VGND(VGND),
    .VPWR(VPWR));
endmodule
