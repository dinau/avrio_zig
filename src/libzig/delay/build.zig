const std = @import("std");
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "delay";

    // ----------------------
    // "xprintf" module
    // ----------------------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("../../libc/delay_lib/delay_lib.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = false,
    });
    step.addIncludePath(b.path("../../libc/delay_lib"));
    step.defineCMacro("F_CPU", "16000000UL");

    const mod = step.addModule(mod_name);
    mod.addCMacro("F_CPU", "16000000UL");
    mod.addIncludePath(b.path("../../libc/delay_lib"));
    mod.addIncludePath(b.path("../../libc/avr/include"));
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/delay_lib/delay_lib.c",
        },
        .flags = &.{
            "-ffunction-sections",
            "-fdata-sections",
            "-Os",
        },
    });

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
