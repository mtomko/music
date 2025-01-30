all: dev

dist: m40.ly
	lilypond -dno-point-and-click $<

dev: m40.ly
	lilypond $<

.PHONY: clean
clean:
	rm -f *.pdf
