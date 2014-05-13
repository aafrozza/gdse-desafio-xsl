<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html> 
      <head> 
         <title>Exemplo do Survey com JQueryMObile</title> 
         <script src="jquery-2.0.3.min.js"></script>
         <link rel="stylesheet" href="jquery.mobile-1.3.2.min.css" />
         <script src="jquery.mobile-1.3.2.min.js"></script>
      </head> 
      <body> 
         <div data-role="page" id="home">
            <div data-role="header" data-position="fixed">
               <h1>Exemplo do Survey com JQueryMObile</h1>
            </div>
            <div role="main" class="ui-content"> 
               <!-- Monta as questoes -->
               <form action="#" method="get">
                  <xsl:for-each select="//question">
                  <xsl:choose>
                     <xsl:when test='@type="text"'>       
                        <label><xsl:value-of select="label"/></label>
                        <xsl:attribute name="for">
                           <xsl:value-of select="@id"/> 
                        </xsl:attribute>
                        <input></input>
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/> 
                        </xsl:attribute>
                        <xsl:attribute name="name">
                           <xsl:value-of select="@id"/> 
                        </xsl:attribute>
                        <xsl:attribute name="length">
                           <xsl:value-of select="@lenght"/> 
                        </xsl:attribute>               
                     </xsl:when>    
                  </xsl:choose>
                  </xsl:for-each> 
                  
                  <!-- botoes -->
                  <div class="ui-body-a">
                     <fieldset class="ui-grid-a">
                        <xsl:for-each select="//buttons">
                           <xsl:if test="reset">
                              <div class="ui-block-a">
                                 <button type="submit" data-theme="a">
                                    <xsl:value-of select="reset"/> 
                                 </button>
                              </div> 
                           </xsl:if>
                           <xsl:if test="submit">
                              <div class="ui-block-a">
                                 <button type="submit" data-theme="b">
                                    <xsl:value-of select="submit"/> 
                                 </button>
                              </div>
                           </xsl:if>
                        </xsl:for-each>
                     </fieldset>
                  </div>
               </form>
            </div> <!-- main -->
            <div data-role="footer" data-position="fixed">
               <h3>Prof. Angelo Augusto Frozza (IFC-Camboriú)</h3>
            </div> <!-- footer -->            
         </div> <!-- page -->
      </body>
   </html>
</xsl:template>

</xsl:stylesheet>