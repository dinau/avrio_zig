ORIGINAL_FILE = atmega328p_original_temp

all:
	zig build -Dgen
	cp zig-out/$(ORIGINAL_FILE).zig ./src/
	ruby modIoDefinitions.rb src/$(ORIGINAL_FILE).zig > src/atmega328p.zig


clean:
	@rm -fr zig-out .zig-cache

fmt:
	@-zig fmt .
