MAINFILE=main

all : pdf

pdf	: clean
	pdflatex ${MAINFILE}.tex
	pdflatex ${MAINFILE}-frn.tex
	bibtex ${MAINFILE}
	pdflatex ${MAINFILE}
	pdflatex ${MAINFILE}
	evince ${MAINFILE}.pdf&

clean	:
	  -rm -f *.snm *.nav *.out *.log *.aux *.dvi *.bbl *.blg *.ilg *.toc *.lof *.lot *.idx *.ind *.ps *~

