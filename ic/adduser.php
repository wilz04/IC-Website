<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/add.xsl\" ?".">";
?>
<add onload="intelcomp.User.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Agregar Usuario</title>
	
	<login alias="" />

	<controlbar>
		<button label="Guardar" />
		<button label="Cancelar" onclick="history.back();" />
	</controlbar>
	
	<form>
		<field type="string" id="_firstname" size="32" label="Nombre" required="false" />
		<field type="string" id="_lastname" size="32" label="Apellido" required="false" />
		<field type="string" id="_alias" size="32" label="Alias" required="false" />
		<field type="string" id="_email" size="64" label="e-Mail" required="true" />
		<combo id="_role" label="Rol" required="false">
			<option>Administrador</option>
			<option>Cliente</option>
		</combo>
		<check id="_enabled" label="Activo" required="false" />
	</form>
</add>
