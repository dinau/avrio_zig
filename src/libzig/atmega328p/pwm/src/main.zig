const io = @import("atmega328p");
const F_CPU = 16_000_000;

// PWM out
// OC1A: PB1, 15pin, D9, Lch
// OC1B: PB2, 16pin, D10,Rch
//

pub const pwm = struct {
    pub const pwm1 = struct {
        pub inline fn duty(d: u8) void {
            io.OCR1A.* = d;
        }
    };

    pub const pwm2 = struct {
        pub inline fn duty(d: u8) void {
            io.OCR1B.* = d;
        }
    };

    pub inline fn set_duty_ch1(d: u8) void { // Duty Left: Lch 0..255
        pwm1.duty(d);
    }

    pub inline fn set_duty_ch2(d: u8) void { // Duty Right: Rch 0..255
        pwm2.duty(d);
    }

    pub inline fn set_period(d: u16) void {
        io.ICR1.* = d;
    }

    pub inline fn get_period() u16 {
        return io.ICR1.*;
    }

    pub inline fn is_period_timer_start() bool {
        return 1 == io.TCCR1B.* & io.BV(0);
    }

    pub inline fn start_period_timer() void {
        stop_period_timer();
        io.TCCR1B.* |= io.BV(io.CS10); //  clk_io / 1;
    }

    pub inline fn stop_period_timer() void {
        io.TCCR1B.* &= 0xF8;
    }

    pub inline fn set_period_hz(sample_rate_hz: i32) void {
        const t0 = F_CPU + (sample_rate_hz >> 1);
        const t1 = (t0 / sample_rate_hz) - 1;
        set_period(t1);
    }

    pub inline fn enable_period_intr() void {
        //io.setbit(io.TIFR1, io.TOV1);    // Setting is to be cleared.
        io.setbit(io.TIMSK1, io.TOIE1);
    }

    pub inline fn disable_period_intr() void {
        io.clrbit(io.TIMSK1, io.TOIE1);
    }

    pub inline fn init() void { // clear when match and FAST PWM TOP=ICR1
        io.TCCR1A.* = (0b1010 << 4) | io.BV(io.WGM11);
        io.TCCR1B.* = io.BV(io.WGM13) | io.BV(io.WGM12); // FAST PWM and stop pwm
        io.TCNT1.* = 0;
    }
};
