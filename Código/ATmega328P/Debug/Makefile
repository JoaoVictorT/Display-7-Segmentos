###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = ATmega328P
COMPILER = "AVRASM (Proteus)"
TARGET = Debug
SHELL = C:\WINDOWS\system32\cmd.exe

## Tools general options
ASMFLAGS=-fO -i"C:\Program Files (x86)\Labcenter Electronics\Proteus 8 Professional\VSM Studio\Tools\AVRASM\appnotes\m328Pdef.inc"

## Processing Tools
ASM=avrasm2.exe
#  C:/Users/Pichau/Documents/ATmega328P/Debug/Debug.obj: TOOL=ASM
#     C:/Users/Pichau/Documents/ATmega328P/main.asm

# Build tree:
all:	Debug

Debug:	Debug.obj

Debug.obj:	../main.asm 
	$(ASM) $(ASMFLAGS)  -o "Debug.obj" -l Debug.lst "..\main.asm"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf Debug.lst

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.obj

