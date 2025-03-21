.PHONY: dist
dist: lakodalmas.ly
	lilypond -dno-point-and-click $<

lakodalmas.pdf: lakodalmas.ly
	lilypond -dno-point-and-click $<

.PHONY: clean
clean:
	rm -f *.pdf
