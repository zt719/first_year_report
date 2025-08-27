.PHONY: main

main:
	lualatex main.tex
	bibtex main.aux
	lualatex main.tex
	lualatex main.tex

agda:
	agda --latex introduction.lagda.tex 
	agda --latex research.lagda.tex
	agda --latex outcomes.lagda.tex
	agda --latex conclusions.lagda.tex
	agda --latex future.lagda.tex
	agda --latex appendix.lagda.tex

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
