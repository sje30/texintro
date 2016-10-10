intro.pdf: intro.tex
	pdflatex intro
	bibtex intro
	pdflatex intro
	pdflatex intro

## intro-tex.pdf is a formatted version of the .tex input file.
intro-tex.pdf: intro.tex
	a2ps $^ -o - | ps2pdf - > $@

.PHONY: clean

clean:
	rm -fr intro.pdf intro-tex.pdf

FILES = intro.pdf intro.tex sigmoid.pdf example.bib index.html makefig.R
web:	intro.pdf
	chmod o+rx $(FILES)
