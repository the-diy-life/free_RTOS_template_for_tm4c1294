################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
main.obj: ../main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/my tasks" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source/portable/CCS/ARM_CM4F" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source/include" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source" --include_path="C:/ti/TivaWare_C_Series-2.1.4.178" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=ccs="ccs" --define=PART_TM4C1294NCPDT -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="main.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

tm4c1294ncpdt_startup_ccs.obj: ../tm4c1294ncpdt_startup_ccs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/my tasks" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source/portable/CCS/ARM_CM4F" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source/include" --include_path="C:/TM4C1294_Connected_LaunchPad_Workshop/workspace/test-rtos/source" --include_path="C:/ti/TivaWare_C_Series-2.1.4.178" --include_path="C:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.1.LTS/include" --define=ccs="ccs" --define=PART_TM4C1294NCPDT -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="tm4c1294ncpdt_startup_ccs.d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


