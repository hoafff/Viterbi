module Survivor_Memory_Unit (clk,
    rst_n,
    survivor_select_00,
    survivor_select_01,
    survivor_select_10,
    survivor_select_11,
    decoded_out,
    winner_state,
    VGND,
    VPWR);
 input clk;
 input rst_n;
 input survivor_select_00;
 input survivor_select_01;
 input survivor_select_10;
 input survivor_select_11;
 output [7:0] decoded_out;
 input [1:0] winner_state;
 inout VGND;
 inout VPWR;

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

 sky130_fd_sc_hd__mux2_1 _030_ (.A0(\Output_Select_Inst.decode_path_10[2] ),
    .A1(\Output_Select_Inst.decode_path_11[2] ),
    .S(survivor_select_11),
    .X(\Reg_Exchange_Inst.next_11[3] ));
 sky130_fd_sc_hd__mux2_1 _031_ (.A0(\Output_Select_Inst.decode_path_10[3] ),
    .A1(\Output_Select_Inst.decode_path_11[3] ),
    .S(survivor_select_11),
    .X(\Reg_Exchange_Inst.next_11[4] ));
 sky130_fd_sc_hd__mux2_1 _032_ (.A0(\Output_Select_Inst.decode_path_10[4] ),
    .A1(\Output_Select_Inst.decode_path_11[4] ),
    .S(survivor_select_11),
    .X(\Reg_Exchange_Inst.next_11[5] ));
 sky130_fd_sc_hd__mux2_1 _033_ (.A0(\Output_Select_Inst.decode_path_10[5] ),
    .A1(\Output_Select_Inst.decode_path_11[5] ),
    .S(survivor_select_11),
    .X(\Reg_Exchange_Inst.next_11[6] ));
 sky130_fd_sc_hd__mux2_1 _034_ (.A0(\Output_Select_Inst.decode_path_10[6] ),
    .A1(\Output_Select_Inst.decode_path_11[6] ),
    .S(survivor_select_11),
    .X(\Reg_Exchange_Inst.next_11[7] ));
 sky130_fd_sc_hd__and2_2 _035_ (.A(survivor_select_10),
    .B(\Output_Select_Inst.decode_path_01[1] ),
    .X(\Reg_Exchange_Inst.next_10[2] ));
 sky130_fd_sc_hd__mux2_1 _036_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .S(survivor_select_10),
    .X(\Reg_Exchange_Inst.next_10[3] ));
 sky130_fd_sc_hd__mux2_1 _037_ (.A0(\Output_Select_Inst.decode_path_00[3] ),
    .A1(\Output_Select_Inst.decode_path_01[3] ),
    .S(survivor_select_10),
    .X(\Reg_Exchange_Inst.next_10[4] ));
 sky130_fd_sc_hd__mux2_1 _038_ (.A0(\Output_Select_Inst.decode_path_00[4] ),
    .A1(\Output_Select_Inst.decode_path_01[4] ),
    .S(survivor_select_10),
    .X(\Reg_Exchange_Inst.next_10[5] ));
 sky130_fd_sc_hd__mux2_1 _039_ (.A0(\Output_Select_Inst.decode_path_00[5] ),
    .A1(\Output_Select_Inst.decode_path_01[5] ),
    .S(survivor_select_10),
    .X(\Reg_Exchange_Inst.next_10[6] ));
 sky130_fd_sc_hd__mux2_1 _040_ (.A0(\Output_Select_Inst.decode_path_00[6] ),
    .A1(\Output_Select_Inst.decode_path_01[6] ),
    .S(survivor_select_10),
    .X(\Reg_Exchange_Inst.next_10[7] ));
 sky130_fd_sc_hd__and2_2 _041_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[2] ));
 sky130_fd_sc_hd__mux2_1 _042_ (.A0(\Output_Select_Inst.decode_path_10[2] ),
    .A1(\Output_Select_Inst.decode_path_11[2] ),
    .S(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[3] ));
 sky130_fd_sc_hd__mux2_1 _043_ (.A0(\Output_Select_Inst.decode_path_10[3] ),
    .A1(\Output_Select_Inst.decode_path_11[3] ),
    .S(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[4] ));
 sky130_fd_sc_hd__mux2_1 _044_ (.A0(\Output_Select_Inst.decode_path_10[4] ),
    .A1(\Output_Select_Inst.decode_path_11[4] ),
    .S(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[5] ));
 sky130_fd_sc_hd__mux2_1 _045_ (.A0(\Output_Select_Inst.decode_path_10[5] ),
    .A1(\Output_Select_Inst.decode_path_11[5] ),
    .S(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[6] ));
 sky130_fd_sc_hd__mux2_1 _046_ (.A0(\Output_Select_Inst.decode_path_10[6] ),
    .A1(\Output_Select_Inst.decode_path_11[6] ),
    .S(survivor_select_01),
    .X(\Reg_Exchange_Inst.next_01[7] ));
 sky130_fd_sc_hd__and2_2 _047_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[2] ));
 sky130_fd_sc_hd__mux2_1 _048_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .S(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[3] ));
 sky130_fd_sc_hd__mux2_1 _049_ (.A0(\Output_Select_Inst.decode_path_00[3] ),
    .A1(\Output_Select_Inst.decode_path_01[3] ),
    .S(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[4] ));
 sky130_fd_sc_hd__mux2_1 _050_ (.A0(\Output_Select_Inst.decode_path_00[4] ),
    .A1(\Output_Select_Inst.decode_path_01[4] ),
    .S(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[5] ));
 sky130_fd_sc_hd__mux2_1 _051_ (.A0(\Output_Select_Inst.decode_path_00[5] ),
    .A1(\Output_Select_Inst.decode_path_01[5] ),
    .S(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[6] ));
 sky130_fd_sc_hd__mux2_1 _052_ (.A0(\Output_Select_Inst.decode_path_00[6] ),
    .A1(\Output_Select_Inst.decode_path_01[6] ),
    .S(survivor_select_00),
    .X(\Reg_Exchange_Inst.next_00[7] ));
 sky130_fd_sc_hd__and2_2 _053_ (.A(winner_state[1]),
    .B(\Output_Select_Inst.decode_path_10[0] ),
    .X(_000_));
 sky130_fd_sc_hd__and2_2 _054_ (.A(\Output_Select_Inst.decode_path_01[1] ),
    .B(winner_state[0]),
    .X(_001_));
 sky130_fd_sc_hd__nor2_2 _055_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .Y(_021_));
 sky130_fd_sc_hd__mux4_2 _056_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .A2(\Output_Select_Inst.decode_path_10[2] ),
    .A3(\Output_Select_Inst.decode_path_11[2] ),
    .S0(winner_state[0]),
    .S1(winner_state[1]),
    .X(_002_));
 sky130_fd_sc_hd__or3_2 _057_ (.A(\Output_Select_Inst.decode_path_00[3] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_022_));
 sky130_fd_sc_hd__and3_2 _058_ (.A(\Output_Select_Inst.decode_path_11[3] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_023_));
 sky130_fd_sc_hd__and3b_2 _059_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[3] ),
    .X(_024_));
 sky130_fd_sc_hd__and2b_2 _060_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[3] ),
    .X(_025_));
 sky130_fd_sc_hd__o41a_2 _061_ (.A1(_021_),
    .A2(_023_),
    .A3(_024_),
    .A4(_025_),
    .B1(_022_),
    .X(_003_));
 sky130_fd_sc_hd__and3b_2 _062_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[4] ),
    .X(_026_));
 sky130_fd_sc_hd__and3_2 _063_ (.A(\Output_Select_Inst.decode_path_11[4] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_027_));
 sky130_fd_sc_hd__and2b_2 _064_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[4] ),
    .X(_028_));
 sky130_fd_sc_hd__or3_2 _065_ (.A(\Output_Select_Inst.decode_path_00[4] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_008_));
 sky130_fd_sc_hd__o41a_2 _066_ (.A1(_021_),
    .A2(_026_),
    .A3(_027_),
    .A4(_028_),
    .B1(_008_),
    .X(_004_));
 sky130_fd_sc_hd__or3_2 _067_ (.A(\Output_Select_Inst.decode_path_00[5] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_009_));
 sky130_fd_sc_hd__and3_2 _068_ (.A(\Output_Select_Inst.decode_path_11[5] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_010_));
 sky130_fd_sc_hd__and3b_2 _069_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[5] ),
    .X(_011_));
 sky130_fd_sc_hd__and2b_2 _070_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[5] ),
    .X(_012_));
 sky130_fd_sc_hd__o41a_2 _071_ (.A1(_021_),
    .A2(_010_),
    .A3(_011_),
    .A4(_012_),
    .B1(_009_),
    .X(_005_));
 sky130_fd_sc_hd__or3_2 _072_ (.A(\Output_Select_Inst.decode_path_00[6] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_013_));
 sky130_fd_sc_hd__and3b_2 _073_ (.A_N(winner_state[1]),
    .B(winner_state[0]),
    .C(\Output_Select_Inst.decode_path_01[6] ),
    .X(_014_));
 sky130_fd_sc_hd__and3_2 _074_ (.A(\Output_Select_Inst.decode_path_11[6] ),
    .B(winner_state[0]),
    .C(winner_state[1]),
    .X(_015_));
 sky130_fd_sc_hd__and2b_2 _075_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[6] ),
    .X(_016_));
 sky130_fd_sc_hd__o41a_2 _076_ (.A1(_021_),
    .A2(_014_),
    .A3(_015_),
    .A4(_016_),
    .B1(_013_),
    .X(_006_));
 sky130_fd_sc_hd__or3_2 _077_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .C(\Output_Select_Inst.decode_path_00[7] ),
    .X(_017_));
 sky130_fd_sc_hd__and3b_2 _078_ (.A_N(winner_state[1]),
    .B(\Output_Select_Inst.decode_path_01[7] ),
    .C(winner_state[0]),
    .X(_018_));
 sky130_fd_sc_hd__and3_2 _079_ (.A(winner_state[0]),
    .B(winner_state[1]),
    .C(\Output_Select_Inst.decode_path_11[7] ),
    .X(_019_));
 sky130_fd_sc_hd__and2b_2 _080_ (.A_N(winner_state[0]),
    .B(\Output_Select_Inst.decode_path_10[7] ),
    .X(_020_));
 sky130_fd_sc_hd__o41a_2 _081_ (.A1(_021_),
    .A2(_018_),
    .A3(_019_),
    .A4(_020_),
    .B1(_017_),
    .X(_007_));
 sky130_fd_sc_hd__and2_2 _082_ (.A(survivor_select_11),
    .B(\Output_Select_Inst.decode_path_01[1] ),
    .X(\Reg_Exchange_Inst.next_11[2] ));
 sky130_fd_sc_hd__dfrtp_2 _083_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[2] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[2] ));
 sky130_fd_sc_hd__dfrtp_2 _084_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[3] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[3] ));
 sky130_fd_sc_hd__dfrtp_2 _085_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[4] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[4] ));
 sky130_fd_sc_hd__dfrtp_2 _086_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[5] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[5] ));
 sky130_fd_sc_hd__dfrtp_2 _087_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[6] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[6] ));
 sky130_fd_sc_hd__dfrtp_2 _088_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_10[7] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[7] ));
 sky130_fd_sc_hd__dfrtp_2 _089_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[2] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[2] ));
 sky130_fd_sc_hd__dfrtp_2 _090_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[3] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[3] ));
 sky130_fd_sc_hd__dfrtp_2 _091_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[4] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[4] ));
 sky130_fd_sc_hd__dfrtp_2 _092_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[5] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[5] ));
 sky130_fd_sc_hd__dfrtp_2 _093_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[6] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[6] ));
 sky130_fd_sc_hd__dfrtp_2 _094_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_00[7] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_00[7] ));
 sky130_fd_sc_hd__dfrtp_2 _095_ (.CLK(clk),
    .D(\Output_Select_Inst.decode_path_10[0] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[1] ));
 sky130_fd_sc_hd__dfrtp_2 _096_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[2] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[2] ));
 sky130_fd_sc_hd__dfrtp_2 _097_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[3] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[3] ));
 sky130_fd_sc_hd__dfrtp_2 _098_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[4] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[4] ));
 sky130_fd_sc_hd__dfrtp_2 _099_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[5] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[5] ));
 sky130_fd_sc_hd__dfrtp_2 _100_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[6] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[6] ));
 sky130_fd_sc_hd__dfrtp_2 _101_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_01[7] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_01[7] ));
 sky130_fd_sc_hd__dfrtp_2 _102_ (.CLK(clk),
    .D(_029_),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_10[0] ));
 sky130_fd_sc_hd__dfrtp_2 _103_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[2] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[2] ));
 sky130_fd_sc_hd__dfrtp_2 _104_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[3] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[3] ));
 sky130_fd_sc_hd__dfrtp_2 _105_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[4] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[4] ));
 sky130_fd_sc_hd__dfrtp_2 _106_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[5] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[5] ));
 sky130_fd_sc_hd__dfrtp_2 _107_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[6] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[6] ));
 sky130_fd_sc_hd__dfrtp_2 _108_ (.CLK(clk),
    .D(\Reg_Exchange_Inst.next_11[7] ),
    .RESET_B(rst_n),
    .Q(\Output_Select_Inst.decode_path_11[7] ));
 sky130_fd_sc_hd__dfrtp_2 _109_ (.CLK(clk),
    .D(_000_),
    .RESET_B(rst_n),
    .Q(decoded_out[0]));
 sky130_fd_sc_hd__dfrtp_2 _110_ (.CLK(clk),
    .D(_001_),
    .RESET_B(rst_n),
    .Q(decoded_out[1]));
 sky130_fd_sc_hd__dfrtp_2 _111_ (.CLK(clk),
    .D(_002_),
    .RESET_B(rst_n),
    .Q(decoded_out[2]));
 sky130_fd_sc_hd__dfrtp_2 _112_ (.CLK(clk),
    .D(_003_),
    .RESET_B(rst_n),
    .Q(decoded_out[3]));
 sky130_fd_sc_hd__dfrtp_2 _113_ (.CLK(clk),
    .D(_004_),
    .RESET_B(rst_n),
    .Q(decoded_out[4]));
 sky130_fd_sc_hd__dfrtp_2 _114_ (.CLK(clk),
    .D(_005_),
    .RESET_B(rst_n),
    .Q(decoded_out[5]));
 sky130_fd_sc_hd__dfrtp_2 _115_ (.CLK(clk),
    .D(_006_),
    .RESET_B(rst_n),
    .Q(decoded_out[6]));
 sky130_fd_sc_hd__dfrtp_2 _116_ (.CLK(clk),
    .D(_007_),
    .RESET_B(rst_n),
    .Q(decoded_out[7]));
 sky130_fd_sc_hd__conb_1 _117_ (.HI(_029_));
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_100 ();
endmodule
