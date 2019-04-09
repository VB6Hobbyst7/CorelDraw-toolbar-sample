<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
								xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
								xmlns:frmwrk="Corel Framework Data"
								exclude-result-prefixes="frmwrk">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>


  <frmwrk:uiconfig>

    <frmwrk:compositeNode xPath="/uiConfig/commandBars/"/>
    <frmwrk:compositeNode xPath="/uiConfig/frame"/>
  </frmwrk:uiconfig>


  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="commandBarData[@guid='09FA126F-F823-43E0-9C1D-59047B7B7398']/toolbar">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>

      <xsl:if test="not(./item[@guidRef='c42b6524-4865-4532-a042-04600759ba39'])">
        <item guidRef="c42b6524-4865-4532-a042-04600759ba39"/>
      </xsl:if>
      <xsl:if test="not(./item[@guidRef='fa7b538b-7cec-41a9-ae07-08cd92e006b4'])">
        <item guidRef="fa7b538b-7cec-41a9-ae07-08cd92e006b4"/>
      </xsl:if>
      <xsl:if test="not(./item[@guidRef='027E7F50-2575-4B73-BB22-3A5AC04BCA1E'])">
        <item guidRef="027E7F50-2575-4B73-BB22-3A5AC04BCA1E"/>
      </xsl:if>
        <xsl:if test="not(./item[@guidRef='fa7b538b-7cec-41a9-ae07-08cd92e006b4'])">
          <item guidRef="fa7b538b-7cec-41a9-ae07-08cd92e006b4"/>
        </xsl:if>
        <xsl:if test="not(./item[@guidRef='C5768980-6299-477B-9F53-70F99DAE6A93'])">
          <item guidRef="C5768980-6299-477B-9F53-70F99DAE6A93"/>
        </xsl:if>
     
   
    </xsl:copy>
  </xsl:template>

  <xsl:template match="uiConfig/containers/container[@guid='bee85f91-3ad9-dc8d-48b5-d2a87c8b2109']/container[@guid='Framework_MainFrame-layout']/dockHost[@guid='894bf987-2ec1-8f83-41d8-68f6797d0db4']/toolbar[@guidRef='c2b44f69-6dec-444e-a37e-5dbf7ff43dae']">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>

      <xsl:if test="not(./toolbar[@guidRef='09FA126F-F823-43E0-9C1D-59047B7B7398'])">
        <toolbar guidRef="09FA126F-F823-43E0-9C1D-59047B7B7398" dock="top"/>
      </xsl:if>
    </xsl:copy>
  </xsl:template>


  <xsl:template match="uiConfig/states/state[1]/container[@guidRef='bee85f91-3ad9-dc8d-48b5-d2a87c8b2109']/layout/dockHost[@guid='894bf987-2ec1-8f83-41d8-68f6797d0db4']/toolbar[@guidRef='c2b44f69-6dec-444e-a37e-5dbf7ff43dae']">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>

      <xsl:if test="not(./toolbar[@guidRef='09FA126F-F823-43E0-9C1D-59047B7B7398'])">
        <toolbar guidRef="09FA126F-F823-43E0-9C1D-59047B7B7398" dock="top"/>
      </xsl:if>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>