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
