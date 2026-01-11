const io = @import("atmega328p");
const F_CPU = 16_000_000;

const INTERVAL_1MSEC: u8 = @intCast(((F_CPU / 1000) + (256 << 1)) / 256);

pub const systick = struct {
    // Define tick variable with 8bit/16bit width
    // 1Tick = 1msec
    var bticks: u8 = 0;
    var pbticks: *volatile u8 = &bticks;

    //var wticks: u16 = 0;
    //var pwTicks: *volatile u16 = &wticks;

    var wuser_ticks: u16 = 0;
    var pwuser_ticks: *volatile u16 = &wuser_ticks;

    var fuser_ticks_trigger = false;
    var pfuser_ticks_trigger: *volatile bool = &fuser_ticks_trigger;

    var wuser_ticks_reload: u16 = 0;
    var pwuser_ticks_reload: *volatile u16 = &wuser_ticks_reload;
    //var uFunc: ?*addrspace(.flash) const fn () void = null;

    pub fn init() void {
        io.TCCR0B.* = io.BV(io.CS02); //         clk / 256
        io.setbit(io.TIFR0, io.TOV0); //        Note: Setting TOV0=1 by software is equal to clear TOV0 flag.
        io.TIMSK0.* = io.BV(io.TOIE0);
        io.TCNT0.* = (255 - INTERVAL_1MSEC); //  1msec
    }

    pub fn get_tick_counter_u8() u8 {
        return pbticks.*;
    }

    pub fn set_tick_counter_u8(ms: u8) void {
        pbticks.* = ms;
    }

    pub fn millis_u8() u8 {
        return pbticks.*;
    }

    pub fn wait_ms_u8(ms8bit: u8) void {
        pbticks.* = ms8bit;
        while (pbticks.* > 0) {}
    }

    pub fn wait_ms_u16(ms: u16) void {
        var ms16bit = ms;
        while (ms16bit > 0) {
            wait_ms_u8(1);
            ms16bit -= 1;
        }
    }

    pub fn stop_user_ticks_u16() void {
        set_user_ticks_u16(0);
    }

    pub fn set_user_ticks_u16(ticks: u16) void {
        const sreg = asm volatile ("in %[res], 0x3F"
            : [res] "=r" (-> u8),
        ); // Star atomic access
        asm volatile ("cli");
        pwuser_ticks.* = ticks;
        pwuser_ticks_reload.* = ticks;
        asm volatile ("out 0x3F, %[src]"
            :
            : [src] "r" (sreg),
        );
    }

    pub fn is_user_ticks_trigger() bool {
        return pfuser_ticks_trigger.*;
    }

    pub fn clear_user_ticks_trigger() void {
        pfuser_ticks_trigger.* = false;
    }

    // Use Timer0
    // Interrupt routin
    pub fn systick_intr() void {
        asm volatile ("sei");
        io.TCNT0.* = (255 - INTERVAL_1MSEC);
        if (pbticks.* > 0) pbticks.* -= 1;

        asm volatile ("cli");
        if (pwuser_ticks.* > 0) {
            pwuser_ticks.* -= 1;
        } else {
            if (pwuser_ticks_reload.* > 0) {
                pwuser_ticks.* = pwuser_ticks_reload.*;
                pfuser_ticks_trigger.* = true;
            }
        }
        asm volatile ("sei");
    }
};

// TIMER0_OVF_vect: Interrupt
export const __vector_16 = TIMER0_OVF_vect;
fn TIMER0_OVF_vect() callconv(.avr_interrupt) void {
    systick.systick_intr();
}
