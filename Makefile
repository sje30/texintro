intro.pdf: intro.tex
	pdflatex intro
	bibtex intro
	pdflatex intro
	pdflatex intro


.PHONY: clean

clean:
	rm -fr intro.pdf

FILES = intro.pdf intro.tex sigmoid.pdf example.bib index.html makefig.R
web:	intro.pdf
	chmod o+rx $(FILES)
