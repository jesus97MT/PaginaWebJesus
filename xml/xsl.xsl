<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="imagenes/foto">
  <html>
    <head>
    <style type="text/css">
.container {
  position: relative;
  width:300px;
}


.overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  height: 100%;
  width: 100%;
  opacity: 0;
  transition: .5s ease;
  background-color: #008CBA;
}

.container:hover .overlay {
  opacity: 1;
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}

   

.image{
width:300px;
height:200px;
display:block;
}

</style>
    
    </head>
    <body>
      
		  

<div class="container">
    <img src="{@id}" alt="Avatar" class="image"></img>
  <div class="overlay">
    <div class="text"><xsl:value-of select="@nombre"/></div>
  </div>
</div>
		
  
    
  </body>
  
  </html>
  

  </xsl:template>
</xsl:stylesheet>
