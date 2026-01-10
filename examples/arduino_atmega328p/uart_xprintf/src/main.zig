// zig-0.15.2 2026/01
// Simple Uart and xprintf() program for Arduino Uno/Nano

const io = @import("atmega328p");
const uart = @import("uart_atmega328p");
const util = @import("delay");
const xf = @import("xprintf");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = io.BV(LED_PIN);

// -----
// main
// -----
export fn main() noreturn {
    uart.init(115200); //           Set baudrate
    xf.xfunc_output = uart.putc; // Set putc for xprintf()
    io.DDRB.* |= LED_BIT;

    var num: f32 = 0;
    while (true) {
        xf.xprintf("\n Number = %6.4f [sec]", num);
        xf.xputs("  ---");
        num += 0.1234;
        io.PORTB.* ^= LED_BIT;
        util.delay_msec(1000);
    }
}
