#
# 1. Generate bit operation funcions
# 2. Generate ISR vector definitions : Currently doesn't genereate them.
#
# by dinau 2026/01
#
#
# Usage:
#   $ ruby modIoDefinitions.rb src/atmega328p_base.zig > src/atmega328p.zig

bitOp = <<EOS

// Added by hand
pub inline fn BV(bit: c_int) u8 {
    return @as(u8,1) << @intCast(bit);
}

pub inline fn BV16(bit: c_int) u16 {
    return @as(u16,1) << @intCast(bit);
}

pub fn clrbit(reg: anytype, bit_no: c_int) void {
    switch(@TypeOf(reg)){
        *volatile u8  => reg.* &= ~@as(u8,  BV(bit_no)),
        *volatile u16 => reg.* &= ~@as(u16, BV16(bit_no)),
        else => @compileError("Unkonwn Type: [reg]"),
    }
}

pub fn setbit(reg: anytype, bit_no: c_int) void {
    switch(@TypeOf(reg)){
        *volatile u8 =>  reg.* |= @as(u8,  BV(bit_no)),
        *volatile u16 => reg.* |= @as(u16, BV16(bit_no)),
        else => @compileError("Unkonwn Type: [reg]"),
    }
}
EOS

baseFileName = ARGV[0]

lines = File.foreach(baseFileName)

loop do
  begin
    line = lines.next
    if line.include?("vect_num")
      if true
        puts "// #{line}"
        puts "// #{lines.next}"
      #else
      #  vect_num = line.split(",")[1].split(")")[0].strip.to_i
      #  vect_name = lines.next.split(" ")[2].strip
      #  puts "\n// #{vect_name}"
      #  puts "export const __vecotr_#{vect_num} = #{vect_name};"
      #  puts "var #{vect_name.downcase}: *const fn () void = undefined;"
      #  puts "pub fn set_#{vect_name.downcase}(isr_proc: fn () void) void {\n    #{vect_name.downcase} = isr_proc;\n}"
      #  puts "fn #{vect_name}() callconv(.avr_interrupt) void {\n    #{vect_name.downcase}();\n}"
      end
    elsif line.include?("pub const _MMIO_BYTE")
        puts "pub fn _MMIO_BYTE(adr: c_uint) *volatile u8 { return @ptrFromInt(adr); }"
    elsif line.include?("pub const _MMIO_WORD")
        puts "pub fn _MMIO_WORD(adr: c_uint) *volatile u16 { return @ptrFromInt(adr); }"
    elsif line.include?("pub const _MMIO_DWORD")
        puts "pub fn _MMIO_DWORD(adr: c_uint) *volatile u32 { return @ptrFromInt(adr); }"
    else
      puts line
    end
  rescue StopIteration
    break
  end
end

puts bitOp
