<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/list.xsl\" ?".">";
?>
<list onload="intelcomp.News.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<class src="controller/News.class.php" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Administrar Noticias</title>
	
	<login alias="" />

	<controlbar>
		<button label="Nuevo" onclick="return intelcomp.List.onNewClick(this, {goto: 'addnew.php'});" />
		<button label="Editar" />
		<button label="Eliminar" onclick="return intelcomp.News.onDeleteClick(this, []);" />
	</controlbar>
	
	<datagrid id="newsletter">
		<col type="number" id="_id" />
		<col type="string" id="_title" label="Encabezado" />
		<col type="string" id="_link" label="Detalle" />
		<col type="string" id="_description" label="Descripci&#xf3;n" />
		<col type="string" id="_author" label="Autor" />
		<col type="string" id="_pubdate" label="Fecha" />
		<col type="string" id="_enabled" label="Activo" />
	</datagrid>
</list>
