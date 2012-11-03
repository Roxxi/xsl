<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <xsl:apply-templates/>  
</xsl:template>


<!-- unbox html and body tags, so only the content remains -->
<xsl:template match="html | body">
    <xsl:apply-templates/>  
</xsl:template>

<!-- remove the head tag and all of its content -->
<xsl:template match="head" />

<!-- put pre tags around code tags -->
<xsl:template match="code">
  <pre><code>
    <xsl:value-of select="."/>
  </code></pre>
</xsl:template>

<!-- IdentityTransform -->
<xsl:template match="/ | @* | node()">
  <xsl:copy>
    <xsl:apply-templates select="@* | node()" />
  </xsl:copy>
</xsl:template>




</xsl:stylesheet>


