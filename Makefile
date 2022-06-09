texfiles = $(basename $(wildcard *.tex))
outputfiles = $(texfiles:=.pdf)

%.pdf: %.tex
	pdflatex $(basename $<)
	rm -rf *.log *.aux

all: $(outputfiles)

clean:
	rm -rf *.log *.aux *.pdf
