all:
	@echo zig-$(shell zig version)
	zig build

clean:
	@rm -f *.dmp *.s *.hex *.bin *.out *.elf *.o *.lst
	@rm -fr .zig-cache zig-out

fmt:
	zig fmt .
