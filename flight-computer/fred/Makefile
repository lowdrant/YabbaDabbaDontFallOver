##############################################################################
# Teensy 3.6 BLDC Motor Control
#
# 'make'        builds binary file main.hex
#
# 'make upload' uploads main.hex to connected Teensy board
# 'make clean'  removes all .hex, .elf, .d, and .o files
#
##############################################################################

# ============================================================================
# Put the names of your libraries here:
MYLIBS = #ADC BLDC cpucycle DMA CMSIS PWM trig_tables velocity
# ============================================================================

# ============================================================================
# Put the names of the used Teensyduino libraries here:
TEENSYLIBS = SPI SD SdFat
# ============================================================================

TARGET = main

#
# Project Paths
#

PROJPATH = $(abspath $(CURDIR))
TOOLSPATH = $(PROJPATH)/tools
COMPILERPATH = $(TOOLSPATH)/arm/bin
LIBSPATH = $(PROJPATH)/libs
CMSISPATH = $(LIBSPATH)/CMSIS
TEENSYPATH = $(LIBSPATH)/TeensyduinoFramework/teensy3
ARDUINOLIBSPATH = $(LIBSPATH)/TeensyduinoFramework/libraries

# Identify
INC_PATHS = $(TEENSYPATH) $(TEENSYPATH)/avr $(TEENSYPATH)/util   # core arduino functionality
INC_PATHS += $(foreach d, $(MYLIBS), $(LIBSPATH)/$d)             # my libraries
INC_PATHS += $(foreach d, $(TEENSYLIBS), $(ARDUINOLIBSPATH)/$d)  # arduino expansion libs
INC = $(foreach d, $(INC_PATHS), -I$d)

# Identify Root Paths to Source Files
SRC = $(TEENSYPATH)
SRC += $(foreach d, $(MYLIB), $(LIBSPATH)/$d)
SRC += $(foreach d, $(TEENSYLIBS), $(ARDUINOLIBSPATH)/$d)

INC_PATHS += $(TOOLSPATH)/arm/lib/gcc/arm-none-eabi/5.4.1        # arm gcc obj files

# Names for the compiler programs
PREFIX = $(COMPILERPATH)/arm-none-eabi
CC = $(PREFIX)-gcc
CXX = $(PREFIX)-g++
OBJCOPY = $(PREFIX)-objcopy
SIZE = $(PREFIX)-size

#
# Compiler Settings
#

# Configurable options

# - teensy3.6 core, use USB serial port, cpu freq, etc
OPTS_TEENSY = -D__MK66FX1M0__ -DARDUINO_TEENSY36 -DTEENSYDUINO -DARDUINO
OPTS_TEENSY += -DF_CPU=180000000 -DUSB_SERIAL -DLAYOUT_US_ENGLISH
OPTS_MACHINE = -mthumb -mcpu=cortex-m4 -mno-unaligned-access -fsingle-precision-constant -mfpu=fpv4-sp-d16 -mfloat-abi=hard
#OPTS_MACHINE += # TODO: fix arm-gcc paths
OPTS_OPTIM = -ffunction-sections -fdata-sections
OPTIONS = $(OPTS_TEENSY) $(OPTS_MACHINE) $(OPTS_OPTIM)

# CPPFLAGS = compiler options for C and C++
CPPFLAGS = -Wall -g -Os -nostdlib -MMD $(OPTIONS) $(INC)

# Compiler options for C++ only
CXXFLAGS = -std=gnu++14 -felide-constructors -fno-exceptions -fno-rtti

# Compiler options for C only
CFLAGS =

# Linker options
# https://launchpadlibrarian.net/177524521/readme.txt
# ARMFPUPATH = $(TOOLSPATH)/arm/lib/gcc/arm-none-eabi/5.4.1/armv7e-m/fpu  # FPU files for linker
ARMFPUPATH = $(TOOLSPATH)/arm/arm-none-eabi/lib/armv7e-m/fpu
LDFLAGS = -Os -Wl,--gc-sections $(OPTIONS) -T$(PROJPATH)/mk66fx1m0.ld -L$(ARMFPUPATH)

# Additional libraries to link
LIBS = -lm

# Automatically create lists of the sources and objects
C_FILES := $(foreach d, $(SRC), $(shell find $(d) -name \*.c -print))
CPP_FILES := $(foreach d, $(SRC), $(shell find $(d) -name \*.cpp -print))
CPP_FILES += main.cpp  # put here explicitly to avoid project root as a search path
OBJS := $(C_FILES:.c=.o) $(CPP_FILES:.cpp=.o)

#
# Rules
#

.PHONY: all upload newupload

all: $(TARGET).hex

$(TARGET).elf: $(OBJS) $(PROJPATH)/mk66fx1m0.ld
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

%.hex: %.elf
	$(SIZE) $<
	$(OBJCOPY) -O ihex -R .eeprom $< $@

upload: $(TARGET).hex
	LD_LIBRARY_PATH=$(TOOLSPATH) $(abspath $(TOOLSPATH))/teensy_loader_cli -s -v --mcu=TEENSY36 "$<"

newupload: all upload

# Compiler generated dependency info
-include $(OBJS:.o=.d)

clean:
	rm -f main.elf main.hex main
	rm -f $(OBJS) $(OBJS:.o=.d)

debug:
	$(info $$CPP_FILES is [${CPP_FILES}])
	$(info $$C_FILES is [${C_FILES}])
	$(info $$gcc is [$(shell ${CC} --version)])
	$(info $$g++ is [$(shell ${CXX} --version)])
	$(info $$gccpsearchpdirs [$(shell ${CXX} -print-search-dirs)])
