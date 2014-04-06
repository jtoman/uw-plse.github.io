PANDOC = pandoc
PDOPTS = -f markdown -t html -c style.css -A tracking.js

PAGES = index.md
HTMLS = $(PAGES:.md=.html)

all: $(HTMLS)

%.html: %.md
	$(PANDOC) $(PDOPTS) -o '$*.html' '$*.md'

clean:
	rm -f $(HTMLS)

.PHONY: all clean


