TITLE := la-mer
LY := $(TITLE).ly 
PDF := $(TITLE).pdf

.PHONY: dist
dist: $(LY)
	lilypond -dno-point-and-click $<

$(PDF): $(LY)
	lilypond -dno-point-and-click $<

.PHONY: clean
clean:
	rm -f *.pdf
