.PHONY: example.pdf all clean softclean hardclean live

export TEXINPUTS=.:./tex-custom//:../theme//:

all: example.pdf

example.pdf: example.tex
	latexmk -pdf -xelatex -shell-escape -use-make $<

live: example.tex
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
	rm -rf example.out
	rm -rf *.toc
	rm -rf *.log

hardclean:
	latexmk -C

clean: softclean hardclean
