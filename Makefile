AGDA_DIR := agda
AGDA_TEX := introduction.tex prerequisites.tex

.PHONY: all clean

main: $(AGDA_TEX)
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex

%.tex: %.lagda.tex
	agda --latex $<

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
