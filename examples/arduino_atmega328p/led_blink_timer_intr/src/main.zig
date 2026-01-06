// zig-0.15.2 2026/01
// zig-0.9.0 2021/12
// Simple LED blinker program for Arduino Uno/Nano
// Refered from https://github.com/dinau/zig-avr-testbed

const io = @import("atmega328p");

const one_second = 53974;
const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = io.BV(LED_PIN);

export fn __vector_13() callconv(.avr_interrupt) void {
    io.PORTB.* ^= LED_BIT;
    io.TCNT1.* = one_second;
}

export fn main() noreturn {
    io.DDRB.* |= LED_BIT;
    io.TCNT1.* = one_second;
    io.TCCR1A.* = 0;
    io.TCCR1B.* = io.BV(io.CS10) | io.BV(io.CS12); // clock select: clkio/1024
    io.TIMSK1.* = io.BV(io.TOIE1); // Interrupt on overflow enable
    asm volatile ("sei");
    while (true) {}
}
