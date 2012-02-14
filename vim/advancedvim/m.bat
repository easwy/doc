@echo off

set OFORMAT=html
set ODIR=%OFORMAT%
set XSLFILE=E:\80Docbook\docbook-xsl-1.74.0\%OFORMAT%\chunk_utf8.xsl

if not exist %ODIR% mkdir %ODIR%

xsltproc --stringparam html.stylesheet "http://easwy.com/blog/uploads/css/style.css" -o %ODIR%\vim_advanced_usage.%OFORMAT% %XSLFILE% vim_advanced_usage.xml
