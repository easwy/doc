<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ng="http://docbook.org/docbook-ng"
                xmlns:db="http://docbook.org/ns/docbook"
                xmlns:exsl="http://exslt.org/common"
                xmlns:exslt="http://exslt.org/common"
                exclude-result-prefixes="db ng exsl exslt"
                version='1.0'>

<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/html/docbook.xsl"/>

<xsl:output method="html"
            encoding="utf-8"
            indent="no"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>

</xsl:stylesheet>
