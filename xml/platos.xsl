<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
	<title>Platos Caseros</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="../css/platos.css" />
</head>
<body>
	<aside>
		<ul>
			<li class="dropvertical">
				<a href="../index.html" class="botonvertical">Inicio</a>
			</li>
			<li class="dropvertical">
				<a href="#" class="botonvertical">Entrantes</a>
				<div class="contenidovertical">
					<a href="enbasic.xml">Entrante Básico</a>
					<a href="enapre.xml">Entrante Aprendiz</a>
					<a href="enavan.xml">Entrante Avanzado</a>
				</div>
			</li>
			<li class="dropvertical">
				<a href="#" class="botonvertical">Platos Principales</a>
				<div class="contenidovertical">
					<a href="prbasic.xml">Principal Básico</a>
					<a href="prapre.xml">Principal Aprendiz</a>
					<a href="pravan.xml">Principal Avanzado</a>
				</div>
			</li>
			<li class="dropvertical">
				<a href="#" class="botonvertical">Postres</a>
				<div class="contenidovertical">
					<a href="pobasic.xml">Postre Básico</a>
					<a href="poapre.xml">Postre Aprendiz</a>
					<a href="poavan.xml">Postre Avanzado</a>
				</div>
			</li>
			<li class="dropvertical">
				<a href="../html/contacto.html" class="botonvertical">Contáctanos</a>
			</li>
		</ul>
	</aside>
	<aside id="cajaudio">
		<ul>
			<li id="despaud">Música</li>
		</ul>
		<button class="controlaudio" id="controlplay" type="button">Reproducir</button>
		<button class="controlaudio" id="controlpausa" type="button">Parar</button>
	</aside>
	<header>
		<img id="slide" src="./imagenes/slide/slide1.jpg" />
	</header>
	<nav>
		<ul>
			<li class="drophorizontal">
				<a href="../index.html" class="botonhorizontal">Inicio</a>
			</li>
			<li class="drophorizontal">
				<a href="#" class="botonhorizontal">Entrantes</a>
				<div class="contenidohorizontal">
					<a href="enbasic.xml">Entrante Básico</a>
					<a href="enapre.xml">Entrante Aprendiz</a>
					<a href="enavan.xml">Entrante Avanzado</a>
				</div>
			</li>
			<li class="drophorizontal">
				<a href="#" class="botonhorizontal">Platos Principales</a>
				<div class="contenidohorizontal">
					<a href="prbasic.xml">Principal Básico</a>
					<a href="prapre.xml">Principal Aprendiz</a>
					<a href="pravan.xml">Principal Avanzado</a>
				</div>
			</li>
			<li class="drophorizontal">
				<a href="#" class="botonhorizontal">Postres</a>
				<div class="contenidohorizontal">
					<a href="pobasic.xml">Postre Básico</a>
					<a href="poapre.xml">Postre Aprendiz</a>
					<a href="poavan.xml">Postre Avanzado</a>
				</div>
			</li>
			<li class="drophorizontal">
				<a href="../html/contacto.html" class="botonhorizontal">Contáctanos</a>
			</li>
		</ul>
	</nav>
	<section>
		<h1><xsl:value-of select="platos/plato/nombre"/></h1>
		<div>
			<iframe src="">
				<xsl:attribute name="src">
    				<xsl:value-of select="platos/plato/video" />
  				</xsl:attribute>
			</iframe>
		</div>
		<img src="">
			<xsl:attribute name="src">
    				<xsl:value-of select="platos/plato/imagen" />
  			</xsl:attribute>
		</img>
		<article>
			<p><xsl:value-of select="platos/plato/introduccion"/></p>
		</article>
		<article>
			<h2><xsl:value-of select="platos/plato/ingredientes/titulo"/></h2>
			<ul>
				<xsl:for-each select="platos/plato/ingredientes/ingrediente">
              		<li><xsl:value-of select="."/></li>
            	</xsl:for-each>
			</ul>
		</article>
		<xsl:for-each select="platos/plato/preparacion">
			<article>
				<h2><xsl:value-of select="./titulo"/></h2>
				<ol>
					<xsl:for-each select="./paso">
              			<li><xsl:value-of select="."/></li>
            		</xsl:for-each>
				</ol>
			</article>
		</xsl:for-each>
	</section>
	<footer>
		<h2>Proyecto de Eduardo Martín Carrasco - 1º ASIR - IES Maria de Zayas y Sotomayor - 2019</h2>
	</footer>
	<audio id="musica">
  		<source src="" type="audio/mpeg">
  			<xsl:attribute name="src">
    			<xsl:value-of select="platos/plato/musica" />
  			</xsl:attribute>
  		</source>
	</audio>
	<script src="../js/contenido.js"></script>
</body>
</html>
</xsl:template>
</xsl:stylesheet>