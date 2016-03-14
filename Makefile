TARGETS := \
	notes.pdf \
	ov1.pdf

all: $(TARGETS)

open: all
	open ov1.pdf

%.eps: %.gp data.txt
	gnuplot $<

notes.pdf: notes.tex preamble.tex

ov1.pdf: ov1.tex preamble-en.tex

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f $(TARGETS) $(TARGETS:.pdf=.aux) $(TARGETS:.pdf=.log)
