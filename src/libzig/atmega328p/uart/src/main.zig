// zig-0.15.2 2026/01
// Simple Uart program for Arduino Uno/Nano

const io = @import("atmega328p");

const F_CPU = 16_000_000;

const TxData = io.UDR0;

pub fn init(baud: u32) void {
    const baudFactor: u16 = @intCast(((F_CPU / 8) / baud) - 1);
    io.UCSR0A.* |= io.BV(io.U2X0);
    io.UBRR0.* = @intCast(baudFactor); // Set baudrate
    //
    io.UCSR0B.* = io.BV(io.RXEN0) | io.BV(io.TXEN0); // Enable TX,RX
    // 8bit, np, stop bit 1
    io.UCSR0C.* = 0;
    io.UCSR0C.* |= (3 << io.UCSZ00); // Bit length 8
}

pub fn is_fifo_empty() bool {
    return (io.UCSR0A.* & io.BV(io.UDRE0)) != 0;
}

pub fn putc(ch: c_int) callconv(.c) void {
    while (!is_fifo_empty()) {
        // wait
    }
    TxData.* = @intCast(ch);
}
