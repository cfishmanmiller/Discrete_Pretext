<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
<xsl:import href="./core/pretext-latex.xsl"/>
<xsl:template match="aside" mode="environment">
    <xsl:text>%% aside: un-numbered margin note&#xa;</xsl:text>
    <xsl:text>\usepackage{marginnote}&#xa;</xsl:text>
    <xsl:text>\tcbset{ asidestyle/.style={&#xa;</xsl:text>
    <xsl:text>enhanced jigsaw, size=fbox,&#xa;</xsl:text>
    <xsl:text>colframe=black, colback=white,&#xa;</xsl:text>
    <xsl:text>boxrule=1pt, leftrule=0pt, rightrule=0pt,&#xa;</xsl:text>
    <xsl:text>arc=0pt, outer arc=1pt, boxsep=1pt, top=1pt, bottom=1pt,&#xa;</xsl:text>
    <xsl:text>nobeforeafter, width=\marginparwidth, fontupper=\scriptsize,&#xa;</xsl:text>
    <xsl:text>if odd page or oneside={flushleft upper}{flushright upper} } }&#xa;</xsl:text>
    <xsl:text>\NewDocumentEnvironment{aside}{m m m +b}&#xa;</xsl:text>
    <xsl:text>{\marginnote{\begin{tcolorbox}[&#xa;</xsl:text>
    <xsl:text>phantomlabel={#3}, asidestyle] #4 \end{tcolorbox} } }&#xa;</xsl:text>
    <xsl:text>{}&#xa;</xsl:text>
</xsl:template>
</xsl:stylesheet>
