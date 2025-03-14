set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR NO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]

# 19200 Hz external clock
create_clock -period 52083.000 -name clk -waveform {0.000 5.000} [get_ports clk]

# Instead of the 100 MHz on-board clock, the FPGA is clocked by an external 19200 Hz 
# signal on pin N11, provided by an external microcontroller. Attention: Not every
# pin can be used as a clock input, only the ones that are connected to the global
# clock network. The pinout is defined in the schematic.

set_property PACKAGE_PIN N11 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN P6 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# Project selection
set_property PACKAGE_PIN T9 [get_ports sel_rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports sel_rst_n]

set_property PACKAGE_PIN D4 [get_ports sel_inc]
set_property IOSTANDARD LVCMOS33 [get_ports sel_inc]

set_property PACKAGE_PIN R7 [get_ports sel_ena]
set_property IOSTANDARD LVCMOS33 [get_ports sel_ena]

set_property PACKAGE_PIN N9 [get_ports model_ena]
set_property IOSTANDARD LVCMOS33 [get_ports model_ena]

# Port A0 (Outputs)
set_property PACKAGE_PIN T8 [get_ports {port_a0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[0]}]

set_property PACKAGE_PIN T5 [get_ports {port_a0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[1]}]

set_property PACKAGE_PIN R8 [get_ports {port_a0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[2]}]

set_property PACKAGE_PIN L2 [get_ports {port_a0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[3]}]

set_property PACKAGE_PIN J1 [get_ports {port_a0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[4]}]

set_property PACKAGE_PIN H1 [get_ports {port_a0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[5]}]

set_property PACKAGE_PIN G1 [get_ports {port_a0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[6]}]

set_property PACKAGE_PIN K5 [get_ports {port_a0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a0[7]}]

# Port A1 (Inputs)
set_property PACKAGE_PIN T7 [get_ports {port_a1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[0]}]

set_property PACKAGE_PIN R5 [get_ports {port_a1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[1]}]

set_property PACKAGE_PIN P8 [get_ports {port_a1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[2]}]

set_property PACKAGE_PIN L3 [get_ports {port_a1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[3]}]

set_property PACKAGE_PIN K1 [get_ports {port_a1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[4]}]

set_property PACKAGE_PIN H2 [get_ports {port_a1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[5]}]

set_property PACKAGE_PIN G2 [get_ports {port_a1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[6]}]

set_property PACKAGE_PIN E6 [get_ports {port_a1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a1[7]}]

# Port A2 (bidirectional pins)
set_property PACKAGE_PIN T10 [get_ports {port_a2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[0]}]

set_property PACKAGE_PIN R6 [get_ports {port_a2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[1]}]

set_property PACKAGE_PIN P9 [get_ports {port_a2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[2]}]

set_property PACKAGE_PIN K2 [get_ports {port_a2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[3]}]

set_property PACKAGE_PIN J4 [get_ports {port_a2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[4]}]

set_property PACKAGE_PIN H3 [get_ports {port_a2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[5]}]

set_property PACKAGE_PIN H4 [get_ports {port_a2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[6]}]

set_property PACKAGE_PIN N6 [get_ports {port_a2[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {port_a2[7]}]

# Serial names are flipped in the schematic (named for the FTDI chip)
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]

set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]