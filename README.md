<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [avrio_zig](#avrio_zig)
  - [Prerequisites](#prerequisites)
  - [Zig fetch and build](#zig-fetch-and-build)
  - [Build examples for Arduino Uno R3 / Nano / Compatibles (ATMega328p)](#build-examples-for-arduino-uno-r3--nano--compatibles-atmega328p)
    - [led_blink_delay](#led_blink_delay)
    - [led_blink_timer_intr](#led_blink_timer_intr)
    - [uart_xprintf](#uart_xprintf)
    - [pwm_timer_spi_uart](#pwm_timer_spi_uart)
  - [I/O port definition file](#io-port-definition-file)
  - [Other tools](#other-tools)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### avrio_zig

---

The bare metal definitions of I/O ports and examples for Atmel AVR in Zig  
Now only supports **Arduino Uno 3** board. (ATMega328p)


#### Prerequisites

---

- Zig compiler  
- [x] 0.15.2  
    Windows: [zig-x86_64-windows-0.15.2.zip](https://ziglang.org/download/0.15.2/zig-x86_64-windows-0.15.2.zip)  
    Linux:   [zig-x86_64-linux-0.15.2.tar.xz](https://ziglang.org/download/0.15.2/zig-x86_64-linux-0.15.2.tar.xz)  
- [x] 0.16.0-dev.2535 is OK  

- avr-gcc: Using v7.3.0 for link stage  
    - You must use avr-gcc **v7.3.0** at this moment.  
    - You need to **add** the folder containing avr-gcc.exe to **your executable path**.
       - Windows (for 32/64bit common): [avr-gcc-7.3.0-atmel3.6.1-arduino7-i686-w64-mingw32.zip](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-i686-w64-mingw32.zip)  
       - macOS: [avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-apple-darwin14.tar.bz2](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-apple-darwin14.tar.bz2)  
       - Linux (64bit): [avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-pc-linux-gnu.tar.bz2](https://downloads.arduino.cc/tools/avr-gcc-7.3.0-atmel3.6.1-arduino7-x86_64-pc-linux-gnu.tar.bz2)  
    - or install [Aruduino IDE 2.3.7](https://www.arduino.cc/en/software/) or  [Arduino CLI](https://github.com/arduino/arduino-cli/releases)

- Hex file writer (Uploader) tool. (Optional)  
AVRDUDESS: https://blog.zakkemble.net/avrdudess-a-gui-for-avrdude  
XLoader: https://github.com/laurentmas/XLoader

#### Zig fetch and build

---

1. Zig fetch `avrio_zig`  
Go to your work folder,

   ```sh
   mkdir myapp
   cd myapp
   zig init
   
   zig fetch --save git+https://github.com/dinau/avrio_zig

   info: resolved to commit 9db022ad93b79fc44a3f3cdbbf3aa98f1e6aa62b
   ```

1. Copy template fiie  
Overwrite `myapp/build.zig` by this template, [examples/template/build.zig](https://github.com/dinau/avrio_zig/examples/template/build.zig)  
You can set `dependencies` (additional libraries) in `build.zig`, see [avrio_zig/build.zig.zon](https://github.com/dinau/avrio_zig/blob/main/build.zig.zon)

   ```zig
   "atmega328p",       // I/O definition file
   "delay",            // Dumb delay function
   "uart_atmega328p",  // UART
   "xprintf",          // printf library
   ... snip ...
   ```

1. Edit src/main.zig  
Replace the content of main.zig with LED blinker program,

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

1. Build  
First comfirm avr-gcc version,


   ```sh
   $ avr-gcc --version
   avr-gcc (GCC) 7.3.0
   Copyright (C) 2017 Free Software Foundation, Inc.
   This is free software; see the source for copying conditions.  There is NO
   warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
   ```

   Build project,

   ```sh
   pwd
   myapp
   
   $ zig build
      text    data     bss     dec     hex filename
       260       0       0     260     104 .zig-cache\template.elf
   ```
 
   Result in the folder structure, 

   ```sh
   myapp
   |-- build.zig
   |-- build.zig.zon
   |-- template.lst          <== If you use 'make', an assembler list file will be generated
   |-- src
   |   |-- main.zig  
   |   `-- root.zig          <== Not used
   `-- zig-out
       `-- bin
           |-- template.elf
           `-- template.hex  <== Upload to Arduino Uno R3 with avrdude or AVRDUDESS ...
   ```

#### Build examples for Arduino Uno R3 / Nano / Compatibles (ATMega328p)

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

zig build  # or make
   text    data     bss     dec     hex filename
    260       0       0     260     104 .zig-cache\led_blink_delay.elf
```

Upload HEX file to Arduino Uno R3 board,

```sh
$ avrdude.exe -c arduino -P COM3 -p m328p -b 115200 -e -U flash:w:"zig-out\bin\led_blink_delay.hex":a

Reading 260 bytes for flash from input file led_blink_delay.hex
Writing 260 bytes to flash
Writing | ################################################## | 100% 0.07 s
Reading | ################################################## | 100% 0.04 s
260 bytes of flash verified

Avrdude done.  Thank you.
```

The COM port number must be appropriately set, such as `-P COM3`.  
Or use AVRDUDESS or XLoader aforementioned.



##### led_blink_timer_intr

---

Very simple LED blinker program with TIMER interrupt.

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
led_blink_timer_intr

$ zig build  # or make
    text    data     bss     dec     hex filename
     210       0       0     210      d2 .zig-cache\led_blink_timer_intr.elf
```

##### uart_xprintf

---

- Very simple [ChaN's xprintf()](https://elm-chan.org/fsw/strf/xprintf.html) test program
- UART with xprintf(), 115200bps baudrate

```zig
const io = @import("atmega328p");
const uart = @import("uart_atmega328p");
const util = @import("delay");
const c = @import("xprintf");

const LED_PIN: u8 = 5; // D13
const LED_BIT: u8 = io.BV(LED_PIN);

export fn main() noreturn {
    uart.init(115200); // Set baudrate
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

$ zig build  # or make
    text    data     bss     dec     hex filename
    4976      40       4    5020    139c .zig-cache\uart_xprintf.elf
```

Serial console out,

```sh
 Number = 0.0000 [sec]  ---
 Number = 0.1234 [sec]  ---
 Number = 0.2468 [sec]  ---
 Number = 0.3702 [sec]  ---
 ... snip ...
```

##### pwm_timer_spi_uart

---

Example, [pwm_timer_spi_uart: main.zig](examples/arduino_atmega328p/pwm_timer_spi_uart/src/main.zig),  
- Timer interrupt and Systick
- UART with xprintf(), 115200bps baudrate
- PWM out and its period interrupt  

   | Name        | Reg. | Port | IC pin | Ardiuno board pin |
   |-------------|------|------|--------|-------------------|
   | PWM out Lch | OC1A | PB1  | 15pin  | D9                |
   | PWM out Rch | OC1B | PB2  | 16pin  | D10               |

- SPI data out, 8MHz clock  

   | Name   | Port      | IC Pin      | Arduino board pin |
   |--------|-----------|-------------|-------------------|
   | SPI CS | PB0 / PD4 | 4pin / 6pin | D8 / D4           |
   | SCK    | PB5       | 19pin       | D13               |
   | MISO   | PB4       | 18pin       | D12               |
   | MOSI   | PB3       | 17pin       | D11               |


Build,

```sh
pwd
pwm_timer_spi_uart

$ zig build  # or make
    text    data     bss     dec     hex filename
    5198      50      14    5262    148e .zig-cache\pwm_timer_spi_uart.elf
```

Serial console out,

```sh
[0000]  45886 [Hz] : (PWM 44100 [Hz])
[0001]  45886 [Hz] : (PWM 44100 [Hz])
[0002]  45886 [Hz] : (PWM 44100 [Hz])
[0003]  45886 [Hz] : (PWM 44100 [Hz])
[0004]  45886 [Hz] : (PWM 44100 [Hz])
[0005]  45886 [Hz] : (PWM 44100 [Hz])
 ... snip ...
```

#### I/O port definition file

---

[src/libzig/atmega328p/iop/src/atmega328p.zig](https://github.com/dinau/avrio_zig/blob/main/src/libzig/atmega328p/iop/src/atmega328p.zig)

#### Other tools

---

- [arduino-cli](https://github.com/arduino/arduino-cli/releases)
