TARGET = $(notdir $(CURDIR))
all:
	@echo zig-$(shell zig version)
	zig build
	@-avr-objdump -hdSC zig-out/bin/$(TARGET).elf > $(TARGET).lst

clean:
	@rm -f *.dmp *.s *.hex *.bin *.out *.elf *.o *.lst
	@rm -fr .zig-cache zig-out

fmt:
	zig fmt .


TARGET_HEX = zig-out/bin/$(TARGET).hex
PORT ?= COM3
BAUDRATE ?= 115200

w:
	avrdude -c arduino -p m328p -P $(PORT) -b $(BAUDRATE)  -U flash:w:"$(TARGET_HEX)":a
