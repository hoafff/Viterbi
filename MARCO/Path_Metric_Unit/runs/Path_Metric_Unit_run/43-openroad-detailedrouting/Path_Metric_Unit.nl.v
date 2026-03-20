module Path_Metric_Unit (clk,
    clr_me,
    rst_n,
    servivor_select_00,
    servivor_select_01,
    servivor_select_10,
    servivor_select_11,
    bm_00_00,
    bm_00_10,
    bm_01_00,
    bm_01_10,
    bm_10_01,
    bm_10_11,
    bm_11_01,
    bm_11_11,
    current_metric_00,
    current_metric_01,
    current_metric_10,
    current_metric_11);
 input clk;
 input clr_me;
 input rst_n;
 output servivor_select_00;
 output servivor_select_01;
 output servivor_select_10;
 output servivor_select_11;
 input [1:0] bm_00_00;
 input [1:0] bm_00_10;
 input [1:0] bm_01_00;
 input [1:0] bm_01_10;
 input [1:0] bm_10_01;
 input [1:0] bm_10_11;
 input [1:0] bm_11_01;
 input [1:0] bm_11_11;
 output [3:0] current_metric_00;
 output [3:0] current_metric_01;
 output [3:0] current_metric_10;
 output [3:0] current_metric_11;

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
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
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
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_2 _142_ (.A(net17),
    .Y(_097_));
 sky130_fd_sc_hd__and2_1 _143_ (.A(net28),
    .B(net12),
    .X(_098_));
 sky130_fd_sc_hd__xor2_1 _144_ (.A(net28),
    .B(net12),
    .X(_099_));
 sky130_fd_sc_hd__and2_1 _145_ (.A(net27),
    .B(net11),
    .X(_100_));
 sky130_fd_sc_hd__nand2_1 _146_ (.A(net27),
    .B(net11),
    .Y(_101_));
 sky130_fd_sc_hd__a21o_1 _147_ (.A1(_099_),
    .A2(_100_),
    .B1(_098_),
    .X(_102_));
 sky130_fd_sc_hd__and3_1 _148_ (.A(net30),
    .B(net29),
    .C(_102_),
    .X(_103_));
 sky130_fd_sc_hd__a21oi_2 _149_ (.A1(net29),
    .A2(_102_),
    .B1(net30),
    .Y(_104_));
 sky130_fd_sc_hd__nor2_1 _150_ (.A(_103_),
    .B(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__and2_1 _151_ (.A(net32),
    .B(net16),
    .X(_106_));
 sky130_fd_sc_hd__nand2_1 _152_ (.A(net31),
    .B(net15),
    .Y(_107_));
 sky130_fd_sc_hd__xor2_2 _153_ (.A(net32),
    .B(net16),
    .X(_108_));
 sky130_fd_sc_hd__a31o_1 _154_ (.A1(net31),
    .A2(net15),
    .A3(_108_),
    .B1(_106_),
    .X(_109_));
 sky130_fd_sc_hd__and3b_1 _155_ (.A_N(net34),
    .B(_109_),
    .C(net33),
    .X(_110_));
 sky130_fd_sc_hd__a21boi_2 _156_ (.A1(net33),
    .A2(_109_),
    .B1_N(net34),
    .Y(_111_));
 sky130_fd_sc_hd__o22ai_4 _157_ (.A1(_103_),
    .A2(_104_),
    .B1(_110_),
    .B2(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__nor4_1 _158_ (.A(_103_),
    .B(_104_),
    .C(_110_),
    .D(_111_),
    .Y(_113_));
 sky130_fd_sc_hd__xor2_2 _159_ (.A(net33),
    .B(_109_),
    .X(_114_));
 sky130_fd_sc_hd__xnor2_2 _160_ (.A(net29),
    .B(_102_),
    .Y(_115_));
 sky130_fd_sc_hd__inv_2 _161_ (.A(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__nand2_2 _162_ (.A(_114_),
    .B(_115_),
    .Y(_117_));
 sky130_fd_sc_hd__xnor2_2 _163_ (.A(_107_),
    .B(_108_),
    .Y(_118_));
 sky130_fd_sc_hd__xor2_1 _164_ (.A(net31),
    .B(net15),
    .X(_119_));
 sky130_fd_sc_hd__or2_1 _165_ (.A(net27),
    .B(net11),
    .X(_120_));
 sky130_fd_sc_hd__and2_1 _166_ (.A(_101_),
    .B(_120_),
    .X(_121_));
 sky130_fd_sc_hd__or3b_2 _167_ (.A(_100_),
    .B(_119_),
    .C_N(_120_),
    .X(_122_));
 sky130_fd_sc_hd__xnor2_1 _168_ (.A(_099_),
    .B(_101_),
    .Y(_123_));
 sky130_fd_sc_hd__a21bo_1 _169_ (.A1(_118_),
    .A2(_122_),
    .B1_N(_123_),
    .X(_124_));
 sky130_fd_sc_hd__o221ai_4 _170_ (.A1(_114_),
    .A2(_115_),
    .B1(_118_),
    .B2(_122_),
    .C1(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__a31oi_4 _171_ (.A1(_112_),
    .A2(_117_),
    .A3(_125_),
    .B1(net41),
    .Y(_126_));
 sky130_fd_sc_hd__inv_2 _172_ (.A(_126_),
    .Y(net38));
 sky130_fd_sc_hd__and2_1 _173_ (.A(net20),
    .B(net4),
    .X(_127_));
 sky130_fd_sc_hd__nand2_1 _174_ (.A(net19),
    .B(net3),
    .Y(_128_));
 sky130_fd_sc_hd__xor2_1 _175_ (.A(net20),
    .B(net4),
    .X(_129_));
 sky130_fd_sc_hd__a31o_1 _176_ (.A1(net19),
    .A2(net3),
    .A3(_129_),
    .B1(_127_),
    .X(_130_));
 sky130_fd_sc_hd__and3b_1 _177_ (.A_N(net22),
    .B(_130_),
    .C(net21),
    .X(_131_));
 sky130_fd_sc_hd__a21boi_2 _178_ (.A1(net21),
    .A2(_130_),
    .B1_N(net22),
    .Y(_132_));
 sky130_fd_sc_hd__nand2_1 _179_ (.A(net24),
    .B(net8),
    .Y(_133_));
 sky130_fd_sc_hd__xnor2_2 _180_ (.A(net24),
    .B(net8),
    .Y(_134_));
 sky130_fd_sc_hd__nand2_1 _181_ (.A(net23),
    .B(net7),
    .Y(_135_));
 sky130_fd_sc_hd__o21ai_2 _182_ (.A1(_134_),
    .A2(_135_),
    .B1(_133_),
    .Y(_136_));
 sky130_fd_sc_hd__and3_1 _183_ (.A(net25),
    .B(net26),
    .C(_136_),
    .X(_137_));
 sky130_fd_sc_hd__a21oi_2 _184_ (.A1(net25),
    .A2(_136_),
    .B1(net26),
    .Y(_138_));
 sky130_fd_sc_hd__nor2_1 _185_ (.A(_137_),
    .B(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__o22ai_4 _186_ (.A1(_131_),
    .A2(_132_),
    .B1(_137_),
    .B2(_138_),
    .Y(_140_));
 sky130_fd_sc_hd__nor4_1 _187_ (.A(_131_),
    .B(_132_),
    .C(_137_),
    .D(_138_),
    .Y(_141_));
 sky130_fd_sc_hd__xor2_2 _188_ (.A(net21),
    .B(_130_),
    .X(_016_));
 sky130_fd_sc_hd__xnor2_2 _189_ (.A(net25),
    .B(_136_),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _190_ (.A(_017_),
    .Y(_018_));
 sky130_fd_sc_hd__nand2_2 _191_ (.A(_016_),
    .B(_017_),
    .Y(_019_));
 sky130_fd_sc_hd__xnor2_2 _192_ (.A(_134_),
    .B(_135_),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _193_ (.A(_020_),
    .Y(_021_));
 sky130_fd_sc_hd__xor2_1 _194_ (.A(net19),
    .B(net3),
    .X(_022_));
 sky130_fd_sc_hd__xor2_1 _195_ (.A(net23),
    .B(net7),
    .X(_023_));
 sky130_fd_sc_hd__and2b_1 _196_ (.A_N(_023_),
    .B(_022_),
    .X(_024_));
 sky130_fd_sc_hd__xnor2_1 _197_ (.A(_128_),
    .B(_129_),
    .Y(_025_));
 sky130_fd_sc_hd__a21o_1 _198_ (.A1(_020_),
    .A2(_024_),
    .B1(_025_),
    .X(_026_));
 sky130_fd_sc_hd__o221ai_4 _199_ (.A1(_016_),
    .A2(_017_),
    .B1(_020_),
    .B2(_024_),
    .C1(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__a31oi_4 _200_ (.A1(_140_),
    .A2(_019_),
    .A3(_027_),
    .B1(net40),
    .Y(net37));
 sky130_fd_sc_hd__and2_1 _201_ (.A(net28),
    .B(net10),
    .X(_028_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(net27),
    .B(net9),
    .Y(_029_));
 sky130_fd_sc_hd__xor2_1 _203_ (.A(net28),
    .B(net10),
    .X(_030_));
 sky130_fd_sc_hd__a31o_1 _204_ (.A1(net27),
    .A2(net9),
    .A3(_030_),
    .B1(_028_),
    .X(_031_));
 sky130_fd_sc_hd__and3_1 _205_ (.A(net30),
    .B(net29),
    .C(_031_),
    .X(_032_));
 sky130_fd_sc_hd__a21oi_1 _206_ (.A1(net29),
    .A2(_031_),
    .B1(net30),
    .Y(_033_));
 sky130_fd_sc_hd__nor2_1 _207_ (.A(_032_),
    .B(_033_),
    .Y(_034_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(net32),
    .B(net14),
    .Y(_035_));
 sky130_fd_sc_hd__nand2_1 _209_ (.A(net31),
    .B(net13),
    .Y(_036_));
 sky130_fd_sc_hd__xnor2_2 _210_ (.A(net32),
    .B(net14),
    .Y(_037_));
 sky130_fd_sc_hd__o21ai_1 _211_ (.A1(_036_),
    .A2(_037_),
    .B1(_035_),
    .Y(_038_));
 sky130_fd_sc_hd__and3b_1 _212_ (.A_N(net34),
    .B(_038_),
    .C(net33),
    .X(_039_));
 sky130_fd_sc_hd__a21boi_1 _213_ (.A1(net33),
    .A2(_038_),
    .B1_N(net34),
    .Y(_040_));
 sky130_fd_sc_hd__or4_2 _214_ (.A(_032_),
    .B(_033_),
    .C(_039_),
    .D(_040_),
    .X(_041_));
 sky130_fd_sc_hd__o22a_2 _215_ (.A1(_032_),
    .A2(_033_),
    .B1(_039_),
    .B2(_040_),
    .X(_042_));
 sky130_fd_sc_hd__xnor2_1 _216_ (.A(net29),
    .B(_031_),
    .Y(_043_));
 sky130_fd_sc_hd__inv_2 _217_ (.A(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__xor2_1 _218_ (.A(net33),
    .B(_038_),
    .X(_045_));
 sky130_fd_sc_hd__xor2_1 _219_ (.A(_036_),
    .B(_037_),
    .X(_046_));
 sky130_fd_sc_hd__xnor2_1 _220_ (.A(_036_),
    .B(_037_),
    .Y(_047_));
 sky130_fd_sc_hd__xor2_1 _221_ (.A(net31),
    .B(net13),
    .X(_048_));
 sky130_fd_sc_hd__xor2_1 _222_ (.A(net27),
    .B(net9),
    .X(_049_));
 sky130_fd_sc_hd__and2b_1 _223_ (.A_N(_048_),
    .B(_049_),
    .X(_050_));
 sky130_fd_sc_hd__xnor2_1 _224_ (.A(_029_),
    .B(_030_),
    .Y(_051_));
 sky130_fd_sc_hd__o21ai_1 _225_ (.A1(_047_),
    .A2(_050_),
    .B1(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _226_ (.A(_047_),
    .B(_050_),
    .Y(_053_));
 sky130_fd_sc_hd__a22o_1 _227_ (.A1(_043_),
    .A2(_045_),
    .B1(_052_),
    .B2(_053_),
    .X(_054_));
 sky130_fd_sc_hd__or2_2 _228_ (.A(_043_),
    .B(_045_),
    .X(_055_));
 sky130_fd_sc_hd__a31oi_4 _229_ (.A1(_041_),
    .A2(_054_),
    .A3(_055_),
    .B1(_042_),
    .Y(net36));
 sky130_fd_sc_hd__and2_1 _230_ (.A(net20),
    .B(net2),
    .X(_056_));
 sky130_fd_sc_hd__xor2_1 _231_ (.A(net20),
    .B(net2),
    .X(_057_));
 sky130_fd_sc_hd__and2_1 _232_ (.A(net19),
    .B(net1),
    .X(_058_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(net19),
    .B(net1),
    .Y(_059_));
 sky130_fd_sc_hd__a21o_1 _234_ (.A1(_057_),
    .A2(_058_),
    .B1(_056_),
    .X(_060_));
 sky130_fd_sc_hd__and3_1 _235_ (.A(net21),
    .B(net22),
    .C(_060_),
    .X(_061_));
 sky130_fd_sc_hd__a21oi_2 _236_ (.A1(net21),
    .A2(_060_),
    .B1(net22),
    .Y(_062_));
 sky130_fd_sc_hd__nor2_1 _237_ (.A(_061_),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__and2_1 _238_ (.A(net24),
    .B(net6),
    .X(_064_));
 sky130_fd_sc_hd__nand2_1 _239_ (.A(net23),
    .B(net5),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_2 _240_ (.A(net24),
    .B(net6),
    .X(_066_));
 sky130_fd_sc_hd__a31o_1 _241_ (.A1(net23),
    .A2(net5),
    .A3(_066_),
    .B1(_064_),
    .X(_067_));
 sky130_fd_sc_hd__and3b_1 _242_ (.A_N(net26),
    .B(_067_),
    .C(net25),
    .X(_068_));
 sky130_fd_sc_hd__a21boi_2 _243_ (.A1(net25),
    .A2(_067_),
    .B1_N(net26),
    .Y(_069_));
 sky130_fd_sc_hd__o22ai_4 _244_ (.A1(_061_),
    .A2(_062_),
    .B1(_068_),
    .B2(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__nor4_1 _245_ (.A(_061_),
    .B(_062_),
    .C(_068_),
    .D(_069_),
    .Y(_071_));
 sky130_fd_sc_hd__xor2_2 _246_ (.A(net25),
    .B(_067_),
    .X(_072_));
 sky130_fd_sc_hd__xnor2_2 _247_ (.A(net21),
    .B(_060_),
    .Y(_073_));
 sky130_fd_sc_hd__inv_2 _248_ (.A(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_2 _249_ (.A(_072_),
    .B(_073_),
    .Y(_075_));
 sky130_fd_sc_hd__xnor2_2 _250_ (.A(_065_),
    .B(_066_),
    .Y(_076_));
 sky130_fd_sc_hd__xor2_1 _251_ (.A(net23),
    .B(net5),
    .X(_077_));
 sky130_fd_sc_hd__or2_1 _252_ (.A(net19),
    .B(net1),
    .X(_078_));
 sky130_fd_sc_hd__and2_1 _253_ (.A(_059_),
    .B(_078_),
    .X(_079_));
 sky130_fd_sc_hd__or3b_2 _254_ (.A(_058_),
    .B(_077_),
    .C_N(_078_),
    .X(_080_));
 sky130_fd_sc_hd__xnor2_1 _255_ (.A(_057_),
    .B(_059_),
    .Y(_081_));
 sky130_fd_sc_hd__a21bo_1 _256_ (.A1(_076_),
    .A2(_080_),
    .B1_N(_081_),
    .X(_082_));
 sky130_fd_sc_hd__o221ai_4 _257_ (.A1(_072_),
    .A2(_073_),
    .B1(_076_),
    .B2(_080_),
    .C1(_082_),
    .Y(_083_));
 sky130_fd_sc_hd__a31oi_4 _258_ (.A1(_070_),
    .A2(_075_),
    .A3(_083_),
    .B1(net39),
    .Y(_084_));
 sky130_fd_sc_hd__inv_2 _259_ (.A(_084_),
    .Y(net35));
 sky130_fd_sc_hd__a311o_1 _260_ (.A1(_070_),
    .A2(_075_),
    .A3(_083_),
    .B1(_079_),
    .C1(_071_),
    .X(_085_));
 sky130_fd_sc_hd__o211a_1 _261_ (.A1(_077_),
    .A2(_084_),
    .B1(_085_),
    .C1(net42),
    .X(_000_));
 sky130_fd_sc_hd__a311o_1 _262_ (.A1(_070_),
    .A2(_075_),
    .A3(_083_),
    .B1(_081_),
    .C1(_071_),
    .X(_086_));
 sky130_fd_sc_hd__o211a_1 _263_ (.A1(_076_),
    .A2(_084_),
    .B1(_086_),
    .C1(net42),
    .X(_001_));
 sky130_fd_sc_hd__a311o_1 _264_ (.A1(_070_),
    .A2(_075_),
    .A3(_083_),
    .B1(_071_),
    .C1(_074_),
    .X(_087_));
 sky130_fd_sc_hd__o211a_1 _265_ (.A1(_072_),
    .A2(_084_),
    .B1(_087_),
    .C1(net42),
    .X(_002_));
 sky130_fd_sc_hd__o211a_1 _266_ (.A1(_068_),
    .A2(_069_),
    .B1(net42),
    .C1(_063_),
    .X(_003_));
 sky130_fd_sc_hd__a311o_1 _267_ (.A1(_041_),
    .A2(_054_),
    .A3(_055_),
    .B1(_042_),
    .C1(_048_),
    .X(_088_));
 sky130_fd_sc_hd__o211a_1 _268_ (.A1(_049_),
    .A2(net36),
    .B1(_088_),
    .C1(net42),
    .X(_004_));
 sky130_fd_sc_hd__a311o_1 _269_ (.A1(_041_),
    .A2(_054_),
    .A3(_055_),
    .B1(_042_),
    .C1(_046_),
    .X(_089_));
 sky130_fd_sc_hd__o211a_1 _270_ (.A1(_051_),
    .A2(net36),
    .B1(_089_),
    .C1(net43),
    .X(_005_));
 sky130_fd_sc_hd__a311o_1 _271_ (.A1(_041_),
    .A2(_054_),
    .A3(_055_),
    .B1(_042_),
    .C1(_045_),
    .X(_090_));
 sky130_fd_sc_hd__o211a_1 _272_ (.A1(_044_),
    .A2(net36),
    .B1(_090_),
    .C1(net43),
    .X(_006_));
 sky130_fd_sc_hd__o211a_1 _273_ (.A1(_039_),
    .A2(_040_),
    .B1(net42),
    .C1(_034_),
    .X(_007_));
 sky130_fd_sc_hd__a311o_1 _274_ (.A1(_140_),
    .A2(_019_),
    .A3(_027_),
    .B1(_023_),
    .C1(_141_),
    .X(_091_));
 sky130_fd_sc_hd__o211a_1 _275_ (.A1(_022_),
    .A2(net37),
    .B1(_091_),
    .C1(net42),
    .X(_008_));
 sky130_fd_sc_hd__a311o_1 _276_ (.A1(_140_),
    .A2(_019_),
    .A3(_027_),
    .B1(_021_),
    .C1(_141_),
    .X(_092_));
 sky130_fd_sc_hd__o211a_1 _277_ (.A1(_025_),
    .A2(net37),
    .B1(_092_),
    .C1(net42),
    .X(_009_));
 sky130_fd_sc_hd__a311o_1 _278_ (.A1(_140_),
    .A2(_019_),
    .A3(_027_),
    .B1(_141_),
    .C1(_018_),
    .X(_093_));
 sky130_fd_sc_hd__o211a_1 _279_ (.A1(_016_),
    .A2(net37),
    .B1(_093_),
    .C1(net42),
    .X(_010_));
 sky130_fd_sc_hd__o211a_1 _280_ (.A1(_131_),
    .A2(_132_),
    .B1(_139_),
    .C1(net42),
    .X(_011_));
 sky130_fd_sc_hd__a311o_1 _281_ (.A1(_112_),
    .A2(_117_),
    .A3(_125_),
    .B1(_121_),
    .C1(_113_),
    .X(_094_));
 sky130_fd_sc_hd__o211a_1 _282_ (.A1(_119_),
    .A2(_126_),
    .B1(_094_),
    .C1(net43),
    .X(_012_));
 sky130_fd_sc_hd__a311o_1 _283_ (.A1(_112_),
    .A2(_117_),
    .A3(_125_),
    .B1(_123_),
    .C1(_113_),
    .X(_095_));
 sky130_fd_sc_hd__o211a_1 _284_ (.A1(_118_),
    .A2(_126_),
    .B1(_095_),
    .C1(net43),
    .X(_013_));
 sky130_fd_sc_hd__a311o_1 _285_ (.A1(_112_),
    .A2(_117_),
    .A3(_125_),
    .B1(_113_),
    .C1(_116_),
    .X(_096_));
 sky130_fd_sc_hd__o211a_1 _286_ (.A1(_114_),
    .A2(_126_),
    .B1(_096_),
    .C1(net43),
    .X(_014_));
 sky130_fd_sc_hd__o211a_1 _287_ (.A1(_110_),
    .A2(_111_),
    .B1(net43),
    .C1(_105_),
    .X(_015_));
 sky130_fd_sc_hd__dfrtp_4 _288_ (.CLK(clknet_1_0__leaf_clk),
    .D(_004_),
    .RESET_B(net44),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_4 _289_ (.CLK(clknet_1_0__leaf_clk),
    .D(_005_),
    .RESET_B(net44),
    .Q(net24));
 sky130_fd_sc_hd__dfrtp_4 _290_ (.CLK(clknet_1_1__leaf_clk),
    .D(_006_),
    .RESET_B(net44),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _291_ (.CLK(clknet_1_1__leaf_clk),
    .D(_007_),
    .RESET_B(net45),
    .Q(net26));
 sky130_fd_sc_hd__dfrtp_4 _292_ (.CLK(clknet_1_1__leaf_clk),
    .D(_008_),
    .RESET_B(net45),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_2 _293_ (.CLK(clknet_1_0__leaf_clk),
    .D(_009_),
    .RESET_B(net44),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_4 _294_ (.CLK(clknet_1_0__leaf_clk),
    .D(_010_),
    .RESET_B(net44),
    .Q(net29));
 sky130_fd_sc_hd__dfrtp_2 _295_ (.CLK(clknet_1_0__leaf_clk),
    .D(_011_),
    .RESET_B(net44),
    .Q(net30));
 sky130_fd_sc_hd__dfrtp_2 _296_ (.CLK(clknet_1_0__leaf_clk),
    .D(_000_),
    .RESET_B(net44),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_2 _297_ (.CLK(clknet_1_0__leaf_clk),
    .D(_001_),
    .RESET_B(net44),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_4 _298_ (.CLK(clknet_1_0__leaf_clk),
    .D(_002_),
    .RESET_B(net44),
    .Q(net21));
 sky130_fd_sc_hd__dfrtp_1 _299_ (.CLK(clknet_1_0__leaf_clk),
    .D(_003_),
    .RESET_B(net44),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_4 _300_ (.CLK(clknet_1_1__leaf_clk),
    .D(_012_),
    .RESET_B(net45),
    .Q(net31));
 sky130_fd_sc_hd__dfrtp_4 _301_ (.CLK(clknet_1_1__leaf_clk),
    .D(_013_),
    .RESET_B(net45),
    .Q(net32));
 sky130_fd_sc_hd__dfrtp_4 _302_ (.CLK(clknet_1_1__leaf_clk),
    .D(_014_),
    .RESET_B(net45),
    .Q(net33));
 sky130_fd_sc_hd__dfrtp_2 _303_ (.CLK(clknet_1_1__leaf_clk),
    .D(_015_),
    .RESET_B(net45),
    .Q(net34));
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
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_145 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(bm_00_00[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(bm_00_00[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(bm_00_10[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(bm_00_10[1]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(bm_01_00[0]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(bm_01_00[1]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(bm_01_10[0]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(bm_01_10[1]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(bm_10_01[0]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(bm_10_01[1]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(bm_10_11[0]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(bm_10_11[1]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(bm_11_01[0]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(bm_11_01[1]),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(bm_11_11[0]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(bm_11_11[1]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(clr_me),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(rst_n),
    .X(net18));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(current_metric_00[0]));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(current_metric_00[1]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(current_metric_00[2]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(current_metric_00[3]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(current_metric_01[0]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(current_metric_01[1]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(current_metric_01[2]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(current_metric_01[3]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(current_metric_10[0]));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(current_metric_10[1]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(current_metric_10[2]));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(current_metric_10[3]));
 sky130_fd_sc_hd__buf_2 output31 (.A(net31),
    .X(current_metric_11[0]));
 sky130_fd_sc_hd__buf_2 output32 (.A(net32),
    .X(current_metric_11[1]));
 sky130_fd_sc_hd__buf_2 output33 (.A(net33),
    .X(current_metric_11[2]));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(current_metric_11[3]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(servivor_select_00));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(servivor_select_01));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(servivor_select_10));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(servivor_select_11));
 sky130_fd_sc_hd__buf_1 max_cap39 (.A(_071_),
    .X(net39));
 sky130_fd_sc_hd__buf_1 max_cap40 (.A(_141_),
    .X(net40));
 sky130_fd_sc_hd__buf_1 max_cap41 (.A(_113_),
    .X(net41));
 sky130_fd_sc_hd__buf_2 fanout42 (.A(_097_),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_2 fanout43 (.A(_097_),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_4 fanout44 (.A(net45),
    .X(net44));
 sky130_fd_sc_hd__buf_2 fanout45 (.A(net18),
    .X(net45));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload0 (.A(clknet_1_1__leaf_clk));
endmodule
