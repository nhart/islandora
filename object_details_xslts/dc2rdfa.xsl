<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="mods" version="1.0"
     xmlns:foaf="http://xmlns.com/foaf/0.1/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/">
    <xsl:output indent="yes" method="html"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xmlns:foaf="http://xmlns.com/foaf/0.1/"
            xmlns:dc="http://purl.org/dc/elements/1.1/" version="XHTML+RDFa 1.0" xml:lang="en"
            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
            xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/">
            <head> </head>
            <body>
                <div xmlns:dc="http://purl.org/dc/elements/1.1/"
                    about="http://www.example.com/books/wikinomics">
                    <xsl:for-each select="//oai_dc:dc/child::node()">
                        <xsl:if test="text()">
                            <span>
                                <xsl:attribute name="property">
                                    <xsl:value-of select="name()"/>
                                </xsl:attribute>
                                <xsl:value-of select="text()"/>
                            </span>    
                        </xsl:if>
                        
                    </xsl:for-each>

                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
