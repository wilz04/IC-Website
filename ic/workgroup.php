<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.Workgroup.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/Workgroup.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Usuarios</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" disabled="true" />
		<button label="Editar" onclick="return intelcomp.Workgroup.onEditClick(this, []);" />
		<button label="Eliminar" onclick="return intelcomp.Workgroup.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="datagrid">
		<col type="number" id="_id" />
		<col type="string" id="_fullname" size="128" label="Nombre" />
		<col type="string" id="_alias" size="64" label="Alias" />
		<col type="string" id="_email" size="64" label="E-mail" />
		<col type="string" id="_role" size="32" label="Rol" />
		<col type="string" id="_enabled" size="16" label="Activo" />
	</datagrid>
</list>
