<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

	<xsl:template match="/">
		<EmployeeDataSet>
			<xsl:for-each select="Employees/Employee">
				<EmployeeInfo>
					<empid>
						<xsl:value-of select="concat(first_name,last_name)"/>
					</empid>
					<first_name>
						<xsl:value-of select="first_name"/>
					</first_name>
					<last_name>
						<xsl:value-of select="last_name"/>
					</last_name>
					<email>
						<xsl:value-of select="email"/>
					</email>
					<gender>
						<xsl:value-of select="gender"/>
					</gender>
					<role>
						<xsl:value-of select="role"/>
					</role>
				</EmployeeInfo>
			</xsl:for-each>	
		</EmployeeDataSet>
	</xsl:template>
	
</xsl:stylesheet>
