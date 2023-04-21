<!--
1.1. Crea un fichero de transformación que muestre en una tabla HTML la siguiente
información para cada CD: título, artista, país, precio y año. El listado aparecerá
ordenado por año (primero aparecerán los más nuevos y luego los más antiguos)
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
            
                <title> XSL 1.1 </title>

                <style>

                    table, th, td
                    {
                        border: 1px solid black;
                    }

                    th
                    {
                        background-color: yellow;
                    }

                </style>
            
            </head>

            <body>

                <h1> XSL 1.1 </h1>

                <table>

                    <tr>
                        <th> Titulo </th>
                        <th> Artista </th>
                        <th> País </th>
                        <th> Precio </th>
                        <th> Año </th>
                    </tr>
                
                    <xsl:for-each select="CATALOG/CD">
                    <xsl:sort select="YEAR" order="descending"/>
                    
                        <tr> 
                            <td> <xsl:value-of select="TITLE"/>     </td>
                            <td> <xsl:value-of select="ARTIST"/>    </td>
                            <td> <xsl:value-of select="COUNTRY"/>   </td>
                            <td> <xsl:value-of select="PRICE"/>     </td>
                            <td> <xsl:value-of select="YEAR"/>      </td>
                        </tr>
                    
                    </xsl:for-each>
                
                </table>
            
            </body>
            
        
        </html>
    
    </xsl:template>

</xsl:stylesheet>