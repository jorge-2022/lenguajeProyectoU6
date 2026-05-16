<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/inventario">

<html>
<body>

<h2>Inventario Espinoza</h2>

<!-- Tabla -->
<table border="1">
<tr>
<th>Nombre</th>
<th>Categoria</th>
<th>Precio</th>
</tr>

<xsl:for-each select="producto">
<tr>
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="@categoria"/></td>
<td>
<xsl:choose>
<!-- Color rojo cuando precio sea mayor a 500 -->
<xsl:when test="precio &gt; 500">
<span style="color:red">
<xsl:value-of select="precio"/>
</span>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="precio"/>
</xsl:otherwise>
</xsl:choose>
</td>
</tr>
</xsl:for-each>

</table>

<hr/>

<!-- Categoria novela aparte -->
<h3>Categoria: novela</h3>

<ul>
<xsl:for-each select="producto[@categoria='novela']">
<li>
<xsl:value-of select="nombre"/>
 -
<xsl:value-of select="precio"/>
</li>
</xsl:for-each>
</ul>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
