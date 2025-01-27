<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.Clients.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/Clients.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Clientes</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" onclick="return intelcomp.List.onNewClick(this, {goto: 'addclient.php'});" />
		<button label="Editar" />
		<button label="Eliminar" onclick="return intelcomp.Clients.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="clients">
		<col type="number" id="_id" />
		<col type="string" id="_company" label="Empresa" required="true" />
		<col type="string" id="_url" label="Sitio Web" />
		<col type="string" id="_user" label="Contacto" required="true" />
		<col type="string" id="_enabled" label="Activo" />
	</datagrid>
</list>
