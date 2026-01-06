const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "atmega328p";
    var mod: *std.Build.Module = undefined;

    // -------
    // module
    // -------
    if (true) {
        mod = b.addModule(mod_name, .{
            .root_source_file = b.path("src/atmega328p.zig"),
            .target = target,
            .optimize = optimize,
        });
    } else { // Generate io.zig in .zig-cache, rename io.zig to atmega328p.zig and modifiy it.
        const step = b.addTranslateC(.{
            .root_source_file = b.path("../../libc/avr/include/avr/io.h"),
            .target = target,
            .optimize = optimize,
        });
        step.defineCMacro("__AVR_ATmega328P__", "");
        step.addIncludePath(b.path("../../libc/avr/include"));
        step.addIncludePath(b.path("../../libc/avr/include/avr"));
        mod = step.addModule(mod_name);
    }

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
