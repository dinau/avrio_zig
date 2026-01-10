// zig-0.15.2 2026/01
// Simple Uart and xprintf() program for Arduino Uno/Nano

const io = @import("atmega328p");

const F_CPU = 16_000_000;

const TxData = io.UDR0;

pub fn init(baud: u32) void {
    const baudFactor: u16 = @intCast(((F_CPU / 8) / baud) - 1);
    io.UCSR0A.* |= io.BV(io.U2X0);
    io.UBRR0H.* = @intCast(baudFactor >> 8);
    io.UBRR0L.* = @intCast(baudFactor);
    //
    io.UCSR0B.* = io.BV(io.RXEN0) | io.BV(io.TXEN0); // enable TX,RX
    // 8bit, np, stb1
    io.UCSR0C.* = (3 << io.UCSZ00) | (0 << io.USBS0) | (0 << io.UPM00);
}

pub fn isFifoEmpty() bool {
    return (io.UCSR0A.* & io.BV(io.UDRE0)) != 0;
}

pub fn putc(ch: c_int) callconv(.c) void {
    while (!isFifoEmpty()) {
        // wait
    }
    TxData.* = @intCast(ch);
}
