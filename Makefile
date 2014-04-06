PANDOC = pandoc
PDOPTS = -f markdown -t html -c http://uw-plse.github.io/style.css -A tracking.js

PAGES = $(wildcard *.md) $(wildcard */*.md)
HTMLS = $(PAGES:.md=.html)

all: $(HTMLS)

%.html: %.md
	@echo "PANDOC $*.md"
	@$(PANDOC) $(PDOPTS) -o '$*.html' '$*.md'

clean:
	rm -f $(HTMLS)

.PHONY: all clean


