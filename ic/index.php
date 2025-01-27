<!doctype html>
<html>
	<head>
		<title>Intelcomp</title>
		<link rel="stylesheet" type="text/css" href="templates/theme.css" />
		<link rel="stylesheet" type="text/css" href="templates/tree.css" />
	</head>
	<body>
		<div class="login">
			<form action="login.php" target="_self" method="post">
				<div><input id="txUsername" name="txUsername" type="text" placeholder="Nombre de Usuario" size="40" /></div>
				<div><input id="txPassword" name="txPassword" type="password" placeholder="Contrase&ntilde;a" size="40" /></div>
				<div><a href="#">Olvid&oacute; su contrase&ntilde;a?</a></div>
				<div><input type="submit" value="Entrar" /></div>
			</form>
		</div>
		
		<div class="news">
			<img class="logo" border="0" src="images/iclogo4.jpg" />
			<div class="menu">
				<ul>
					<li><a href="index.php" target="_self">Inicio</a></li>
					<li><a href="we.html" target="mainarea">Nosotros</a></li>
					<li><a href="products.php" target="mainarea">Productos</a></li>
					<li><a href="clients.php" target="mainarea">Clientes</a></li>
					<li><a href="contact.html" target="mainarea">Contacto</a></li>
					<li>
						<a href="downloads.php" target="mainarea">Descargas</a>
						<!-- ul>
							<li><a href="#">Intelcomp CRM Trial</li>
							<li><a href="#">Intelcomp CRM Manual de Instalaci&oacute;n y Configuraci&oacute;n</li>
							<li><a href="#">Intelcomp CRM Manual de Uso</li>
							<li><a href="#">Intelcomp ERP Trial</li>
							<li><a href="#">Intelcomp ERP Manual de Instalaci&oacute;n y Configuraci&oacute;n</li>
							<li><a href="#">Intelcomp ERP Manual de Uso</li>
							<li><a href="#">Intelcomp BPM Trial</li>
							<li><a href="#">Intelcomp BPM Manual de Instalaci&oacute;n y Configuraci&oacute;n</li>
							<li><a href="#">Intelcomp BPM Manual de Uso</li>
						</ul -->
					</li>
					<li><a href="/phpbb">Foro</a></li>
					<li><a href="/bugzilla">BugZilla</a></li>
				</ul>
			</div>
			<iframe id="mainarea" name="mainarea" height="90%" frameborder="no" allowtransparency="true" src="news.php"></iframe>
			<div class="footer"><p>&copy; 2013 intelcomp.ru</p></div>
		</div>
	</body>
</html>
