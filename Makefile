.PHONY: all clean

all:
	lualatex main.tex
	bibtex main.aux
	lualatex main.tex

%.tex: %.lagda.tex
	agda --latex $<

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
