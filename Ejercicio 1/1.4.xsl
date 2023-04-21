<!--
1.4. Repite el ejercicio anterior, pero solo se mostrarán los discos que tengan un precio
inferior a 10 dólares y superior a 5 dólares. ¿Se puede?
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <title> XSL 1.4 </title>

                <style>

                    table, th, td
                    {
                        border: 1px solid black;
                    }

                    th
                    {
                        background-color: cyan;
                    }

                </style>
            
            </head>

            <body>

                <h1> XSL 1.4 </h1>

                <table>

                    <tr>
                        <th> Titulo </th>
                        <th> Artista </th>
                        <th> País </th>
                        <th> Precio </th>
                        <th> Año </th>
                    </tr>
                
                    <xsl:for-each select="CATALOG/CD">

                        <xsl:if test="COUNTRY='UK' and YEAR &lt; 2000 and PRICE &lt; 10 and PRICE &gt; 5">
                        
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