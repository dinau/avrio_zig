// zig-0.15.2 2026/01
// Simple Uart and xprintf() program for Arduino Uno/Nano

const avr = @import("atmega328p");
const uart = @import("uart").uart0;
const c = @import("uart").xprintf_int;
const util = @import("delay");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = avr.BV(LED_PIN);

// -----
// main
// -----
export fn main() noreturn {
    uart.init(115200);
    avr.DDRB.* |= LED_BIT;

    var num: c_int = 0;
    while (true) {
        c.xprintf("\n Number = [%05d] sec ", num);
        c.xputs("  ---");
        num += 1;
        avr.PORTB.* ^= LED_BIT;
        util.delay_msec(1000);
    }
}
