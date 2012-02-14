<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ng="http://docbook.org/docbook-ng"
                xmlns:db="http://docbook.org/ns/docbook"
                xmlns:exsl="http://exslt.org/common"
                xmlns:exslt="http://exslt.org/common"
                exclude-result-prefixes="db ng exsl exslt"
                version='1.0'>

<xsl:import href="stylesheet/html/chunk.xsl"/>

<xsl:param name="chunker.output.encoding" select="'utf-8'"/>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="use.id.as.filename" select="1"/>

</xsl:stylesheet>
