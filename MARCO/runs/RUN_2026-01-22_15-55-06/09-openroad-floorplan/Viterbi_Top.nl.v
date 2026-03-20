module Viterbi_Top (clk,
    frame_done,
    rst_n,
    start,
    decoded_out,
    received);
 input clk;
 output frame_done;
 input rst_n;
 input start;
 output [7:0] decoded_out;
 input [1:0] received;

 wire \bm_00_00[0] ;
 wire \bm_00_00[1] ;
 wire \bm_00_10[0] ;
 wire \bm_00_10[1] ;
 wire \bm_01_00[0] ;
 wire \bm_01_00[1] ;
 wire \bm_01_10[0] ;
 wire \bm_01_10[1] ;
 wire \bm_10_01[0] ;
 wire \bm_10_01[1] ;
 wire \bm_10_11[0] ;
 wire \bm_10_11[1] ;
 wire \bm_11_01[0] ;
 wire \bm_11_01[1] ;
 wire \bm_11_11[0] ;
 wire \bm_11_11[1] ;
 wire clr_me;
 wire \pm_00[0] ;
 wire \pm_00[1] ;
 wire \pm_00[2] ;
 wire \pm_00[3] ;
 wire \pm_01[0] ;
 wire \pm_01[1] ;
 wire \pm_01[2] ;
 wire \pm_01[3] ;
 wire \pm_10[0] ;
 wire \pm_10[1] ;
 wire \pm_10[2] ;
 wire \pm_10[3] ;
 wire \pm_11[0] ;
 wire \pm_11[1] ;
 wire \pm_11[2] ;
 wire \pm_11[3] ;
 wire servivor_select_00;
 wire servivor_select_01;
 wire servivor_select_10;
 wire servivor_select_11;
 wire \winner_state[0] ;
 wire \winner_state[1] ;

 Branch_Metrics BMU (.bm_00_00({\bm_00_00[1] ,
    \bm_00_00[0] }),
    .bm_00_10({\bm_00_10[1] ,
    \bm_00_10[0] }),
    .bm_01_00({\bm_01_00[1] ,
    \bm_01_00[0] }),
    .bm_01_10({\bm_01_10[1] ,
    \bm_01_10[0] }),
    .bm_10_01({\bm_10_01[1] ,
    \bm_10_01[0] }),
    .bm_10_11({\bm_10_11[1] ,
    \bm_10_11[0] }),
    .bm_11_01({\bm_11_01[1] ,
    \bm_11_01[0] }),
    .bm_11_11({\bm_11_11[1] ,
    \bm_11_11[0] }),
    .received({received[1],
    received[0]}));
 Controller CTRL (.clk(clk),
    .clr_me(clr_me),
    .frame_done(frame_done),
    .rst_n(rst_n),
    .start(start));
 Maximum_Path_Memory MPM (.prev_00({\pm_00[3] ,
    \pm_00[2] ,
    \pm_00[1] ,
    \pm_00[0] }),
    .prev_01({\pm_01[3] ,
    \pm_01[2] ,
    \pm_01[1] ,
    \pm_01[0] }),
    .prev_10({\pm_10[3] ,
    \pm_10[2] ,
    \pm_10[1] ,
    \pm_10[0] }),
    .prev_11({\pm_11[3] ,
    \pm_11[2] ,
    \pm_11[1] ,
    \pm_11[0] }),
    .winner_state({\winner_state[1] ,
    \winner_state[0] }));
 Path_Metric_Unit PMU_Top (.clk(clk),
    .clr_me(clr_me),
    .rst_n(rst_n),
    .servivor_select_00(servivor_select_00),
    .servivor_select_01(servivor_select_01),
    .servivor_select_10(servivor_select_10),
    .servivor_select_11(servivor_select_11),
    .bm_00_00({\bm_00_00[1] ,
    \bm_00_00[0] }),
    .bm_00_10({\bm_00_10[1] ,
    \bm_00_10[0] }),
    .bm_01_00({\bm_01_00[1] ,
    \bm_01_00[0] }),
    .bm_01_10({\bm_01_10[1] ,
    \bm_01_10[0] }),
    .bm_10_01({\bm_10_01[1] ,
    \bm_10_01[0] }),
    .bm_10_11({\bm_10_11[1] ,
    \bm_10_11[0] }),
    .bm_11_01({\bm_11_01[1] ,
    \bm_11_01[0] }),
    .bm_11_11({\bm_11_11[1] ,
    \bm_11_11[0] }),
    .current_metric_00({\pm_00[3] ,
    \pm_00[2] ,
    \pm_00[1] ,
    \pm_00[0] }),
    .current_metric_01({\pm_01[3] ,
    \pm_01[2] ,
    \pm_01[1] ,
    \pm_01[0] }),
    .current_metric_10({\pm_10[3] ,
    \pm_10[2] ,
    \pm_10[1] ,
    \pm_10[0] }),
    .current_metric_11({\pm_11[3] ,
    \pm_11[2] ,
    \pm_11[1] ,
    \pm_11[0] }));
 Survivor_Memory_Unit SMU_Top (.clk(clk),
    .rst_n(rst_n),
    .survivor_select_00(servivor_select_00),
    .survivor_select_01(servivor_select_01),
    .survivor_select_10(servivor_select_10),
    .survivor_select_11(servivor_select_11),
    .decoded_out({decoded_out[7],
    decoded_out[6],
    decoded_out[5],
    decoded_out[4],
    decoded_out[3],
    decoded_out[2],
    decoded_out[1],
    decoded_out[0]}),
    .winner_state({\winner_state[1] ,
    \winner_state[0] }));
endmodule
