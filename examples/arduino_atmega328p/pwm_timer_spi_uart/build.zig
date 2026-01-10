const std = @import("std");

pub fn build(b: *std.Build) !void {
    const main_file_name = "main";
    const out_file_name = "pwm_timer_spi_uart";
    const cpu = std.Target.Query{
        .cpu_arch = .avr,
        .cpu_model = .{ .explicit = &std.Target.avr.cpu.atmega328p },
        .os_tag = .freestanding,
        .abi = .none,
    };
    const target = b.resolveTargetQuery(cpu);
    const optimize = .ReleaseSmall;
    const source_file = b.fmt("src/{s}.zig", .{main_file_name});
    // 1. Compile Zig source to object file
    const obj = b.addObject(.{
        .name = main_file_name,
        .root_module = b.createModule(.{
            .root_source_file = b.path(source_file),
            .target = target,
            .optimize = optimize,
        }),
    });
    obj.root_module.link_libc = false;
    const avrio_zig = b.dependency("avrio_zig", .{});
    const dependencies = .{
        "atmega328p",
        "delay",
        "uart_atmega328p",
        "pwm_atmega328p",
        "spi_atmega328p",
        "systick_atmega328p",
        "xprintf",
    };
    inline for (dependencies) |dep_name| {
        const dep = avrio_zig.builder.dependency(dep_name, .{});
        obj.root_module.addImport(dep_name, dep.module(dep_name));
    }
    // Get the object file path
    const obj_file = obj.getEmittedBin();
    const elf_file_name = b.fmt("{s}.elf", .{out_file_name});
    const hex_file_name = b.fmt("{s}.hex", .{out_file_name});
    const cache_dir = b.cache_root.path orelse ".zig-cache";
    const elf_file = b.pathJoin(&.{ cache_dir, elf_file_name });
    const hex_file = b.pathJoin(&.{ cache_dir, hex_file_name });
    // Link with avr-gcc to create ELF
    const avr_gcc = b.addSystemCommand(&.{
        "avr-gcc",
        "-mmcu=atmega328p",
        "-Os",
        "-Wl,--gc-sections",
        //        "-Wl,--print-gc-sections",
        "-ffunction-sections",
        "-fdata-sections",
        "-flto",
        "-fno-builtin-isnan", // TODO
        "-fno-builtin-isinf", // TODO
        "-o",
        elf_file,
    });
    avr_gcc.addFileArg(obj_file);
    avr_gcc.addArg("-lm");
    // Install ELF file to zig-out/bin
    const install_elf = b.addInstallBinFile(.{ .cwd_relative = elf_file }, elf_file_name);
    install_elf.step.dependOn(&avr_gcc.step);
    // Generate HEX file from ELF
    const avr_objcopy = b.addSystemCommand(&.{
        "avr-objcopy",
        "-O",
        "ihex",
        "-R",
        ".eeprom",
        elf_file,
        hex_file,
    });
    avr_objcopy.step.dependOn(&avr_gcc.step);
    // Install HEX file to zig-out/bin
    const install_hex = b.addInstallBinFile(.{ .cwd_relative = hex_file }, hex_file_name);
    install_hex.step.dependOn(&avr_objcopy.step);
    // Display size information
    const avr_size = b.addSystemCommand(&.{
        "avr-size",
        elf_file,
    });
    avr_size.step.dependOn(&avr_gcc.step);
    // Add all steps to default build
    b.default_step.dependOn(&install_elf.step);
    b.default_step.dependOn(&install_hex.step);
    b.default_step.dependOn(&avr_size.step);
}
