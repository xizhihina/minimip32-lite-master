vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clk_sync/clk_sync_clk_wiz.v" \
"../../../../MiniMIPS32_Lite_FullSyS.srcs/sources_1/ip/clk_sync/clk_sync.v" \

vlog -work xil_defaultlib \
"glbl.v"

