all: pdf_4_3 pdf_16_9

pdf_4_3:
	latexmk -xelatex slides_4_3.tex

pdf_16_9:
	latexmk -xelatex slides_16_9.tex

watch:
	latexmk -xelatex -pvc slides.tex

clean:
	latexmk -c
	rm -f *.nav
	rm -f *.snm
	rm -f *.xdv
	rm -f *.synctex.gz

clean-all: clean
	rm -f *.pdf

.PHONY: clean clean-all
