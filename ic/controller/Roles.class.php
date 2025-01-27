<?php
header("Content-type: text/javascript");

include_once("../model/Collection.class.php");

$dataset = "intelcomp.Roles.datasource = [%s];";

$datarow = "{";
$datarow.= "_id: %d,";
$datarow.= "_description: \"%s\",";
$datarow.= "_enabled: true";
$datarow.= "}";

$catalog = new Collection("ic_tb_roles");
$roles = $catalog->getPage();

$datasource = array();

foreach ($roles as $key=>$rol) {
	$datasource[] = sprintf($datarow, $rol['_id'], $rol['_description']);
}

printf($dataset, implode(", ", $datasource));
?>
