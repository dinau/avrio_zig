// zig-0.15.2 2026/01
// zig-0.9.0 2021/12
// Simple LED blinker program for Arduino Uno/Nano
// Refered from https://github.com/dinau/zig-avr-testbed

const avr = @import("atmega328p");

const one_second = 53974;
const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = avr.BV(LED_PIN);

export fn __vector_13() callconv(.avr_interrupt) void {
    avr.PORTB.* ^= LED_BIT;
    avr.TCNT1.* = one_second;
}

export fn main() noreturn {
    avr.DDRB.* |= LED_BIT;
    avr.TCNT1.* = one_second;
    avr.TCCR1A.* = 0;
    avr.TCCR1B.* = avr.BV(avr.CS10) | avr.BV(avr.CS12); // clock select: clkio/1024
    avr.TIMSK1.* = avr.BV(avr.TOIE1); // Interrupt on overflow enable
    asm volatile ("sei");
    while (true) {}
}
