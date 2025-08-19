.PHONY: main

agda:
	agda --latex introduction.lagda.tex 
	agda --latex research.lagda.tex
	agda --latex scwfs.lagda.tex
	agda --latex outcomes.lagda.tex
	agda --latex appendix.lagda.tex

main:
	lualatex main.tex
# 	bibtex main.aux
# 	lualatex main.tex
# 	lualatex main.tex

clean:
	rm *.aux *.out *.log *.ptb *.bbl *.blg *.toc *dvi
