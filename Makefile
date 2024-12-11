index = index

simple_build:
	latex $(index).tex
	pdflatex $(index)

clean:
	rm -f $(index).aux $(index).dvi $(index).log texput.log

build: simple_build clean

open: build
	open ${index}.pdf
