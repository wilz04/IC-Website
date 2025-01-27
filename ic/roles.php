<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.Roles.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/Roles.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Roles</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" onclick="return intelcomp.Roles.onAddClick(this, []);" />
		<button label="Editar" onclick="return intelcomp.Roles.onEditClick(this, []);" />
		<button label="Eliminar" onclick="return intelcomp.Roles.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="roles">
		<col type="number" id="_id" />
		<col type="string" id="_description" size="128" label="Descripci&#xf3;n" />
		<col type="string" id="_enabled" size="16" label="Activo" />
	</datagrid>
</list>
