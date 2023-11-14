vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv "+incdir+../../../ipstatic" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clk_sync/clk_sync_clk_wiz.v" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clk_sync/clk_sync.v" \

vlog -work xil_defaultlib \
"glbl.v"

