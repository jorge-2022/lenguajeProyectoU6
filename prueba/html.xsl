<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Catalogo</h1>

                <xsl:for-each select="catalogo/libro">
                    <p>
                        <xsl:value-of select="titulo"/>
                        -
                        <xsl:value-of select="precio"/> €
                    </p>
                </xsl:for-each>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
