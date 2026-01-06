const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const mod_name = "xprintf";

    // ----------------------
    // "xprintf" module
    // ----------------------
    const step = b.addTranslateC(.{
        .root_source_file = b.path("src/impl_xprintf.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = false,
    });
    step.addIncludePath(b.path("../../libc/xprintf"));
    step.addIncludePath(b.path("../../libc/avr/include"));
   // step.defineCMacro("XF_USE_FP","1");
    const mod = step.addModule(mod_name);
    //mod.addCMacro("XF_USE_FP","1");
    mod.addCSourceFiles(.{
        .files = &.{
            "../../libc/xprintf/xprintf.c",
        },
        .flags = &.{
            "-ffunction-sections",
            "-fdata-sections",
            "-Os",
        },
    });
    mod.addIncludePath(b.path("../../libc/avr/include"));
    mod.addIncludePath(b.path("../../libc/xprintf"));

    const lib = b.addLibrary(.{
        .linkage = .static,
        .name = mod_name,
        .root_module = mod,
    });
    b.installArtifact(lib);
}
