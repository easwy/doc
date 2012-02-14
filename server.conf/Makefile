# Makefile for docbook
#

.PHONY: all clean

HTMLXSL = ~/00mydoc/docbook_html.xsl
FOXSL = ~/00mydoc/docbook_fo.xsl
FOPCONF = /etc/fop/fop.xconf

FOP = ~/bin/fop/fop
XSLTPROC = /usr/bin/xsltproc

# Source File
XML_FILES=$(wildcard *.xml)
I_FILE = 00index.xml
O_HTML = $(patsubst %.xml,%.html,$(I_FILE))
O_FO = $(patsubst %.xml,%.fo,$(I_FILE))
O_PDF = $(patsubst %.xml,%.pdf,$(I_FILE))

html: html/$(O_HTML)

html/$(O_HTML): $(XML_FILES)
	$(XSLTPROC) --stringparam html.stylesheet "style.css" -o $@ $(HTMLXSL) $(I_FILE)

all: html pdf

pdf: pdf/$(O_PDF)

pdf/$(O_PDF): pdf/$(O_FO)
	$(FOP) -c $(FOPCONF) $< -pdf $@

pdf/$(O_FO): $(XML_FILES)
	$(XSLTPROC) -o $@ $(FOXSL) $(I_FILE)

clean:
	@rm html/*.html pdf/*.fo pdf/*.pdf 2>/dev/null

publish:
	@mkdir attachment
	@zip -r mrs_html.zip html/
	@zip -r mrs_pdf.zip pdf/*.pdf
	@mv mrs_*.zip attachment/
