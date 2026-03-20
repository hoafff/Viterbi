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
 wire clknet_0_clk;
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
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;

 sky130_fd_sc_hd__mux2_1 _030_ (.A0(net44),
    .A1(\Output_Select_Inst.decode_path_11[2] ),
    .S(net5),
    .X(\Reg_Exchange_Inst.next_11[3] ));
 sky130_fd_sc_hd__mux2_1 _031_ (.A0(net34),
    .A1(\Output_Select_Inst.decode_path_11[3] ),
    .S(net5),
    .X(\Reg_Exchange_Inst.next_11[4] ));
 sky130_fd_sc_hd__mux2_1 _032_ (.A0(net50),
    .A1(\Output_Select_Inst.decode_path_11[4] ),
    .S(net5),
    .X(\Reg_Exchange_Inst.next_11[5] ));
 sky130_fd_sc_hd__mux2_1 _033_ (.A0(net52),
    .A1(\Output_Select_Inst.decode_path_11[5] ),
    .S(net5),
    .X(\Reg_Exchange_Inst.next_11[6] ));
 sky130_fd_sc_hd__mux2_1 _034_ (.A0(net27),
    .A1(\Output_Select_Inst.decode_path_11[6] ),
    .S(net5),
    .X(\Reg_Exchange_Inst.next_11[7] ));
 sky130_fd_sc_hd__and2_1 _035_ (.A(net4),
    .B(net58),
    .X(\Reg_Exchange_Inst.next_10[2] ));
 sky130_fd_sc_hd__mux2_1 _036_ (.A0(net41),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .S(net4),
    .X(\Reg_Exchange_Inst.next_10[3] ));
 sky130_fd_sc_hd__mux2_1 _037_ (.A0(\Output_Select_Inst.decode_path_00[3] ),
    .A1(net30),
    .S(net4),
    .X(\Reg_Exchange_Inst.next_10[4] ));
 sky130_fd_sc_hd__mux2_1 _038_ (.A0(net32),
    .A1(net40),
    .S(net4),
    .X(\Reg_Exchange_Inst.next_10[5] ));
 sky130_fd_sc_hd__mux2_1 _039_ (.A0(net56),
    .A1(net48),
    .S(net4),
    .X(\Reg_Exchange_Inst.next_10[6] ));
 sky130_fd_sc_hd__mux2_1 _040_ (.A0(net37),
    .A1(net46),
    .S(net4),
    .X(\Reg_Exchange_Inst.next_10[7] ));
 sky130_fd_sc_hd__and2_1 _041_ (.A(net58),
    .B(net3),
    .X(\Reg_Exchange_Inst.next_01[2] ));
 sky130_fd_sc_hd__mux2_1 _042_ (.A0(net44),
    .A1(net47),
    .S(net3),
    .X(\Reg_Exchange_Inst.next_01[3] ));
 sky130_fd_sc_hd__mux2_1 _043_ (.A0(net34),
    .A1(net39),
    .S(net3),
    .X(\Reg_Exchange_Inst.next_01[4] ));
 sky130_fd_sc_hd__mux2_1 _044_ (.A0(net50),
    .A1(net55),
    .S(net3),
    .X(\Reg_Exchange_Inst.next_01[5] ));
 sky130_fd_sc_hd__mux2_1 _045_ (.A0(net52),
    .A1(net54),
    .S(net3),
    .X(\Reg_Exchange_Inst.next_01[6] ));
 sky130_fd_sc_hd__mux2_1 _046_ (.A0(net27),
    .A1(net29),
    .S(net3),
    .X(\Reg_Exchange_Inst.next_01[7] ));
 sky130_fd_sc_hd__and2_1 _047_ (.A(net58),
    .B(net2),
    .X(\Reg_Exchange_Inst.next_00[2] ));
 sky130_fd_sc_hd__mux2_1 _048_ (.A0(net41),
    .A1(net43),
    .S(net2),
    .X(\Reg_Exchange_Inst.next_00[3] ));
 sky130_fd_sc_hd__mux2_1 _049_ (.A0(net36),
    .A1(net30),
    .S(net2),
    .X(\Reg_Exchange_Inst.next_00[4] ));
 sky130_fd_sc_hd__mux2_1 _050_ (.A0(net32),
    .A1(\Output_Select_Inst.decode_path_01[4] ),
    .S(net2),
    .X(\Reg_Exchange_Inst.next_00[5] ));
 sky130_fd_sc_hd__mux2_1 _051_ (.A0(\Output_Select_Inst.decode_path_00[5] ),
    .A1(net48),
    .S(net2),
    .X(\Reg_Exchange_Inst.next_00[6] ));
 sky130_fd_sc_hd__mux2_1 _052_ (.A0(net37),
    .A1(\Output_Select_Inst.decode_path_01[6] ),
    .S(net2),
    .X(\Reg_Exchange_Inst.next_00[7] ));
 sky130_fd_sc_hd__and2_1 _053_ (.A(net17),
    .B(net26),
    .X(_000_));
 sky130_fd_sc_hd__and2_1 _054_ (.A(net58),
    .B(net20),
    .X(_001_));
 sky130_fd_sc_hd__nor2_1 _055_ (.A(net20),
    .B(net17),
    .Y(_021_));
 sky130_fd_sc_hd__mux4_1 _056_ (.A0(\Output_Select_Inst.decode_path_00[2] ),
    .A1(\Output_Select_Inst.decode_path_01[2] ),
    .A2(\Output_Select_Inst.decode_path_10[2] ),
    .A3(\Output_Select_Inst.decode_path_11[2] ),
    .S0(net20),
    .S1(net17),
    .X(_002_));
 sky130_fd_sc_hd__or3_1 _057_ (.A(\Output_Select_Inst.decode_path_00[3] ),
    .B(net20),
    .C(net17),
    .X(_022_));
 sky130_fd_sc_hd__and3_1 _058_ (.A(\Output_Select_Inst.decode_path_11[3] ),
    .B(net20),
    .C(net17),
    .X(_023_));
 sky130_fd_sc_hd__and3b_1 _059_ (.A_N(net17),
    .B(net20),
    .C(\Output_Select_Inst.decode_path_01[3] ),
    .X(_024_));
 sky130_fd_sc_hd__and2b_1 _060_ (.A_N(net20),
    .B(\Output_Select_Inst.decode_path_10[3] ),
    .X(_025_));
 sky130_fd_sc_hd__o41a_1 _061_ (.A1(_021_),
    .A2(_023_),
    .A3(_024_),
    .A4(_025_),
    .B1(_022_),
    .X(_003_));
 sky130_fd_sc_hd__and3b_1 _062_ (.A_N(net16),
    .B(net18),
    .C(\Output_Select_Inst.decode_path_01[4] ),
    .X(_026_));
 sky130_fd_sc_hd__and3_1 _063_ (.A(\Output_Select_Inst.decode_path_11[4] ),
    .B(net18),
    .C(net16),
    .X(_027_));
 sky130_fd_sc_hd__and2b_1 _064_ (.A_N(net18),
    .B(\Output_Select_Inst.decode_path_10[4] ),
    .X(_028_));
 sky130_fd_sc_hd__or3_1 _065_ (.A(net59),
    .B(net18),
    .C(net16),
    .X(_008_));
 sky130_fd_sc_hd__o41a_1 _066_ (.A1(_021_),
    .A2(_026_),
    .A3(_027_),
    .A4(_028_),
    .B1(_008_),
    .X(_004_));
 sky130_fd_sc_hd__or3_1 _067_ (.A(\Output_Select_Inst.decode_path_00[5] ),
    .B(net18),
    .C(net16),
    .X(_009_));
 sky130_fd_sc_hd__and3_1 _068_ (.A(\Output_Select_Inst.decode_path_11[5] ),
    .B(net18),
    .C(net16),
    .X(_010_));
 sky130_fd_sc_hd__and3b_1 _069_ (.A_N(net16),
    .B(net18),
    .C(\Output_Select_Inst.decode_path_01[5] ),
    .X(_011_));
 sky130_fd_sc_hd__and2b_1 _070_ (.A_N(net18),
    .B(\Output_Select_Inst.decode_path_10[5] ),
    .X(_012_));
 sky130_fd_sc_hd__o41a_1 _071_ (.A1(_021_),
    .A2(_010_),
    .A3(_011_),
    .A4(_012_),
    .B1(_009_),
    .X(_005_));
 sky130_fd_sc_hd__or3_1 _072_ (.A(net60),
    .B(net18),
    .C(net16),
    .X(_013_));
 sky130_fd_sc_hd__and3b_1 _073_ (.A_N(net16),
    .B(net18),
    .C(\Output_Select_Inst.decode_path_01[6] ),
    .X(_014_));
 sky130_fd_sc_hd__and3_1 _074_ (.A(\Output_Select_Inst.decode_path_11[6] ),
    .B(net19),
    .C(net16),
    .X(_015_));
 sky130_fd_sc_hd__and2b_1 _075_ (.A_N(net19),
    .B(\Output_Select_Inst.decode_path_10[6] ),
    .X(_016_));
 sky130_fd_sc_hd__o41a_1 _076_ (.A1(_021_),
    .A2(_014_),
    .A3(_015_),
    .A4(_016_),
    .B1(_013_),
    .X(_006_));
 sky130_fd_sc_hd__or3_1 _077_ (.A(net19),
    .B(net16),
    .C(net57),
    .X(_017_));
 sky130_fd_sc_hd__and3b_1 _078_ (.A_N(net17),
    .B(\Output_Select_Inst.decode_path_01[7] ),
    .C(net19),
    .X(_018_));
 sky130_fd_sc_hd__and3_1 _079_ (.A(net19),
    .B(net17),
    .C(\Output_Select_Inst.decode_path_11[7] ),
    .X(_019_));
 sky130_fd_sc_hd__and2b_1 _080_ (.A_N(net19),
    .B(\Output_Select_Inst.decode_path_10[7] ),
    .X(_020_));
 sky130_fd_sc_hd__o41a_1 _081_ (.A1(_021_),
    .A2(_018_),
    .A3(_019_),
    .A4(_020_),
    .B1(_017_),
    .X(_007_));
 sky130_fd_sc_hd__and2_1 _082_ (.A(net5),
    .B(net58),
    .X(\Reg_Exchange_Inst.next_11[2] ));
 sky130_fd_sc_hd__dfrtp_1 _083_ (.CLK(clknet_2_0__leaf_clk),
    .D(\Reg_Exchange_Inst.next_10[2] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_10[2] ));
 sky130_fd_sc_hd__dfrtp_1 _084_ (.CLK(clknet_2_1__leaf_clk),
    .D(net42),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_10[3] ));
 sky130_fd_sc_hd__dfrtp_1 _085_ (.CLK(clknet_2_3__leaf_clk),
    .D(net31),
    .RESET_B(net22),
    .Q(\Output_Select_Inst.decode_path_10[4] ));
 sky130_fd_sc_hd__dfrtp_1 _086_ (.CLK(clknet_2_3__leaf_clk),
    .D(\Reg_Exchange_Inst.next_10[5] ),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_10[5] ));
 sky130_fd_sc_hd__dfrtp_1 _087_ (.CLK(clknet_2_2__leaf_clk),
    .D(\Reg_Exchange_Inst.next_10[6] ),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_10[6] ));
 sky130_fd_sc_hd__dfrtp_1 _088_ (.CLK(clknet_2_3__leaf_clk),
    .D(\Reg_Exchange_Inst.next_10[7] ),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_10[7] ));
 sky130_fd_sc_hd__dfrtp_1 _089_ (.CLK(clknet_2_0__leaf_clk),
    .D(\Reg_Exchange_Inst.next_00[2] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_00[2] ));
 sky130_fd_sc_hd__dfrtp_1 _090_ (.CLK(clknet_2_1__leaf_clk),
    .D(\Reg_Exchange_Inst.next_00[3] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_00[3] ));
 sky130_fd_sc_hd__dfrtp_1 _091_ (.CLK(clknet_2_1__leaf_clk),
    .D(\Reg_Exchange_Inst.next_00[4] ),
    .RESET_B(net22),
    .Q(\Output_Select_Inst.decode_path_00[4] ));
 sky130_fd_sc_hd__dfrtp_1 _092_ (.CLK(clknet_2_3__leaf_clk),
    .D(net33),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_00[5] ));
 sky130_fd_sc_hd__dfrtp_1 _093_ (.CLK(clknet_2_2__leaf_clk),
    .D(net49),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_00[6] ));
 sky130_fd_sc_hd__dfrtp_1 _094_ (.CLK(clknet_2_3__leaf_clk),
    .D(net38),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_00[7] ));
 sky130_fd_sc_hd__dfrtp_1 _095_ (.CLK(clknet_2_1__leaf_clk),
    .D(net26),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_01[1] ));
 sky130_fd_sc_hd__dfrtp_1 _096_ (.CLK(clknet_2_0__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[2] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_01[2] ));
 sky130_fd_sc_hd__dfrtp_1 _097_ (.CLK(clknet_2_0__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[3] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_01[3] ));
 sky130_fd_sc_hd__dfrtp_1 _098_ (.CLK(clknet_2_2__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[4] ),
    .RESET_B(net22),
    .Q(\Output_Select_Inst.decode_path_01[4] ));
 sky130_fd_sc_hd__dfrtp_1 _099_ (.CLK(clknet_2_2__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[5] ),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_01[5] ));
 sky130_fd_sc_hd__dfrtp_1 _100_ (.CLK(clknet_2_2__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[6] ),
    .RESET_B(net24),
    .Q(\Output_Select_Inst.decode_path_01[6] ));
 sky130_fd_sc_hd__dfrtp_1 _101_ (.CLK(clknet_2_3__leaf_clk),
    .D(\Reg_Exchange_Inst.next_01[7] ),
    .RESET_B(net24),
    .Q(\Output_Select_Inst.decode_path_01[7] ));
 sky130_fd_sc_hd__dfrtp_1 _102_ (.CLK(clknet_2_1__leaf_clk),
    .D(net25),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_10[0] ));
 sky130_fd_sc_hd__dfrtp_1 _103_ (.CLK(clknet_2_0__leaf_clk),
    .D(\Reg_Exchange_Inst.next_11[2] ),
    .RESET_B(net21),
    .Q(\Output_Select_Inst.decode_path_11[2] ));
 sky130_fd_sc_hd__dfrtp_1 _104_ (.CLK(clknet_2_0__leaf_clk),
    .D(net45),
    .RESET_B(net22),
    .Q(\Output_Select_Inst.decode_path_11[3] ));
 sky130_fd_sc_hd__dfrtp_1 _105_ (.CLK(clknet_2_2__leaf_clk),
    .D(net35),
    .RESET_B(net22),
    .Q(\Output_Select_Inst.decode_path_11[4] ));
 sky130_fd_sc_hd__dfrtp_1 _106_ (.CLK(clknet_2_2__leaf_clk),
    .D(net51),
    .RESET_B(net23),
    .Q(\Output_Select_Inst.decode_path_11[5] ));
 sky130_fd_sc_hd__dfrtp_1 _107_ (.CLK(clknet_2_2__leaf_clk),
    .D(net53),
    .RESET_B(net24),
    .Q(\Output_Select_Inst.decode_path_11[6] ));
 sky130_fd_sc_hd__dfrtp_1 _108_ (.CLK(clknet_2_3__leaf_clk),
    .D(net28),
    .RESET_B(net24),
    .Q(\Output_Select_Inst.decode_path_11[7] ));
 sky130_fd_sc_hd__dfrtp_1 _109_ (.CLK(clknet_2_1__leaf_clk),
    .D(_000_),
    .RESET_B(net21),
    .Q(net8));
 sky130_fd_sc_hd__dfrtp_1 _110_ (.CLK(clknet_2_1__leaf_clk),
    .D(_001_),
    .RESET_B(net22),
    .Q(net9));
 sky130_fd_sc_hd__dfrtp_1 _111_ (.CLK(clknet_2_1__leaf_clk),
    .D(_002_),
    .RESET_B(net22),
    .Q(net10));
 sky130_fd_sc_hd__dfrtp_1 _112_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .RESET_B(net22),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _113_ (.CLK(clknet_2_3__leaf_clk),
    .D(_004_),
    .RESET_B(net23),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _114_ (.CLK(clknet_2_3__leaf_clk),
    .D(_005_),
    .RESET_B(net23),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _115_ (.CLK(clknet_2_3__leaf_clk),
    .D(_006_),
    .RESET_B(net24),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _116_ (.CLK(clknet_2_3__leaf_clk),
    .D(_007_),
    .RESET_B(net24),
    .Q(net15));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
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
 sky130_fd_sc_hd__buf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(survivor_select_00),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_2 input3 (.A(survivor_select_01),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(survivor_select_10),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 input5 (.A(survivor_select_11),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(winner_state[0]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(winner_state[1]),
    .X(net7));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(decoded_out[0]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(decoded_out[1]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(decoded_out[2]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(decoded_out[3]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(decoded_out[4]));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(decoded_out[5]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(decoded_out[6]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(decoded_out[7]));
 sky130_fd_sc_hd__clkbuf_2 fanout16 (.A(net17),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 fanout17 (.A(net7),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_2 fanout18 (.A(net20),
    .X(net18));
 sky130_fd_sc_hd__buf_1 fanout19 (.A(net20),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_2 fanout20 (.A(net6),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_4 fanout21 (.A(net22),
    .X(net21));
 sky130_fd_sc_hd__buf_2 fanout22 (.A(net1),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_4 fanout23 (.A(net1),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_2 fanout24 (.A(net1),
    .X(net24));
 sky130_fd_sc_hd__conb_1 _102__25 (.HI(net25));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload0 (.A(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload1 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload2 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\Output_Select_Inst.decode_path_10[0] ),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\Output_Select_Inst.decode_path_10[6] ),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\Reg_Exchange_Inst.next_11[7] ),
    .X(net28));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\Output_Select_Inst.decode_path_11[6] ),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\Output_Select_Inst.decode_path_01[3] ),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\Reg_Exchange_Inst.next_10[4] ),
    .X(net31));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\Output_Select_Inst.decode_path_00[4] ),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\Reg_Exchange_Inst.next_00[5] ),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\Output_Select_Inst.decode_path_10[3] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\Reg_Exchange_Inst.next_11[4] ),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\Output_Select_Inst.decode_path_00[3] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\Output_Select_Inst.decode_path_00[6] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\Reg_Exchange_Inst.next_00[7] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\Output_Select_Inst.decode_path_11[3] ),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\Output_Select_Inst.decode_path_01[4] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\Output_Select_Inst.decode_path_00[2] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\Reg_Exchange_Inst.next_10[3] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\Output_Select_Inst.decode_path_01[2] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\Output_Select_Inst.decode_path_10[2] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\Reg_Exchange_Inst.next_11[3] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\Output_Select_Inst.decode_path_01[6] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\Output_Select_Inst.decode_path_11[2] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\Output_Select_Inst.decode_path_01[5] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\Reg_Exchange_Inst.next_00[6] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\Output_Select_Inst.decode_path_10[4] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\Reg_Exchange_Inst.next_11[5] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\Output_Select_Inst.decode_path_10[5] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\Reg_Exchange_Inst.next_11[6] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\Output_Select_Inst.decode_path_11[5] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\Output_Select_Inst.decode_path_11[4] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\Output_Select_Inst.decode_path_00[5] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\Output_Select_Inst.decode_path_00[7] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\Output_Select_Inst.decode_path_01[1] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\Output_Select_Inst.decode_path_00[4] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\Output_Select_Inst.decode_path_00[6] ),
    .X(net60));
endmodule
