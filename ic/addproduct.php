<?php
header("Content-type: text/xml");

echo "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";
echo "<"."?xml-stylesheet type=\"text/xsl\" href=\"templates/add.xsl\" ?".">";
?>
<add onload="intelcomp.Product.init(this, []);">
	<class src="scripts/intelcomp.js" />
	<style src="templates/theme.css" />
	<style src="templates/tree.css" />
	
	<title>Agregar Producto</title>
	
	<login alias="" />

	<controlbar>
		<button label="Guardar" />
		<button label="Cancelar" onclick="history.back();" />
	</controlbar>
	
	<form>
		<field type="string" id="_name" size="32" label="Nombre" required="true" />
		<field type="string" id="_description" size="1024" label="Descripci&#xf3;n" required="false" />
		<check id="_enabled" label="Activo" required="false" />
	</form>
</add>
