<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.Downloads.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/Downloads.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Descargas</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" onclick="return intelcomp.List.onNewClick(this, {goto: 'adddownload.php'});" />
		<button label="Editar" />
		<button label="Eliminar" onclick="return intelcomp.Downloads.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="downloads">
		<col type="number" id="_id" />
		<col type="string" id="_product" label="Producto" />
		<col type="string" id="_url" label="Direcci&#xf3;n de Descarga" />
		<col type="string" id="_enabled" label="Activo" />
	</datagrid>
</list>
