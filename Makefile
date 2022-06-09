texfiles = $(basename $(wildcard *.tex))
outputfiles = $(texfiles:=.pdf)

%.pdf : %.tex
	pdflatex $(basename $<)

all: $(outputfiles)

clean :
	rm -rf *.log *.aux
