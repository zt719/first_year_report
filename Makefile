.PHONY: all clean

main: *.tex
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex

%.tex: %.lagda.tex
	agda --latex $<

clean:
	rm *.agdai *.aux *.log *.ptb *.out
