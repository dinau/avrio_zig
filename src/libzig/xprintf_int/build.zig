const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "xprintf_int";

    // ----------------------
    // "xprintf" module
    // ----------------------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("../../libc/xprintf_int/xprintf.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = false,
    });
    const mod = step.addModule(mod_name);
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/xprintf_int/xprintf.c",
        },
        .flags = &.{
            "-ffunction-sections",
            "-fdata-sections",
            "-Os",
        },
    });
    mod.addIncludePath(b.path("../../libc/xprintf_int"));

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
