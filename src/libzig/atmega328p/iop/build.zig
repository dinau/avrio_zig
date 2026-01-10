const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "atmega328p";
    var mod: *std.Build.Module = undefined;

    const gen_option = b.option(bool, "gen", "Generate I/O definition file from C header") orelse false;

    // -------
    // module
    // -------
    if (!gen_option) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/atmega328p.zig"),
            .target = target,
            .optimize = optimize,
        });
    } else { // Generate original_temp_zig in zig-out
        const original_temp_zig = "atmega328p_original_temp.zig";
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../../libc/avr/include/avr/io.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("__AVR_ATmega328P__", "");
        step.addIncludePath(b.path("../../../libc/avr/include"));
        step.addIncludePath(b.path("../../../libc/avr/include/avr"));

        const install_file = b.addInstallFile(step.getOutput(), original_temp_zig);
        b.getInstallStep().dependOn(&install_file.step);

        mod = step.addModule(mod_name);
    }

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
