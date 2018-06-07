# usyd-beamer-theme

An unofficial [Beamer](https://en.wikipedia.org/wiki/Beamer_(LaTeX)) theme for
the [University of Sydney](http://sydney.edu.au)'s latest redesign.

See `example/example.tex` for a reference file, and `example/example.pdf` for
the output. This example is compiled using the command `xelatex example.tex` or
`make all softclean`.

To use this theme, use a copy of `example/` as your project directory and edit
`Makefile` to fix the path to `theme/` in `TEXINPUTS` on line 3.

Make sure you have the font `Tw Cen MT` installed (this is the main font used
by the theme). 

This theme is based on [the one by
mfjones](https://github.com/mfjones/usyd-beamer-theme), which itself is based
on Cameron Bracken's theme, originally posted here:
[cameron.bracken.bz/beamer-template](http://cameron.bracken.bz/beamer-template).
