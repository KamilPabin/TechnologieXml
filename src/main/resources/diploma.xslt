<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">

        <html>
            <head>
                <link rel="stylesheet" href="styles.css"/>
            </head>
            <body>
                <div class="page">
                    <xsl:for-each select="students/student">
                        <xsl:apply-templates select="."/>
                        <xsl:apply-templates select="./subjects"/>
                    </xsl:for-each>
                </div>
            </body>
        </html>

    </xsl:template>


    <xsl:template match="student">
        <div class="front">
            <xsl:if test="sum(./subjects/subject/grade)
                    div count(./subjects/subject/grade) &lt; 4.86">
                <img src="front.jpg">front side</img>
            </xsl:if>

            <xsl:if test="sum(./subjects/subject/grade)
                    div count(./subjects/subject/grade) &gt; 4.85">
                <img src="front1.jpg">front side</img>
            </xsl:if>
            <div class="name">
                <xsl:value-of select="./firstName/text()"/>
                <xsl:value-of select="./lastName/text()"/>
            </div>

            <div class="birthDate">
                05.07.1995
            </div>
            <div class="birthPlace">
                Poznań
            </div>
            <div class="pesel">
                95070539183
            </div>
            <div class="school">
                <div class="schoolName">
                    Liceum ogólnokształcące
                </div>
                <div class="schoolNumber">
                    10
                </div>
                <div class="schoolPatron">
                    Kazimierza Wielkiego
                </div>
                <div class="schoolCity">
                    Poznań
                </div>
                <div class="schoolProvince">
                    Wielkopolskie
                </div>
            </div>
        </div>

    </xsl:template>


    <xsl:template match="subjects">
        <div class="cover">
            <img src="back.jpg">back side</img>

            <div class="behaviour">
                <xsl:value-of select="./../behaviour/text()"/>
            </div>

            <div class="physics">
                <xsl:value-of select="./subject[name/text()='physics']/grade/text()"/>
            </div>
            <div class="mathematics">
                <xsl:value-of select="./subject[name/text()='mathematics']/grade/text()"/>
            </div>
            <div class="biology">
                <xsl:value-of select="./subject[name/text()='biology']/grade/text()"/>
            </div>
            <div class="chemistry">
                <xsl:value-of select="./subject[name/text()='chemistry']/grade/text()"/>
            </div>
            <div class="technology">
                <xsl:value-of select="./subject[name/text()='technology']/grade/text()"/>
            </div>

        </div>
    </xsl:template>

</xsl:stylesheet>
