<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [avrio_zig](#avrio_zig)
  - [Prerequisites](#prerequisites)
  - [Build examples: for Arduino Uno / Nano / Compatibles (ATMega328p)](#build-examples-for-arduino-uno--nano--compatibles-atmega328p)
    - [led_blink_delay](#led_blink_delay)
    - [led_blink_intr](#led_blink_intr)
    - [uart_xprintf](#uart_xprintf)
  - [Other tools](#other-tools)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### avrio_zig

---

The definitions of I/O ports and examples for Atmel AVR in Zig


#### Prerequisites

---

- Zig compiler  
Windows: [zig-x86_64-windows-0.15.2.zip](https://ziglang.org/download/0.15.2/zig-x86_64-windows-0.15.2.zip)  
Linux:   [zig-x86_64-linux-0.15.2.tar.xz](https://ziglang.org/download/0.15.2/zig-x86_64-linux-0.15.2.tar.xz)

- avr-gcc: v7.3.0 for link stage  
   Windows (for 32/64bit common): [avr-gcc-7.3.0-atmel3.6.1-arduino7-i686-w64-mingw32.zip](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-i686-w64-mingw32.zip)  
   macOS: [avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-apple-darwin14.tar.bz2](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-apple-darwin14.tar.bz2)  
   Linux (64bit): [avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-pc-linux-gnu.tar.bz2](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-pc-linux-gnu.tar.bz2)  
   or install [Aruduino IDE 2.3.7](https://www.arduino.cc/en/software/) or  [Arduino CLI](https://github.com/arduino/arduino-cli/releases)

- Hex file writer (Uploader) tool. (Optional) 
AVRDUDESS: https://blog.zakkemble.net/avrdudess/  
XLoader: https://www.russemotto.com/xloader/  



#### Build examples: for Arduino Uno / Nano / Compatibles (ATMega328p)

---

```sh
git clone https://github.com/dinau/avrio_zig
cd avrio_zig/examples/arduino_atmega328p
```

##### led_blink_delay

---

Very simple LED blinker program.


```zig
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
```

Build,

```sh
pwd
led_blink_delay

zig build
   text    data     bss     dec     hex filename
    260       0       0     260     104 .zig-cache\led_blink_delay.elf
```

Upload HEX file to Arduino Uno 3 board,

```sh
$ avrdude.exe -c arduino -P COM3 -p m328p -b 115200 -e -U flash:w:"zig-out\bin\led_blink_delay.hex":a

Reading 260 bytes for flash from input file led_blink_delay.hex
Writing 260 bytes to flash
Writing | ################################################## | 100% 0.07 s
Reading | ################################################## | 100% 0.04 s
260 bytes of flash verified

Avrdude done.  Thank you.
```

The COM port number must be appropriately set, such as -P COM3.  
Or use AVRDUDESS or XLoader aforementioned.



##### led_blink_intr

---

Very simple LED blinker program with timer interrupt.

```zig
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
```

Build,

```sh
pwd
led_blink_intr

zig build
   text    data     bss     dec     hex filename
    210       0       0     210      d2 .zig-cache\led_blink_timer_intr.elf
```

##### uart_xprintf

---

Very simple [ChaN's xprintf()](https://elm-chan.org/fsw/strf/xprintf.html) test program

```zig
const io = @import("atmega328p");
const uart = @import("uart_atmega328p");
const util = @import("delay");
const c = @import("xprintf");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = io.BV(LED_PIN);

// -----
// main
// -----
export fn main() noreturn {
    uart.init(115200);
    c.xfunc_output = uart.putc; // Set putc for xprintf()
    io.DDRB.* |= LED_BIT;

    var num: f32 = 0;
    while (true) {
        c.xprintf("\n Number = %6.4f [sec]", num);
        c.xputs("  ---");
        num += 0.1234;
        io.PORTB.* ^= LED_BIT;
        util.delay_msec(1000);
    }
}
```

Build,

```sh
pwd
uart_xprintf

zig build
   text    data     bss     dec     hex filename
   4976      40       4    5020    139c .zig-cache\uart_xprintf.elf
```

Serial console out,

```sh
 Number = 0.0000 [sec]  ---
 Number = 0.1234 [sec]  ---
 Number = 0.2468 [sec]  ---
 Number = 0.3702 [sec]  ---
 Number = 0.4936 [sec]  ---
 Number = 0.6170 [sec]  ---
 Number = 0.7404 [sec]  ---
 Number = 0.8638 [sec]  ---
 Number = 0.9872 [sec]  ---
 Number = 1.1106 [sec]  ---
 Number = 1.2340 [sec]  ---
 Number = 1.3574 [sec]  ---
 Number = 1.4808 [sec]  ---
 Number = 1.6042 [sec]  ---
 Number = 1.7276 [sec]  ---
 Number = 1.8510 [sec]  ---
 Number = 1.9744 [sec]  ---
 Number = 2.0978 [sec]  ---
```


#### Other tools

---

- [arduino-cli](https://github.com/arduino/arduino-cli/releases)
