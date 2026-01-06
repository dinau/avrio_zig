// zig-0.15.2 2026/01
// Simple Uart and xprintf() program for Arduino Uno/Nano

const avr = @import("atmega328p");
const c = @import("xprintf_int");
pub const xprintf_int = c;

const F_CPU = 16_000_000;

pub const uart0 = struct {
    const TxData = avr.UDR0;

    pub fn init(baud: u32) void {
        const baudFactor: u16 = @intCast(((F_CPU / 8) / baud) - 1);
        avr.UCSR0A.* |= avr.BV(avr.U2X0);
        avr.UBRR0H.* = @intCast(baudFactor >> 8);
        avr.UBRR0L.* = @intCast(baudFactor);
        //
        avr.UCSR0B.* = avr.BV(avr.RXEN0) | avr.BV(avr.TXEN0); // enable TX,RX
        // 8bit, np, stb1
        avr.UCSR0C.* = (3 << avr.UCSZ00) | (0 << avr.USBS0) | (0 << avr.UPM00);

        //# Use ChaN's xprintf()
        // when defined(XPRINTF_FLOAT):
        //     xprt.xfunc_output= putc
        // else:
        c.xfunc_out = putc;
    }

    pub fn isFifoEmpty() bool {
        return (avr.UCSR0A.* & avr.BV(avr.UDRE0)) != 0;
    }

    pub fn putc(ch: u8) callconv(.c) void {
        while (!isFifoEmpty()) {
            // wait
        }
        TxData.* = ch;
    }
};
