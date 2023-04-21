<!--
1.2. Crea un fichero de transformación que muestre en una tabla HTML la siguiente
información: título, artista, país, precio y año, usando un color distinto dependiendo del
país de origen del disco
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <title> XSL 1.2 </title>

                <style>

                    table, th, td
                    {
                        border: 1px solid black;
                    }

                    th
                    {
                        background-color: green;
                    }

                </style>
            
            </head>

            <body>

                <h1> XSL 1.2 </h1>

                <table>

                    <tr>
                        <th> Titulo </th>
                        <th> Artista </th>
                        <th> País </th>
                        <th> Precio </th>
                        <th> Año </th>
                    </tr>
                
                    <xsl:for-each select="CATALOG/CD">
                            <xsl:choose>
                                <xsl:when test="COUNTRY = 'USA'">
                                    <tr bgcolor="yellow">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="COUNTRY = 'UK'">
                                    <tr bgcolor="lightblue">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="COUNTRY = 'UK'">
                                    <tr bgcolor="lightblue">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="COUNTRY = 'EU'">
                                    <tr bgcolor="lightgreen">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="COUNTRY = 'Norway'">
                                    <tr bgcolor="lightpink">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <tr bgcolor="white">
                                        <td> <xsl:value-of select="TITLE"/>     </td>
                                        <td> <xsl:value-of select="ARTIST"/>    </td>
                                        <td> <xsl:value-of select="COUNTRY"/>   </td>
                                        <td> <xsl:value-of select="PRICE"/>     </td>
                                        <td> <xsl:value-of select="YEAR"/>      </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                    </xsl:for-each>
                
                </table>
            
            </body>
            
        
        </html>
    
    </xsl:template>

</xsl:stylesheet>