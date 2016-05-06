# Copyright 2012 The MathWorks, Inc.
# Autogenerated on: 06-May-2016 10:44:23
# Model: PORCOILCLERO
# MyTemplate
# File name: porcoilclero.mk
# Template: gmake 
# Template Version: 1.0 
# Tool Chain Configuration: Arduinodue
# Tool Chain Configuration Version: 1.0

ifeq (windows,$(HOST_PLATFORM))
SHELL=%SystemRoot%/System32/cmd.exe 
endif

THIS_MAKEFILE := $(lastword $(MAKEFILE_LIST))
EMPTY :=
SPACE := $(EMPTY) $(EMPTY)

MODEL_NAME := porcoilclero
HOST_PLATFORM := windows
BUILD_CFG := MW
TARGET_EXT := .elf
TARGET_HEX_EXT := .hex
TARGET_BIN_EXT := .bin
OBJ_EXT := .o
TOOL_CHAIN_CFG := Arduinodue
FORMAT_PATH = $(if $(filter \\\\%,$(1)),"$(1)",$(subst $(SPACE),\$(SPACE),$(subst \,/,$(1))))

MATLAB_ROOT_RELATIVE := D:\Matlab\#MATLAB_ROOT_RELATIVE_END
MATLAB_ROOT_ABSOLUTE := D:\Matlab\#MATLAB_ROOT_ABSOLUTE_END
SOURCE_PATH := $(call FORMAT_PATH,.\)

ifneq (.a,$(strip $(TARGET_EXT)))
OUTPUT_PATH := $(call FORMAT_PATH,$(SOURCE_PATH)$(BUILD_CFG)/)
else
OUTPUT_PATH := $(call FORMAT_PATH,$(SOURCE_PATH)/)
endif

DERIVED_PATH := $(call FORMAT_PATH,$(SOURCE_PATH))
TARGET_NAME_PREFIX := 
TARGET_NAME_POSTFIX := 
TARGET_FILE_NO_EXT := $(TARGET_NAME_PREFIX)$(MODEL_NAME)$(TARGET_NAME_POSTFIX)
TARGET_FILE := $(TARGET_FILE_NO_EXT)$(TARGET_EXT)

PRODUCT_FILE := $(TARGET_FILE_NO_EXT)$(TARGET_BIN_EXT)
TARGET := $(OUTPUT_PATH)$(TARGET_FILE)
TARGET_HEX := $(TARGET_FILE_NO_EXT)$(TARGET_HEX_EXT)
PRODUCT := $(OUTPUT_PATH)$(PRODUCT_FILE)

#Code Generation Files

ifneq (.a,$(strip $(TARGET_EXT)))
SOURCE_FILES := $(call FORMAT_PATH,.\SerialTx_wrapper.c) $(call FORMAT_PATH,.\data_struct_init_wrapper.c) $(call FORMAT_PATH,.\sfcn_encoder_wrapper.c) $(call FORMAT_PATH,.\sfcn_motor_new_wrapper.c) $(call FORMAT_PATH,.\signals_wrapper.c) $(call FORMAT_PATH,.\IPAddress.cpp) $(call FORMAT_PATH,.\Print.cpp) $(call FORMAT_PATH,.\Reset.cpp) $(call FORMAT_PATH,.\RingBuffer.cpp) $(call FORMAT_PATH,.\Stream.cpp) $(call FORMAT_PATH,.\UARTClass.cpp) $(call FORMAT_PATH,.\USARTClass.cpp) $(call FORMAT_PATH,.\CDC.cpp) $(call FORMAT_PATH,.\HID.cpp) $(call FORMAT_PATH,.\USBCore.cpp) $(call FORMAT_PATH,.\WInterrupts.c) $(call FORMAT_PATH,.\WMath.cpp) $(call FORMAT_PATH,.\WString.cpp) $(call FORMAT_PATH,.\cortex_handlers.c) $(call FORMAT_PATH,.\cxxabi-compat.cpp) $(call FORMAT_PATH,.\hooks.c) $(call FORMAT_PATH,.\iar_calls_sam3.c) $(call FORMAT_PATH,.\itoa.c) $(call FORMAT_PATH,.\syscalls_sam3.c) $(call FORMAT_PATH,.\wiring.c) $(call FORMAT_PATH,.\wiring_analog.c) $(call FORMAT_PATH,.\wiring_digital.c) $(call FORMAT_PATH,.\wiring_pulse.cpp) $(call FORMAT_PATH,.\wiring_shift.c) $(call FORMAT_PATH,.\variant.cpp) $(call FORMAT_PATH,.\io_wrappers.cpp) $(call FORMAT_PATH,.\TimerTickScheduler.c) $(call FORMAT_PATH,.\arm_cortex_m_multitasking.c) $(call FORMAT_PATH,.\ert_main.c) $(call FORMAT_PATH,.\porcoilclero.c) $(call FORMAT_PATH,.\porcoilclero_data.c) $(call FORMAT_PATH,.\rtGetInf.c) $(call FORMAT_PATH,.\rtGetNaN.c) $(call FORMAT_PATH,.\rt_nonfinite.c)
else
SOURCE_FILES := $(call FORMAT_PATH,.\SerialTx_wrapper.c) $(call FORMAT_PATH,.\data_struct_init_wrapper.c) $(call FORMAT_PATH,.\sfcn_encoder_wrapper.c) $(call FORMAT_PATH,.\sfcn_motor_new_wrapper.c) $(call FORMAT_PATH,.\signals_wrapper.c) $(call FORMAT_PATH,.\IPAddress.cpp) $(call FORMAT_PATH,.\Print.cpp) $(call FORMAT_PATH,.\Reset.cpp) $(call FORMAT_PATH,.\RingBuffer.cpp) $(call FORMAT_PATH,.\Stream.cpp) $(call FORMAT_PATH,.\UARTClass.cpp) $(call FORMAT_PATH,.\USARTClass.cpp) $(call FORMAT_PATH,.\CDC.cpp) $(call FORMAT_PATH,.\HID.cpp) $(call FORMAT_PATH,.\USBCore.cpp) $(call FORMAT_PATH,.\WInterrupts.c) $(call FORMAT_PATH,.\WMath.cpp) $(call FORMAT_PATH,.\WString.cpp) $(call FORMAT_PATH,.\cortex_handlers.c) $(call FORMAT_PATH,.\cxxabi-compat.cpp) $(call FORMAT_PATH,.\hooks.c) $(call FORMAT_PATH,.\iar_calls_sam3.c) $(call FORMAT_PATH,.\itoa.c) $(call FORMAT_PATH,.\syscalls_sam3.c) $(call FORMAT_PATH,.\wiring.c) $(call FORMAT_PATH,.\wiring_analog.c) $(call FORMAT_PATH,.\wiring_digital.c) $(call FORMAT_PATH,.\wiring_pulse.cpp) $(call FORMAT_PATH,.\wiring_shift.c) $(call FORMAT_PATH,.\variant.cpp) $(call FORMAT_PATH,.\io_wrappers.cpp) $(call FORMAT_PATH,.\TimerTickScheduler.c) $(call FORMAT_PATH,.\arm_cortex_m_multitasking.c) $(call FORMAT_PATH,.\ert_main.c) $(call FORMAT_PATH,.\porcoilclero.c) $(call FORMAT_PATH,.\porcoilclero_data.c) $(call FORMAT_PATH,.\rtGetInf.c) $(call FORMAT_PATH,.\rtGetNaN.c) $(call FORMAT_PATH,.\rt_nonfinite.c)
endif

HEADER_FILES := $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\IPAddress.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\Print.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\Reset.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\RingBuffer.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\Stream.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\UARTClass.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\USARTClass.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\USB\USBCore.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\WInterrupts.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\WMath.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\WString.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\itoa.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\wiring.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\wiring_analog.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\wiring_digital.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\wiring_pulse.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\cores\arduino\wiring_shift.h) $(call FORMAT_PATH,..\..\..\..\..\..\..\..\..\..\..\..\..\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\arduino\sam\variants\arduino_due_x\variant.h) $(call FORMAT_PATH,.\porcoilclero.h) $(call FORMAT_PATH,.\rtGetInf.h) $(call FORMAT_PATH,.\rtGetNaN.h) $(call FORMAT_PATH,.\rt_nonfinite.h)

LIBRARY_FILES := 

OBJ_FILES := $(addprefix $(DERIVED_PATH),$(addsuffix $(OBJ_EXT),$(basename $(notdir $(SOURCE_FILES)))))

SKIPPED_FILES := 

#Code Generation Information

COMPILER_CODEGEN_ARGS := -I"C:/MATLAB/SupportPackages/R2015a/arduinobase/toolbox/realtime/targets/arduino/include" -I"C:/MATLAB/SupportPackages/R2015a/arduinobase/toolbox/realtime/targets/arduino/blocks/sfcn/include" -I"C:/Users/user/Documents/GitHub/linearVibrationsControl/src/Tests/Controls/1dof_2masses_kh/alessio/AdaptiveControl/NoIntegrator/porcoilclero_rtt" -I"C:/Users/user/Documents/GitHub/linearVibrationsControl/src/Tests/Controls/1dof_2masses_kh/alessio/AdaptiveControl/NoIntegrator" -I"D:/Matlab/extern/include" -I"D:/Matlab/simulink/include" -I"D:/Matlab/rtw/c/src" -I"D:/Matlab/rtw/c/src/ext_mode/common" -I"D:/Matlab/rtw/c/ert" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/system/libsam" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/system/CMSIS/CMSIS/Include" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/system/CMSIS/Device/ATMEL" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/cores/arduino" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/cores/arduino/USB" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/variants/arduino_due_x" -I"C:/MATLAB/SupportPackages/R2015a/arduinodue/toolbox/realtime/targets/arduinodue/include" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/libraries/Servo/src" -I"C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/libraries/Servo/src/sam" -c -g -Os -w -ffunction-sections -fdata-sections -nostdlib --param max-inline-insns-single=500 -fno-rtti -fno-exceptions -mcpu=cortex-m3 -mthumb -I. -D"MODEL=porcoilclero" -D"NUMST=2" -D"NCSTATES=7" -D"HAVESTDIO=" -D"ONESTEPFCN=0" -D"TERMFCN=1" -D"MAT_FILE=0" -D"MULTI_INSTANCE_CODE=0" -D"INTEGER_CODE=0" -D"MT=0" -D"CLASSIC_INTERFACE=0" -D"ALLOCATIONFCN=0" -D"TID01EQ=1" -D"printf=iprintf" -D"F_CPU=84000000" -D"_RUNONTARGETHARDWARE_BUILD_=" -D"_ROTH_DUE_=" -D"ARDUINO=156" -D"ARDUINO_SAM_DUE=" -D"ARDUINO_ARCH_SAM=" -D"__SAM3X8E__=" -D"USB_PID=0x003e" -D"USB_VID=0x2341" -D"USBCON=" -D"_RTT_NUMSERVOS_=0" -D"_RTT_SINGLE_TASKING_MODE_="

COMPILER_TCCFG_ARGS := 
COMPILER_ARGS := $(COMPILER_CODEGEN_ARGS) $(COMPILER_TCCFG_ARGS)

LINKER_CODEGEN_ARGS :=  -Os -Wl,--gc-sections -mcpu=cortex-m3 -T C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/variants/arduino_due_x/linker_scripts/gcc/flash.ld -L/build -lm -lgcc -mthumb -Wl,--cref -Wl,--check-sections -Wl,--gc-sections -Wl,--entry=Reset_Handler -Wl,--unresolved-symbols=report-all -Wl,--warn-common -Wl,--warn-section-align -Wl,--warn-unresolved-symbols -Wl,--start-group C:/MATLAB/SupportPackages/R2015a/arduino-1.5.6-r2/hardware/arduino/sam/variants/arduino_due_x/libsam_sam3x8e_gcc_rel.a -Wl,--end-group  

LINKER_TCCFG_ARGS := -o $(TARGET)
LINKER_ARGS := $(LINKER_CODEGEN_ARGS) $(LINKER_TCCFG_ARGS)

PREBUILD_ARGS := 

POSTBUILD_ARGS := -O binary $(TARGET) $(PRODUCT)

EXECUTE_ARGS := 



COMPILER ?= $(subst \,/,C:\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\tools\g++_arm_none_eabi\bin\arm-none-eabi-gcc)

LINKER ?= $(subst \,/,C:\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\tools\g++_arm_none_eabi\bin\arm-none-eabi-g++)

PREBUILD_TOOL ?= 

POSTBUILD_TOOL ?= $(subst \,/,C:\MATLAB\SupportPackages\R2015a\arduino-1.5.6-r2\hardware\tools\g++_arm_none_eabi\bin\arm-none-eabi-objcopy)

EXECUTE_USES_TARGET = off
ifeq (on,$(EXECUTE_USES_TARGET))
 EXECUTE_TOOL ?= $(TARGET)
else
 EXECUTE_TOOL ?= 
endif
ifeq (windows,$(HOST_PLATFORM))
 RM ?= del /q
else
 RM ?= rm -f
endif
ifeq (windows,$(HOST_PLATFORM))
 MKDIR ?= mkdir
else
 MKDIR ?= mkdir -p
endif

#Targets
.DEFAULT_GOAL := all

.PHONY : all execute prebuild build postbuild info environment check clean

all : execute

ifneq (,$(strip $(EXECUTE_TOOL)))
execute : build
	$(info "Evaluating execute target")
	"$(EXECUTE_TOOL)" $(EXECUTE_ARGS)
else
execute : build
endif

ifneq (.a,$(strip $(TARGET_EXT)))
build : prebuild $(TARGET) $(TARGET_HEX)
	$(info "Evaluating build target")
else
build : prebuild $(TARGET)
	$(info "Evaluating build target")
endif

ifneq (,$(strip $(PREBUILD_TOOL)))
ifneq (.a,$(strip $(TARGET_EXT)))
prebuild : | $(OUTPUT_PATH) $(DERIVED_PATH)
	$(info "Evaluating prebuild target")
	"$(PREBUILD_TOOL)" $(PREBUILD_ARGS)
    else
prebuild : | $(OUTPUT_PATH) $(DERIVED_PATH)
    endif
else
prebuild : | $(OUTPUT_PATH) $(DERIVED_PATH)
endif

ifneq (,$(strip $(POSTBUILD_TOOL)))
ifneq (.a,$(strip $(TARGET_EXT)))
postbuild : $(TARGET)
	$(info "Evaluating postbuild target")
	"$(POSTBUILD_TOOL)" $(POSTBUILD_ARGS)
$(TARGET_HEX) : $(TARGET)
	"$(POSTBUILD_TOOL)" $(POSTBUILD_ARGS)
    else
postbuild : $(TARGET)
    endif
else
postbuild : $(TARGET)
endif

ifneq (,$(strip $(LINKER)))
ifneq (.a,$(strip $(TARGET_EXT)))
ifneq (,$(strip $(POSTBUILD_TOOL)))
$(TARGET) : $(OBJ_FILES) $(LIBRARY_FILES)
	"$(LINKER)" $(OBJ_FILES) $(LIBRARY_FILES) $(LINKER_ARGS)
	"$(POSTBUILD_TOOL)" $(POSTBUILD_ARGS)
else
$(TARGET) : $(OBJ_FILES) $(LIBRARY_FILES)
	"$(LINKER)" $(OBJ_FILES) $(LIBRARY_FILES) $(LINKER_ARGS)
endif
else
$(TARGET) : $(OBJ_FILES)
	"$(LINKER)" $(OBJ_FILES) $(LIBRARY_FILES) $(LINKER_ARGS)
endif

$(OBJ_FILES) : $(SOURCE_FILES) $(HEADER_FILES)
	"$(COMPILER)" $(COMPILER_ARGS) $(SOURCE_FILES)
else
ifneq (,$(strip $(POSTBUILD_TOOL)))
$(TARGET) : $(SOURCE_FILES) $(HEADER_FILES)
	"$(COMPILER)" $(COMPILER_ARGS) $(SOURCE_FILES)
	"$(POSTBUILD_TOOL)" $(POSTBUILD_ARGS)
else
$(TARGET) : $(SOURCE_FILES) $(HEADER_FILES)
	"$(COMPILER)" $(COMPILER_ARGS) $(SOURCE_FILES)
endif
endif

$(OUTPUT_PATH) :
ifeq (,$(wildcard $(OUTPUT_PATH)))
	@$(MKDIR) "$(OUTPUT_PATH)"
endif

$(DERIVED_PATH) :
ifeq (,$(wildcard $(DERIVED_PATH)))
	@$(MKDIR) "$(DERIVED_PATH)"
endif

clean :
	-@$(RM) $(TARGET) $(OBJ_FILES)

info : 
	$(info MODEL_NAME=$(MODEL_NAME))
	$(info HOST_PLATFORM=$(HOST_PLATFORM))
	$(info BUILD_CFG=$(BUILD_CFG))
	$(info TOOL_CHAIN_CFG=$(TOOL_CHAIN_CFG))
	$(info TARGET_EXT=$(TARGET_EXT))
	$(info OBJ_EXT=$(OBJ_EXT))
	$(info SOURCE_PATH=$(SOURCE_PATH))
	$(info OUTPUT_PATH=$(OUTPUT_PATH))
	$(info DERIVED_PATH=$(DERIVED_PATH))
	$(info TARGET_FILE=$(TARGET_FILE))
	$(info TARGET=$(TARGET))
	$(info COMPILER=$(COMPILER))
	$(info COMPILER_ARGS=$(COMPILER_ARGS))
	$(info COMPILER_CODEGEN_ARGS=$(COMPILER_CODEGEN_ARGS))
	$(info COMPILER_TCCFG_ARGS=$(COMPILER_TCCFG_ARGS))
	$(info LINKER=$(LINKER))
	$(info LINKER_ARGS=$(LINKER_ARGS))
	$(info LINKER_CODEGEN_ARGS=$(LINKER_CODEGEN_ARGS))
	$(info LINKER_TCCFG_ARGS=$(LINKER_TCCFG_ARGS))
	$(info PREBUILD_TOOL=$(PREBUILD_TOOL))
	$(info PREBUILD_ARGS=$(PREBUILD_ARGS))
	$(info POSTBUILD_TOOL=$(POSTBUILD_TOOL))
	$(info POSTBUILD_ARGS=$(POSTBUILD_ARGS))
	$(info EXECUTE_TOOL=$(EXECUTE_TOOL))
	$(info EXECUTE_ARGS=$(EXECUTE_ARGS))
	$(info SOURCE_FILES=$(SOURCE_FILES))
	$(info HEADER_FILES=$(HEADER_FILES))
	$(info LIBRARY_FILES=$(LIBRARY_FILES))
	$(info OBJ_FILES=$(OBJ_FILES))
	$(info SKIPPED_FILES=$(SKIPPED_FILES))
	$(info RM=$(RM))
	$(info MKDIR=$(MKDIR))

environment :
	$(if $(findstring windows,$(HOST_PLATFORM)),$(info ENVIRONMENT=$(shell set)),$(info ENVIRONMENT=$(shell env)))
