#
# Makefile
# Easwy Yang
# 2009/03/22 

XSLFILE=../../chunk_html.xsl
XMLSRC=vim_basic_usage.xml
HTMLOBJ=$(subst $(XMLSRC),.xml,.html)

all : vim_basic_usage.xml
	xsltproc --stringparam html.stylesheet "http://easwy.com/blog/uploads/css/style.css" \
	    -o html/$(HTMLOBJ) $(XSLFILE) $(XMLSRC)


clean:
	@rm html/*.html
