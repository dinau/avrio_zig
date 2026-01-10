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
// * test: PD7, 13pin, D7

pub const spi = struct {
    pub fn init() void { //                         SPI mode 0 CPOL = , CPHA=0
        io.SPCR.* = io.BV(io.SPE) + io.BV(io.MSTR);
        io.SPSR.* = io.BV(io.SPI2X); //             SPI clock = fosc/2 = 8MHz
    }

    pub inline fn spiBusyWait() void {
        while (0 == (io.SPSR.* & io.BV(io.SPIF))) {
            // NOP
        }
    }
    pub inline fn getSPIBUF() u8 {
        return io.SPDR.*;
    }

    pub inline fn setSPIBUF(dat: u8) void {
        io.SPDR.* = dat;
    }

    pub inline fn send(d: u8) u8 {
        setSPIBUF(d);
        spiBusyWait();
        return getSPIBUF();
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
        io.set_bit(io.PORTD, io.PORTD4);
        io.set_bit(io.PORTB, io.PORTB0);
    }

    pub inline fn cs_off() void { // Set to low
        io.clr_bit(io.PORTD, io.PORTD4);
        io.clr_bit(io.PORTB, io.PORTB0);
        }

    pub fn sd_spi_enable() void {
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
        io.setBit(io.SPCR, io.SPR0);
        io.setBit(io.SPCR, io.SPR1);
    }

    pub fn sd_hi_speed() void { // set F_CPU / 2 = 16MHz / 2 = 8MHz
        io.clrBit(io.SPCR, io.SPR0);
        io.clrBit(io.SPCR, io.SPR1);
    }
};
