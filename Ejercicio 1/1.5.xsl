<!--
1.5. Crea un fichero de transformación que muestre en una lista ordenada HTML los títulos
de los discos y justo a continuación usando una lista no ordenada muestre el autor y el
año de dicho disco.
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <title> XSL 1.5 </title>
            
            </head>

            <body>

                <h1> XSL 1.5 </h1>

                <ol>
                    <xsl:for-each select="CATALOG/CD">
                    <xsl:sort select="TITLE" order="ascending"/>

                        <li> <xsl:value-of select="TITLE"/> </li>

                        <ul>
                            <li> <xsl:value-of select="ARTIST"/> </li>       
                            <li> <xsl:value-of select="YEAR"/> </li>                     
                        </ul> 

                    </xsl:for-each>
                </ol> 
            
            </body>
            
        </html>
    
    </xsl:template>

</xsl:stylesheet>