// zig-0.15.2 2026/01
// Simple LED blinker program for Arduino Uno/Nano

const io = @import("atmega328p");
const util = @import("delay");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = io.BV(LED_PIN);

export fn main() noreturn {
    io.DDRB.* |= LED_BIT;
    while (true) {
        io.PORTB.* ^= LED_BIT;
        util.delay_msec(2000);
    }
}
