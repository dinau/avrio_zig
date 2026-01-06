DIRS = \
	atmega328p \
	delay      \
	uart       \
	xprintf_int

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
