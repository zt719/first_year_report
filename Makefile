.PHONY: all clean

all:
	lualatex main.tex
	bibtex main.aux
	lualatex main.tex
	lualatex main.tex

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
