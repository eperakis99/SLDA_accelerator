# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/manolis/workspace/SLDA_final_v2/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/manolis/workspace/SLDA_final_v2/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {SLDA_final_v2}\
-hw {/home/manolis/Vivado_Projects/SLDA_final_v2/design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -no-boot-bsp -fsbl-target {psu_cortexa53_0} -out {/home/manolis/workspace}

platform write
platform generate -domains 
platform active {SLDA_final_v2}
bsp reload
bsp reload
platform clean
platform generate
platform active {SLDA_final_v2}
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp reload
platform active {SLDA_final_v2}
