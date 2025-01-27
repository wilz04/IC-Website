<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" encoding="ISO-8859-1" indent="yes" />

	<xsl:template match="list">
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
			<head>
				<xsl:apply-templates select="title" mode="titlebar" />
				<xsl:apply-templates select="class" />
				<xsl:apply-templates select="style" />
			</head>
			<body>
				<xsl:attribute name="onload">
					<xsl:value-of select="@onload"/>
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
						
						<xsl:apply-templates select="datagrid" />
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
				<xsl:value-of select="@src"/>
			</xsl:attribute>
		</script>
	</xsl:template>
	
	<xsl:template match="style">
		<link rel="stylesheet" type="text/css" media="screen">
			<xsl:attribute name="href">
				<xsl:value-of select="@src"/>
			</xsl:attribute>
		</link>
	</xsl:template>
	
	<xsl:template match="login">
		<div class="login">
			<form action="admin.php" target="_self" method="post">
				<div>
					<span>Bienvenido&#32;</span>
					<span><xsl:value-of select="@alias"/></span>
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
		<title><xsl:value-of select="text()"/></title>
	</xsl:template>
	
	<xsl:template match="title" mode="titlehit">
		<h1><xsl:value-of select="text()"/></h1>
	</xsl:template>
	
	<xsl:template match="datagrid">
		<table class="datagrid" border="0" cellpadding="0" cellspacing="0" align="center">
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<thead>
				<tr>
					<xsl:apply-templates select="col" />
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</xsl:template>
	
	<xsl:template match="col">
		<th scope="col"><xsl:value-of select="@label"/></th>
	</xsl:template>
	
	<xsl:template match="controlbar">
		<div class="controlbar">
			<xsl:apply-templates select="button" />
		</div>
	</xsl:template>
	
	<xsl:template match="button">
		<input type="button">
			<xsl:if test="@disabled='true'">
				<xsl:attribute name="disabled">disabled</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="@label"/>
			</xsl:attribute>
			<xsl:attribute name="onclick">
				<xsl:value-of select="@onclick"/>
			</xsl:attribute>
		</input>
	</xsl:template>

</xsl:stylesheet>
