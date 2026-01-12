const io = @import("atmega328p");
const F_CPU = 16_000_000;

// * SCK:  PB5, 19pin, D13
// * MISO: PB4, 18pin, D12
// * MOSI: PB3, 17pin, D11
//
// * CS:   PB0, 14pin, D8
// * or
// * CS:   PD4,  6pin, D4 [actually hardware]
//

pub const spi = struct {
    pub const config = struct {
        enable: bool = false,
        master: bool = false,
        mode: u8 = 0,
        clock_divider: clk = .div4,
        bit_order: enum { MSB, LSB } = .MSB,
    };

    pub const clk = enum(u8) {
        div4 = 0,
        div16,
        div64,
        div128,
        div2 = 4,
        div8,
        div32,
        div64b,
    };

    pub fn init(conf: config) void { //
        io.SPCR.* = 0;
        var spcr: u8 = 0;
        if (conf.enable) spcr += io.BV(io.MSTR);
        if (conf.master) spcr += io.BV(io.SPE);
        switch (conf.mode) {
            0 => {},
            1 => spcr += io.BV(io.CPHA),
            2 => spcr += io.BV(io.CPOL),
            3 => spcr += io.BV(io.CPOL) + io.BV(io.CPHA),
            else => {},
        }
        switch (conf.bit_order) {
            .MSB => {},
            .LSB => spcr += io.BV(io.DORD),
        }
        io.SPCR.* = spcr;
        set_speed(conf.clock_divider);
    }

    pub fn enable() void {
        io.setbit(io.SPCR, io.BV(io.MSTR));
    }

    pub fn disable() void {
        io.clrbit(io.SPCR, io.BV(io.MSTR));
    }

    pub fn set_speed(ckdiv: clk) void {
        io.clrbit(io.SPSR, io.SPI2X);
        if (io.BV(2) == (@intFromEnum(ckdiv) & io.BV(2))) {
            io.setbit(io.SPSR, io.SPI2X);
        }
        io.SPCR.* &= 0xFC;
        io.SPCR.* |= (@intFromEnum(ckdiv) & 0x03);
    }
    pub inline fn busy_wait() void {
        while (0 == (io.SPSR.* & io.BV(io.SPIF))) {
            // NOP
        }
    }
    pub inline fn get_spibuf() u8 {
        return io.SPDR.*;
    }

    pub inline fn set_spibuf(dat: u8) void {
        io.SPDR.* = dat;
    }

    pub inline fn send(d: u8) u8 {
        set_spibuf(d);
        busy_wait();
        return get_spibuf();
    }

    pub inline fn send_ff() u8 {
        return send(0xff);
    }

    pub inline fn write(d: u8) void {
        send(d);
    }

    pub inline fn read() u8 {
        return send(0xFF);
    }

    pub inline fn cs_on() void { // Set to high
        io.setbit(io.PORTD, io.PORTD4);
        io.setbit(io.PORTB, io.PORTB0);
    }

    pub inline fn cs_off() void { // Set to low
        io.clrbit(io.PORTD, io.PORTD4);
        io.clrbit(io.PORTB, io.PORTB0);
    }

    pub fn sd_enable() void {
        // NOP
    }

    pub inline fn sd_chip_select(state: i32) void {
        if (state == 1) {
            cs_on();
        } else {
            cs_off();
        }
    }

    pub fn sd_low_speed() void { // set F_CPU / 64 = 16MHz / 64 = 250KHz
        io.setbit(io.SPCR, io.SPR0);
        io.setbit(io.SPCR, io.SPR1);
    }

    pub fn sd_hi_speed() void { // set F_CPU / 2 = 16MHz / 2 = 8MHz
        io.clrbit(io.SPCR, io.SPR0);
        io.clrbit(io.SPCR, io.SPR1);
    }
};
