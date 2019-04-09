<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:frmwrk="Corel Framework Data">
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <!-- Use these elements for the framework to move the container from the app config file to the user config file -->
  <!-- Since these elements use the frmwrk name space, they will not be executed when the XSLT is applied to the user config file -->
  <frmwrk:uiconfig>
    <!-- The Application Info should always be the topmost frmwrk element -->
    <frmwrk:applicationInfo userConfiguration="true" />
  </frmwrk:uiconfig>

  <!-- Copy everything -->
  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

<!--Copy ours controls to items-->
  <xsl:template match="uiConfig/items">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
      <itemData guid="c42b6524-4865-4532-a042-04600759ba39"
              type="wpfhost"
              hostedType="Addons\ButtonIMGSample\ButtonIMGSample.dll,ButtonIMGSample.ControlUI"
              enable="true"/>
      <itemData guid="fa7b538b-7cec-41a9-ae07-08cd92e006b4" type="separator" />
      <itemData guid="027E7F50-2575-4B73-BB22-3A5AC04BCA1E"
                type="wpfhost"
                hostedType="Addons\ButtonIMGSample\ButtonIMGSample3.dll,ButtonIMGSample3.ControlUI"
                enable="true"/>
      <!--You can load many control from only one assembly-->
      <itemData guid="C5768980-6299-477B-9F53-70F99DAE6A93"
                type="wpfhost"
                hostedType="Addons\ButtonIMGSample\ButtonIMGSample.dll,ButtonIMGSample.ControlUI2"
                enable="true"/>
    </xsl:copy>
  </xsl:template>
  
  <!--Create a custom command bar below standard bar-->
  <xsl:template match="uiConfig/commandBars">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>

      <commandBarData guid="09FA126F-F823-43E0-9C1D-59047B7B7398"
                      nonLocalizableName="Buttons Samples"
                      userCaption="Buttons Samples"
                      locked="true"
                      type="toolbar">
        <toolbar>
          <item  guidRef="c42b6524-4865-4532-a042-04600759ba39" dock="top"/>
          <item  guidRef="fa7b538b-7cec-41a9-ae07-08cd92e006b4" dock="top"/>
          <item  guidRef="027E7F50-2575-4B73-BB22-3A5AC04BCA1E" dock="top"/>
          <item  guidRef="fa7b538b-7cec-41a9-ae07-08cd92e006b4" dock="top"/>
          <item  guidRef="C5768980-6299-477B-9F53-70F99DAE6A93" dock="top"/>
        </toolbar>
      </commandBarData>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="uiConfig/containers/container[@guid='bee85f91-3ad9-dc8d-48b5-d2a87c8b2109']/container[@guid='Framework_MainFrame-layout']/dockHost[@guid='894bf987-2ec1-8f83-41d8-68f6797d0db4']/toolbar[@guidRef='c2b44f69-6dec-444e-a37e-5dbf7ff43dae']">
    <xsl:copy-of select="."/>

    <toolbar guidRef="09FA126F-F823-43E0-9C1D-59047B7B7398" dock="top" />

  </xsl:template>

</xsl:stylesheet>