<!--
1.6. Crea un fichero de transformación que permita definir plantillas para los artistas y sus
nacionalidades. Los nombres de los artistas irán en un color y en un tamaño distinto a
las nacionalidades. Además, aparecerán ordenados por nacionalidad. ¿Se puede?
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head> 

                <title> XSL 1.5 </title>

                <style>

                    .artista
                    {
                        color: blue;
                        font-size: 20px;
                    }

                    .pais
                    {
                        color: red;
                    }

                </style>

            </head>

            <body>

                <h1> XSL 1.6 </h1>

                <xsl:apply-templates select="CATALOG"/>
            
            </body>            

        </html>
    
    </xsl:template>

    <xsl:template match="CATALOG">

        <xsl:for-each select="CD">
        <xsl:sort select="COUNTRY"/>

            <p>
                <xsl:apply-templates select="ARTIST"/>
                <xsl:apply-templates select="COUNTRY"/>
            </p>

        </xsl:for-each>

    </xsl:template>

    <xsl:template match="ARTIST">

        Artista
        <span class="artista"> <xsl:value-of select="."/> </span>
        <br/>

    </xsl:template>

    <xsl:template match="COUNTRY">

        Pais
        <span class="pais"> <xsl:value-of select="."/> </span>

    </xsl:template>

</xsl:stylesheet>