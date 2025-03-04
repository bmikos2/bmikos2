set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 [get_ports clk]

set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS25} [get_ports {sw_i[0]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS25} [get_ports {sw_i[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS25} [get_ports {sw_i[2]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS25} [get_ports {sw_i[3]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS25} [get_ports {sw_i[4]}]
set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS25} [get_ports {sw_i[5]}]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS25} [get_ports {sw_i[6]}]

set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS25} [get_ports {sw_i[7]}]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS25} [get_ports {sw_i[8]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS25} [get_ports {sw_i[9]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS25} [get_ports {sw_i[10]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS25} [get_ports {sw_i[11]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS25} [get_ports {sw_i[12]}]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS25} [get_ports {sw_i[13]}]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS25} [get_ports {sw_i[14]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS25} [get_ports {sw_i[15]}]

set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS25} [get_ports reset]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS25} [get_ports run_i]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS25} [get_ports continue_i]

set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS25} [get_ports {hex_grid_left[0]}]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS25} [get_ports {hex_grid_left[1]}]
set_property -dict {PACKAGE_PIN C3 IOSTANDARD LVCMOS25} [get_ports {hex_grid_left[2]}]
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS25} [get_ports {hex_grid_left[3]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[0]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[1]}]
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[2]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[3]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[4]}]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[5]}]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[6]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS25} [get_ports {hex_seg_left[7]}]

set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS25} [get_ports {hex_grid_right[0]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS25} [get_ports {hex_grid_right[1]}]
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS25} [get_ports {hex_grid_right[2]}]
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS25} [get_ports {hex_grid_right[3]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[0]}]
set_property -dict {PACKAGE_PIN G5 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[1]}]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[2]}]
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[3]}]
set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[4]}]
set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[5]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[6]}]
set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS25} [get_ports {hex_seg_right[7]}]


set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports {led_o[0]}]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports {led_o[1]}]
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports {led_o[2]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {led_o[3]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports {led_o[4]}]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {led_o[5]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {led_o[6]}]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports {led_o[7]}]

set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports {led_o[8]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {led_o[9]}]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {led_o[10]}]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {led_o[11]}]
set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports {led_o[12]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {led_o[13]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {led_o[14]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {led_o[15]}]

