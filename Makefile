XA=xa
MKHEX=mkhex
MKROM=mkrom

%.o65: %.a65
	$(XA) -o $@ $<

%.hex: %.o65
	$(MKHEX) $< > $@

%.rom: %.hex
	$(MKROM) $<

%.xab: %.rom
	split -b 16384 $< `basename $< .rom`".x"


mon1.a65: decl.a65 init.a65
