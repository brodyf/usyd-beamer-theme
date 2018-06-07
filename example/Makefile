# Name of the input and output file. Change as desired:
FILENAME = example

.PHONY: $(FILENAME).pdf all clean softclean hardclean live

# Path back to original theme + add a subdirectory tex-custom for any
# custom LaTeX files which this one uses.
export TEXINPUTS=.:./tex-custom//:../theme//:

all: $(FILENAME).pdf

$(FILENAME).pdf: $(FILENAME).tex
	latexmk -pdf -xelatex -shell-escape -use-make $<

live: $(FILENAME).tex
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
	rm -rf $(FILENAME).out
	rm -rf *.toc
	rm -rf *.log

hardclean:
	latexmk -C

clean: softclean hardclean
