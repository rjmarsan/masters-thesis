TARGETS := thesis.tex

.PHONY : all rubber

all: rubber

rubber: $(TARGETS:%.tex=%-pdf)

%-pdf : %.tex
	rubber --pdf -Wrefs -Wmisc $<

clean: $(TARGETS:%.tex=%-clean)
	rm -f *.vrb
	rm -f *.bak
	rm -f *~
	rm -f *.loa

%-clean : %.tex
	rubber --pdf --clean $<
