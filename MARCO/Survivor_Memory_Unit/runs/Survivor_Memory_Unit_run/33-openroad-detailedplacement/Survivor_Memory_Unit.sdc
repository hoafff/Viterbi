###############################################################################
# Created by write_sdc
###############################################################################
current_design Survivor_Memory_Unit
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {survivor_select_00}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {survivor_select_01}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {survivor_select_10}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {survivor_select_11}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {winner_state[0]}]
set_input_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {winner_state[1]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[0]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[1]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[2]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[3]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[4]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[5]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[6]}]
set_output_delay 20.0000 -clock [get_clocks {clk}] -add_delay [get_ports {decoded_out[7]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {decoded_out[7]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[6]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[5]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[4]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[3]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[2]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[1]}]
set_load -pin_load 0.0334 [get_ports {decoded_out[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {survivor_select_00}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {survivor_select_01}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {survivor_select_10}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {survivor_select_11}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {winner_state[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {winner_state[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
