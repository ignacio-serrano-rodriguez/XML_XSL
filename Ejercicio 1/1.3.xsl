<!--
1.3. Crea un fichero de transformación que muestre en una tabla HTML la siguiente
información: título, artista, país, precio y año, pero solo de los discos de "UK" que sean
anteriores al año 2000 y tengan un precio inferior a 10 dólares
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <title> XSL 1.3 </title>

                <style>

                    table, th, td
                    {
                        border: 1px solid black;
                    }

                    th
                    {
                        background-color: red;
                    }

                </style>
            
            </head>

            <body>

                <h1> XSL 1.3 </h1>

                <table>

                    <tr>
                        <th> Titulo </th>
                        <th> Artista </th>
                        <th> País </th>
                        <th> Precio </th>
                        <th> Año </th>
                    </tr>
                
                    <xsl:for-each select="CATALOG/CD">

                        <xsl:if test="COUNTRY='UK' and YEAR &lt; 2000 and PRICE &lt; 10">
                        
                            <tr> 
                                <td> <xsl:value-of select="TITLE"/>     </td>
                                <td> <xsl:value-of select="ARTIST"/>    </td>
                                <td> <xsl:value-of select="COUNTRY"/>   </td>
                                <td> <xsl:value-of select="PRICE"/>     </td>
                                <td> <xsl:value-of select="YEAR"/>      </td>
                            </tr>

                        </xsl:if>
                    
                    </xsl:for-each>
                
                </table>
            
            </body>
            
        
        </html>
    
    </xsl:template>

</xsl:stylesheet>