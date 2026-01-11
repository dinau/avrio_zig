ORIGINAL_FILE = atmega328p_original_temp
OUTPUT_FILE   = atmega328p

all:
	zig build -Dgen
	cp zig-out/$(ORIGINAL_FILE).zig ./src/
	ruby modIoDefinitions.rb src/$(ORIGINAL_FILE).zig > src/$(OUTPUT_FILE).zig


clean:
	@rm -fr zig-out .zig-cache

fmt:
	@-zig fmt .
