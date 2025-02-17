.PHONY: dist
dist: vivaldi-sonata-4-ii.ly
	lilypond -dno-point-and-click $<

vivaldi-sonata-4-ii.pdf: vivaldi-sonata-4-ii.ly
	lilypond -dno-point-and-click $<

.PHONY: clean
clean:
	rm -f *.pdf
