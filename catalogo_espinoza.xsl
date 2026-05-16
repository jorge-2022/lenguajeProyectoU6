<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/">

<fo:root>

    <fo:layout-master-set>

        <fo:simple-page-master
            master-name="A4"
            page-width="21cm"
            page-height="29.7cm"
            margin-top="2cm"
            margin-bottom="2cm"
            margin-left="2cm"
            margin-right="2cm">

            <fo:region-body margin-bottom="1.5cm"/>
            <fo:region-after extent="1.5cm"/>

        </fo:simple-page-master>

    </fo:layout-master-set>

    <!-- Paginas -->
    <fo:page-sequence master-reference="A4">

        <!-- Pie de pagina (usando static-content) -->
        <fo:static-content flow-name="xsl-region-after">

            <fo:block
                text-align="center"
                font-size="10pt">

                Página <fo:page-number/>

            </fo:block>

        </fo:static-content>

        <!-- Cuerpo (contenido) -->
        <fo:flow flow-name="xsl-region-body">

            <!-- Portada con mi apellido -->
            <fo:block
                font-size="24pt"
                font-weight="bold"
                text-align="center"
                space-after="20pt">

                Catálogo de Espinoza

            </fo:block>

            <!-- Tabla -->
            <fo:table
                border="1pt solid black"
                border-collapse="collapse"
                width="100%">

                <!-- Columnas -->
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="3cm"/>
                <fo:table-column column-width="3cm"/>
                <fo:table-column column-width="3cm"/>

                <!-- Cabecera de la tabla -->
                <fo:table-header>

                    <fo:table-row background-color="#CCCCCC">

                        <fo:table-cell border="1pt solid black">
                            <fo:block font-weight="bold">Nombre</fo:block>
                        </fo:table-cell>

                        <fo:table-cell border="1pt solid black">
                            <fo:block font-weight="bold">Categoria</fo:block>
                        </fo:table-cell>

                        <fo:table-cell border="1pt solid black">
                            <fo:block font-weight="bold">Precio</fo:block>
                        </fo:table-cell>

                        <fo:table-cell border="1pt solid black">
                            <fo:block font-weight="bold">Stock</fo:block>
                        </fo:table-cell>

                    </fo:table-row>

                </fo:table-header>

                <!-- Cuerpo de la tabla -->
                <fo:table-body>

                    <xsl:for-each select="inventario/producto">

                        <fo:table-row>

                            <fo:table-cell border="1pt solid black">
                                <fo:block>
                                    <xsl:value-of select="nombre"/>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell border="1pt solid black">
                                <fo:block>
                                    <xsl:value-of select="@categoria"/>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell border="1pt solid black">
                                <fo:block>
                                    <xsl:value-of select="precio"/>
                                </fo:block>
                            </fo:table-cell>

                            <fo:table-cell border="1pt solid black">
                                <fo:block>
                                    <xsl:value-of select="stock"/>
                                </fo:block>
                            </fo:table-cell>

                        </fo:table-row>

                    </xsl:for-each>

                </fo:table-body>

            </fo:table>

        </fo:flow>

    </fo:page-sequence>

</fo:root>

</xsl:template>

</xsl:stylesheet>
