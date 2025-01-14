all: dev

dist: bwv1028.ly bass/solo-tuning.ly
	lilypond -dno-point-and-click $<

dev: bwv1028.ly bass/solo-tuning.ly
	lilypond $<

.PHONY: clean
clean:
	rm -f *.pdf
