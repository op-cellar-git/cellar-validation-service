<?xml version="1.0" encoding="utf-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" version="1.0">
	<xsl:output omit-xml-declaration="yes" method="xml" version="1.0"/>
	
	<xsl:template match="node()|@*" name="identity">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>


     <xsl:template match="*">
      <xsl:if test="not(starts-with(name(), 'camunda:') or starts-with(name(), 'bioc:'))">
       <xsl:call-template name="identity"/>
      </xsl:if>
     </xsl:template>

	<xsl:template match="@*">
		<xsl:if test="not(starts-with(name(), 'camunda:') or starts-with(name(), 'bioc:'))">
			<xsl:call-template name="identity"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
