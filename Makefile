TARGETS := \
	notater.pdf \
	ov1.pdf

all: $(TARGETS)

open: all
	open ov1.pdf

%.eps: %.gp data.txt
	gnuplot $<

notater.pdf: notater.tex preamble.tex

ov1.pdf: ov1.tex preamble.tex

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f $(TARGETS) $(TARGETS:.pdf=.aux) $(TARGETS:.pdf=.log)
