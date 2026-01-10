DIRS = \
	atmega328p/iop  \
	atmega328p/uart \
	atmega328p/pwm  \
	atmega328p/spi  \
	atmega328p/systick  \
	delay           \
	xprintf

all:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

clean:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

fmt:
	$(foreach exdir,$(DIRS), $(call def_make,$(exdir),$@))

#
define def_make
	@echo ==== Enter: $(1) ====
	@$(MAKE) -C  $(1) $(2)

endef

MAKEFLAGS += --no-print-directory
