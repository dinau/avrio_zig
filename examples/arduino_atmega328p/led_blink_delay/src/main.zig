// zig-0.15.2 2026/01
// Simple LED blinker program for Arduino Uno/Nano

const avr = @import("atmega328p");
const util = @import("delay");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = avr.BV(LED_PIN);

export fn main() noreturn {
    avr.DDRB.* |= LED_BIT;
    while (true) {
        avr.PORTB.* ^= LED_BIT;
        util.delay_msec(2000);
    }
}
