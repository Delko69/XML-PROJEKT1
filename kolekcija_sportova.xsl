<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:variable name="BrojSportova" select="count(//Sport)"/>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>Ponuda Sportova - TH</title>
                <meta name="keywords" content=""/>
                <meta name="description" content=""/>
                <link href="stil.css" rel="stylesheet" type="text/css" media="all"/>
            </head>
            <body>
                <div id="wrapper">
                    <div id="menu-wrapper">
                        <div id="menu" class="container">
                            <ul>
                                <li class="current_page_item"><a href="index.html">Početna</a></li>
                                <li><a href="ponuda.html">Ponuda</a></li>
                                <li><a href="kontakt.html">Kontakt</a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="page" class="container">
                        <p>Odaberite neki od <xsl:value-of select="$BrojSportova"/> ponuđenih sportova:</p>
                        <xsl:apply-templates select="//Sport"/>
                    </div>
                    <div id="sidebar">
                        <div class="box2">
                            <div class="title">
                                <h2>Navigacija</h2>
                            </div>
                            <ul class="style2">
                                <li><a href="index.html">Početna</a></li>
                                <li><a href="ponuda.html">Ponuda</a></li>
                                <li><a href="kontakt.html">Kontakt</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Sport">
        <div class="title">
            <h2><xsl:value-of select="Naslov"/></h2>
        </div>
        <img>
            <xsl:attribute name="src">
                <xsl:value-of select="Slika"/>
            </xsl:attribute>
        </img>
        <br/>
        <p>Gledanost: <b><xsl:value-of select="Gledanost"/></b></p>
        <p>Vrsta: <xsl:value-of select="Vrsta"/></p>
        <p>Godina osnutka: <xsl:value-of select="GodinaOsnutka"/></p>
        <br/>
        <a href="#">Saznajte više</a><br/>
    </xsl:template>

</xsl:stylesheet>
