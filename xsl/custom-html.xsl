<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:import href="./core/pretext-html.xsl"/>
<!--  Asides keep their knowl/side-float structure, but are born OPEN  -->
<xsl:template match="aside|biographical|historical" mode="born-hidden">
<xsl:param name="b-original" select="true()"/>
<xsl:param name="heading-level"/>
<xsl:text> </xsl:text>
<details open="open">
<xsl:if test="$b-original">
<xsl:apply-templates select="." mode="html-id-attribute"/>
</xsl:if>
<xsl:attribute name="class">
<xsl:apply-templates select="." mode="body-css-class"/>
<xsl:text> born-hidden-knowl</xsl:text>
</xsl:attribute>
<summary class="knowl__link">
<xsl:apply-templates select="." mode="heading-birth">
<xsl:with-param name="heading-level" select="$heading-level"/>
</xsl:apply-templates>
</summary>
<xsl:apply-templates select="." mode="body">
<xsl:with-param name="block-type" select="'hidden'"/>
<xsl:with-param name="b-original" select="$b-original"/>
<xsl:with-param name="heading-level" select="$heading-level"/>
</xsl:apply-templates>
</details>
</xsl:template>
</xsl:stylesheet>