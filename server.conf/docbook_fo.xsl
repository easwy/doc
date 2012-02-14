<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:ng="http://docbook.org/docbook-ng"
                xmlns:db="http://docbook.org/ns/docbook"
                exclude-result-prefixes="db ng exsl"
                version='1.0'>

<xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl"/>
<xsl:param name="body.font.family">SimSun</xsl:param>
<xsl:param name="monospace.font.family">SimSun</xsl:param>
<xsl:param name="title.font.family">SimSun</xsl:param>
<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>

</xsl:stylesheet>
