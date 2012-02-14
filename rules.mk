#
# Makefile
# Easwy Yang
# 2009/04/13 

# Tools
FOP = /usr/bin/fop
XSLTPROC= /usr/bin/xsltproc

# Config files
export DOCDIR = $(firstword $(subst /doc, ,$(CURDIR)))/doc
HTMLXSL=$(DOCDIR)/docbook_html.xsl
FOXSL=$(DOCDIR)/docbook_fo.xsl
FOPCONF=$(DOCDIR)/fop.xconf

# Source files
XML_FILE=$(wildcard *.xml)

# HTML files
HTML_FILE=$(patsubst %.xml,%.html,$(XML_FILE))
HTML_OBJ=$(addprefix html/, $(HTML_FILE))

# PDF files
PDF_FILE=$(patsubst %.xml,%.pdf,$(XML_FILE))
PDF_OBJ=$(addprefix pdf/, $(PDF_FILE))

# STYLESHEET
STYLE = http://easwy.com/blog/uploads/css/style.css

.PHONY: default html pdf clean

default : $(HTML_OBJ)

all: html pdf

html: $(HTML_OBJ)

pdf: $(PDF_OBJ)

html/%.html : %.xml
	$(XSLTPROC) --stringparam html.stylesheet "$(STYLE)" -o $@ $(HTMLXSL) $<

pdf/%.pdf : %.xml
	$(XSLTPROC) -o pdf/$*.fo $(FOXSL) $<
	$(FOP) -c $(FOPCONF) pdf/$*.fo -pdf $@

clean:
	@rm html/*.html pdf/*.fo pdf/*.pdf 2> /dev/null
