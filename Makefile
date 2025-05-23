.PHONY: all clean

all:
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex

%.tex: %.lagda.tex
	agda --latex $<

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
