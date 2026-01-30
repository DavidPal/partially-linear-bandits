.PHONY: all clean

FILE = main

all:
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)

read:
	open $(FILE).pdf &

clean:
	rm -f $(FILE).pdf
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.out *.toc
