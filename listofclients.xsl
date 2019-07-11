<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">    
<html>
<body>
  <h1>List of Clients</h1>
  <table style="border: 3px blue solid;padding:8px;">
    <tr>
<th>Name</th><th>Phone</th><th>E-mail</th><th>Account_Total</th></tr>
    <xsl:for-each select="Accounts/Client">
      <tr>
        <td style="border: 3px blue solid;padding:4px;"><xsl:value-of select="Name/First"/><span>&#160;</span><xsl:value-of select="Name/Last"/></td>
        <td style="border: 3px blue solid;padding:4px;"><xsl:value-of select="Phone"/></td>
        <td style="border: 3px blue solid;padding:4px;"><xsl:value-of select="E-mail"/></td>
      
         <xsl:choose>
          <xsl:when test="80000 &gt;= Account_Total">
            <td style="color:red;font-weight:bold;border:3px blue solid;padding:4px;text-align:right;">
            <xsl:value-of select="Account_Total"/></td>
          </xsl:when>
          <xsl:otherwise>
            <td style="border: 3px blue solid;padding:4px;text-align:right;"><xsl:value-of select="Account_Total"/></td>
          </xsl:otherwise>
        </xsl:choose>
          
      </tr>
    </xsl:for-each> 
  
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
