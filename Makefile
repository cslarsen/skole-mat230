TARGETS := \
	plot.eps plot1c.eps oblig1.pdf \
	oblig2.pdf \
	oblig3.pdf

all: $(TARGETS)

open: all
	open oblig3.pdf

%.eps: %.gp data.txt
	gnuplot $<

plot1c.eps: plot1c.gp data1c.txt

oblig1.pdf: oblig1.tex plot.eps plot1c.eps preamble.tex
oblig2.pdf: oblig2.tex preamble.tex
oblig3.pdf: oblig3.tex preamble.tex

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f $(TARGETS) $(TARGETS:.pdf=.aux) $(TARGETS:.pdf=.log)
