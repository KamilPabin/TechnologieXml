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
                    <xsl:apply-templates select="/students/student[1]"/>
                    <xsl:apply-templates select="/students/student[1]/subjects"/>
                </div>
            </body>
        </html>

    </xsl:template>


    <xsl:template match="student">
        <xsl:if test="sum(/students/student[1]/subjects/subject/grade)
                    div count(/students/student[1]/subjects/subject/grade) &lt; 4.86">
            <img src="front.jpg">front side</img>
        </xsl:if>

        <xsl:if test="sum(/students/student[1]/subjects/subject/grade)
                    div count(/students/student[1]/subjects/subject/grade) &gt; 4.85">
            <img src="front1.jpg">front side</img>
        </xsl:if>
        <div class="name">
            <xsl:value-of select="/students/student[1]/firstName/text()"/>
            <xsl:value-of select="/students/student[1]/lastName/text()"/>
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

    </xsl:template>


    <xsl:template match="subjects">
        <div class="cover">
            <img src="back.jpg">back side</img>
        </div>
    </xsl:template>

</xsl:stylesheet>
