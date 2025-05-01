<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Library Catalog</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f9f9f9;
          }
          h1 {
            text-align: center;
            color: darkgreen;
          }
          table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
          }
          th, td {
            padding: 10px;
            border: 1px solid #ccc;
          }
          th {
            background-color: #e0e0e0;
          }
        </style>
      </head>
      <body>
        <h1>Library Book List</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Year Published</th>
            <th>Available Copies</th>
          </tr>
          <xsl:for-each select="library/book">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="published_year"/></td>
              <td><xsl:value-of select="available_copies"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
