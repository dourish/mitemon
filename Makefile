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

mon2.a65: decl.a65 init.a65

mon3.a65: decl.a65 init.a65

mon4.a65: decl.a65 init.a65

mon5.a65: decl.a65 init.a65 stack.a65
