<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="//tei:title[@type='main']"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:TEI">
        <div style="background-color: white; color: black; text-align: left; font-size: 20;
            margin-left: 140px; margin-right:40px; margin-top:10px; margin-bottom:40px; padding: 50px; border-radius: 20px;">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:correspAction[@type='sent']/tei:persName">
        <p>
            <xsl:apply-templates />
        </p>
    </xsl:template>
    
    <xsl:template match="tei:dateline">
        <div style="font-size: 30; line-height:200%;">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:salute">
        <div style="font-size: 25; line-height:1.3;">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p><xsl:apply-templates /></p>
    </xsl:template>
       
    <xsl:template match="tei:div">
        <div style="font-size: 20; font-style: normal;  margin-top: 15; font-weight: 300">
            -Seite<xsl:value-of select="@n"/>-
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:lb">
        <br>
            <xsl:apply-templates />
        </br>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rendition='#et']">
        <span style="margin-left: 15px;">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rendition='#right']">
        <span style="margin-left: 55px;">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rendition='#u']">
        <u>
            <xsl:apply-templates />
        </u>
    </xsl:template>
    
    <xsl:template match="tei:hi[@rendition='#s']">
        <s>
            <xsl:apply-templates />
        </s>
    </xsl:template>
    
    <xsl:template match="tei:ref">
        <a href="{@target}" style="color:purple;text-decoration:underline;">
            <xsl:apply-templates />
        </a>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
    </xsl:template>
   
</xsl:stylesheet>
