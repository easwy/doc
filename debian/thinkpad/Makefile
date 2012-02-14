# Makefile for docbook
#

.PHONY: all clean

export DOCDIR = $(firstword $(subst /doc, ,$(CURDIR)))/doc
HTMLXSL = $(DOCDIR)/chunk_html.xsl
FOXSL = $(DOCDIR)/docbook_fo.xsl
FOPCONF=$(DOCDIR)/fop.xconf

FOP = /usr/bin/fop
XSLTPROC= /usr/bin/xsltproc

XML_FILES=$(wildcard(*.xml)

html: html/index.html

html/index.html: $(XML_FILES)
	$(XSLTPROC) --stringparam html.stylesheet "http://easwy.com/blog/uploads/css/style.css" \
	    -o html/index.html $(HTMLXSL) debian_on_thinkpad.xml

all: html pdf

pdf: pdf/vim_advanced_usage.pdf

pdf/vim_advanced_usage.pdf: pdf/vim_advanced_usage.fo
	$(FOP) -c $(FOPCONF) pdf/vim_advanced_usage.fo -pdf pdf/vim_advanced_usage.pdf

pdf/vim_advanced_usage.fo: $(XML_FILES)
	$(XSLTPROC) -o pdf/vim_advanced_usage.fo $(FOXSL) vim_advanced_usage.xml

clean:
	@rm html/*.html pdf/*.fo pdf/*.pdf 2>/dev/null

publish:
	zip -r advanced_vim_skills_html.zip html/
	zip -r advanced_vim_skills_pdf.zip pdf/vim_advanced_usage.pdf
	mv advanced_vim_skills_*.zip attachment/
