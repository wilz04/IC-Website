<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" encoding="ISO-8859-1" indent="yes" />

	<xsl:template match="add">
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
			<head>
				<xsl:apply-templates select="title" mode="titlebar" />
				<xsl:apply-templates select="class" />
				<xsl:apply-templates select="style" />
			</head>
			<body>
				<xsl:attribute name="onload">
					<xsl:value-of select="@onload" />
				</xsl:attribute>
				
				<xsl:apply-templates select="login" />
				
				<div class="news">
					<img class="logo" border="0" src="images/iclogo4.jpg" />
					<div class="menu">
						<ul>
							<li><a href="index.php" target="_self">Inicio</a></li>
							<li><a href="we.html" target="mainarea">Nosotros</a></li>
							<li><a href="products.php" target="mainarea">Productos</a></li>
							<li><a href="clients.php" target="mainarea">Clientes</a></li>
							<li><a href="contact.html" target="mainarea">Contacto</a></li>
							<li><a href="downloads.php" target="mainarea">Descargas</a></li>
							<li><a href="/phpbb">Foro</a></li>
							<li><a href="/bugzilla">BugZilla</a></li>
						</ul>
					</div>
					<div class="mainarea" height="90%">
						<xsl:apply-templates select="title" mode="titlehit" />
						
						<xsl:apply-templates select="form" />
						<xsl:apply-templates select="controlbar" />
					</div>
					<div class="footer"><p>2013 intelcomp.ru</p></div>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="class">
		<script>
			<xsl:attribute name="src">
				<xsl:value-of select="@src" />
			</xsl:attribute>
		</script>
	</xsl:template>
	
	<xsl:template match="style">
		<link rel="stylesheet" type="text/css" media="screen">
			<xsl:attribute name="href">
				<xsl:value-of select="@src" />
			</xsl:attribute>
		</link>
	</xsl:template>
	
	<xsl:template match="login">
		<div class="login">
			<form action="admin.php" target="_self" method="post">
				<div>
					<span>Bienvenido&#32;</span>
					<span><xsl:value-of select="@alias" /></span>
					<span>!&#32;</span>
					<a href="#">Salir?</a>
				</div>
				<div>
					<select id="cbMod" name="cbMod" style="width:200px">
						<option value="workgroup.php">Usuarios</option>
						<option value="roles.php">Roles</option>
						<option value="clients2.php">Clientes</option>
						<option value="news2.php">Noticias</option>
						<option value="products2.php">Productos</option>
						<option value="downloads2.php">Descargas</option>
						<option value="/phpbb">Foro</option>
					</select>
					<input type="submit" value="Administrar" />
				</div>
			</form>
		</div>
	</xsl:template>
	
	<xsl:template match="title" mode="titlebar">
		<title><xsl:value-of select="text()" /></title>
	</xsl:template>
	
	<xsl:template match="title" mode="titlehit">
		<h1><xsl:value-of select="text()" /></h1>
	</xsl:template>
	
	<xsl:template match="form">
		<fieldset>
			<table class="form" border="0" cellpadding="0" cellspacing="0" align="center">
				<xsl:apply-templates select="field" />
				<xsl:apply-templates select="combo" />
				<xsl:apply-templates select="check" />
			</table>
		</fieldset>
	</xsl:template>
	
	<xsl:template match="field">
		<tr>
			<td align="right">
				<xsl:if test="@size &gt; 512">
					<xsl:attribute name="valign">top</xsl:attribute>
				</xsl:if>
				<xsl:if test="@required='true'">
					<span>*</span>
				</xsl:if>
				<label>
					<xsl:attribute name="for">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:value-of select="@label" />
				</label>
				<span>:</span>
			</td>
			<td align="left">
				<xsl:if test="@size &gt; 512">
					<textarea rows="8" cols="64">
						<xsl:attribute name="id">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:attribute name="name">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:attribute name="required">
							<xsl:value-of select="@required" />
						</xsl:attribute>
					</textarea>
				</xsl:if>
				<xsl:if test="@size &lt; 512">
					<input>
						<xsl:attribute name="type">
							<xsl:value-of select="@type" />
						</xsl:attribute>
						<xsl:attribute name="id">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:attribute name="name">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:attribute name="size">
							<xsl:value-of select="@size" />
						</xsl:attribute>
						<xsl:attribute name="required">
							<xsl:value-of select="@required" />
						</xsl:attribute>
						<xsl:if test="@type='date'">
							<xsl:attribute name="placeholder">dd-mm-yyyy</xsl:attribute>
						</xsl:if>
					</input>
				</xsl:if>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="combo">
		<tr>
			<td align="right">
				<xsl:if test="@required='true'">
					<span>*</span>
				</xsl:if>
				<label>
					<xsl:attribute name="for">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:value-of select="@label" />
				</label>
				<span>:</span>
			</td>
			<td align="left">
				<select>
					<xsl:attribute name="id">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:attribute name="name">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:attribute name="required">
						<xsl:value-of select="@required" />
					</xsl:attribute>
					<xsl:apply-templates select="option" />
				</select>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="option">
		<option><xsl:value-of select="text()" /></option>
	</xsl:template>
	
	<xsl:template match="check">
		<tr>
			<td align="right"></td>
			<td align="left">
				<input type="checkbox">
					<xsl:attribute name="id">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:attribute name="name">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:attribute name="required">
						<xsl:value-of select="@required" />
					</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="@value" />
					</xsl:attribute>
					<xsl:if test="@id='_enabled'">
						<xsl:attribute name="checked">checked</xsl:attribute>
					</xsl:if>
				</input>
				<xsl:if test="@required='true'">
					<span>*</span>
				</xsl:if>
				<label>
					<xsl:attribute name="for">
						<xsl:value-of select="@id" />
					</xsl:attribute>
					<xsl:value-of select="@label" />
				</label>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="controlbar">
		<div class="controlbar">
			<xsl:apply-templates select="button" />
		</div>
	</xsl:template>
	
	<xsl:template match="button">
		<input type="button">
			<xsl:attribute name="value">
				<xsl:value-of select="@label" />
			</xsl:attribute>
			<xsl:attribute name="onclick">
				<xsl:value-of select="@onclick" />
			</xsl:attribute>
		</input>
	</xsl:template>

</xsl:stylesheet>
