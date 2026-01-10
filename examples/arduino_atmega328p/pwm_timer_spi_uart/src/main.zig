// zig-0.15.2 2026/01
// Simple Uart / PWM / SPI / Timer1 intrrupt and xprintf(),
// test program for Arduino Uno/Nano

// SPI
// CS: PB0, 14pin, D8
// or
// CS: PD4,  6pin, D4 ,[actually hardware]

const io = @import("atmega328p");
const uart = @import("uart_atmega328p");
const pwm = @import("pwm_atmega328p").pwm;
const spi = @import("spi_atmega328p").spi;
const systick = @import("systick_atmega328p").systick;
const util = @import("delay");
const xf = @import("xprintf");

// TIMER1_OVF_vect: Interrupt
export const __vector_13 = TIMER1_OVF_vect;
fn TIMER1_OVF_vect() callconv(.avr_interrupt) void {
    pwm_period_intr();
}

// Use Timer1 for PWM period interrupt
const PATTERN = 0xA5;
var res: u8 = 0;
var pwm_intr_counter: i32 = 0;

fn pwm_period_intr() void {
    spi.cs_on();
    pwm_intr_counter += 1;

    res = spi.send(PATTERN);
    res = spi.send(PATTERN);

    spi.cs_off();
}

fn init_port() void { // set pull up to i/o port.
    io.PORTB.* = 0xFF;
    io.PORTC.* = 0xFF;
    io.PORTD.* = 0xFF;
    io.DDRB.* = 0xEF; // all output except PB4
    io.DDRD.* = 0xFF; // all output port
}

// -----
// main
// -----
export fn main() noreturn {
    init_port();
    systick.init(); // Systick settings
    spi.init(); //     SPI settings

    // PWM settings
    const PWM_FREQ: i32 = 44100;
    pwm.init();
    pwm.set_period_hz(PWM_FREQ); //      PWM period frequency = 44100 Hz
    pwm.enable_period_intr(); //         Enable PWM period interrupt
    pwm.start_period_timer(); //         PWM period timer start
    pwm.set_duty_ch1(250); //            D9:  Lch
    pwm.set_duty_ch2(50); //             D10: Rch

    asm volatile ("sei"); //             Eanble global interrupt

    // UART settings
    uart.init(115200); //                Set baudrate
    xf.xfunc_output = uart.putc; //      Set putc for xprintf()

    var prev: i32 = 0;
    var ix: i32 = 0;
    systick.set_user_ticks_u16(1000); // 1sec = 1000msec
    while (true) {
        if (systick.is_user_ticks_trigger()) {
            systick.clear_user_ticks_trigger();
            pwm.disable_period_intr();
            const pwm_counter = pwm_intr_counter; // Get 32bit data with atomic access
            pwm.enable_period_intr();
            xf.xprintf("\n[%04ld]  %5ld [Hz] : (PWM 44100 [Hz])", ix, pwm_counter - prev);
            prev = pwm_counter;
            ix += 1;
            if (ix > (20 - 1)) {
               // systick.stop_user_ticks_u16(); //    Stop displaying after 20 lines
            }
        }
    }
}
