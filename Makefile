.PHONY: slides.pdf all clean softclean hardclean live

export TEXINPUTS=.:./tex-custom//:

all: slides.pdf

slides.pdf: slides.tex
	latexmk -pdf -xelatex -shell-escape -use-make $<

live: slides.tex
	latexmk -f -pvc -pdf -xelatex -shell-escape -use-make $<

softclean:
	latexmk -c
	rm -rf *.bbl
	rm -rf *.synctex*
	rm -rf *.aux
	rm -rf *.blg
	rm -rf *.fls
	rm -rf *.nav
	rm -rf *.snm
	rm -rf *.fdb_latexmk
	rm -rf slides.out
	rm -rf *.toc
	rm -rf *.log

hardclean:
	latexmk -C

clean: softclean hardclean
