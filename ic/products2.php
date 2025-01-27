<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.Products.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/Products.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Productos</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" onclick="return intelcomp.List.onNewClick(this, {goto: 'addproduct.php'});" />
		<button label="Editar" />
		<button label="Eliminar" onclick="return intelcomp.Products.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="products">
		<col type="number" id="_id" />
		<col type="string" id="_name" label="Nombre" />
		<col type="string" id="_description" label="Descripci&#xf3;n" />
		<col type="string" id="_enabled" label="Activo" />
	</datagrid>
</list>
