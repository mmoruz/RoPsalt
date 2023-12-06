<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="psalm">
        <html>
            <body>
                <h2>Psalm <xsl:value-of select="@id"/></h2>
                <xsl:apply-templates select="version"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="version">
        <xsl:apply-templates select="verse"/>
    </xsl:template>
    
    <xsl:template match="verse">
        <p><xsl:value-of select="@id"/>. <xsl:apply-templates select="language"> </xsl:apply-templates></p>
    </xsl:template>
    
    <xsl:template match="language">
        <xsl:if test="@value='Sla'"><span style="font-family:CyrillicaBulgarian10U; color:red "><xsl:value-of select="."/></span><br/></xsl:if>
        <xsl:if test="@value='Ro'"><span style="color:blue"><xsl:value-of select="."/></span><br/></xsl:if>
    </xsl:template>
    
</xsl:stylesheet>