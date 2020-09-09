XA=xa
MKHEX=mkhex
MKROM=mkrom

%.x65: %.a65
	$(XA) -M -o $@ $<

%.hex: %.x65
	$(MKHEX) $< > $@

%.rom: %.hex
	$(MKROM) $<

%.xab: %.rom
	split -b 16384 $< `basename $< .rom`".x"


