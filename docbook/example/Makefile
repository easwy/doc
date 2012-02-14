# Docbook Makefile
# Easwy Yang

XSLFILE=docbook_easwy.xsl

XML_FILE=$(wildcard *.xml)
HTML_FILE=$(XML_FILE:.xml=.html)

.PHONY: html clean

html : $(HTML_FILE)

%.html : %.xml
	xsltproc -o $(@F) $(XSLFILE) $<

clean:
	rm *.html
