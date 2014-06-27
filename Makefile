pdf	: clean
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main
	evince main.pdf&

clean	:
	  -rm -f *.snm *.nav *.out *.log *.aux *.dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind *.ps *~

