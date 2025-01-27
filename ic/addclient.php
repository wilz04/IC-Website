<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/add.xsl\" ?".">";
?>
<add onload="intelcomp.Client.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Agregar Cliente</title>
	
	<login alias="" />

	<controlbar>
		<button label="Guardar" />
		<button label="Cancelar" onclick="history.back();" />
	</controlbar>
	
	<form>
		<field type="string" id="_company" size="32" label="Empresa" required="true" />
		<field type="string" id="_url" size="32" label="Sitio Web" required="false" />
		<combo id="_user" label="Contacto" required="true"></combo>
		<check id="_enabled" label="Activo" required="false" />
	</form>
</add>
