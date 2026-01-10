# All examples will be built at a time.
#
EXAMPLE_DIRS := \
							examples/arduino_atmega328p/led_blink_delay      \
							examples/arduino_atmega328p/led_blink_timer_intr \
							examples/arduino_atmega328p/pwm_timer_spi_uart   \
							examples/arduino_atmega328p/uart_xprintf

all:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))

.PHONY: clean cleanexe

clean:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))
	$(MAKE) -C src/libzig $@

cleanall: clean cleanexe
cleanexe:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))

cleancache:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))

#
define def_make
	@echo ==== Enter: $(1) ====
	@-$(MAKE) -C  $(1) $(2)
	@#$(MAKE) -C  $(1) cleancache

endef

fmt:
	$(foreach exdir,$(EXAMPLE_DIRS), $(call def_make,$(exdir),$@ ))
	$(MAKE) -C src/libzig $@



MAKEFLAGS += --no-print-directory
