<?php
header("Content-type: text/javascript");

include_once("../model/Collection.class.php");

$dataset = "intelcomp.Clients.datasource = [%s];";

$datarow = "{";
$datarow.= "_id: %d,";
$datarow.= "_company: \"%s\",";
$datarow.= "_url: \"%s\",";
$datarow.= "_user: \"%s\",";
$datarow.= "_enabled: true";
$datarow.= "}";

$catalog = new Collection("ic_vw_clients");
$clients = $catalog->getPage();

$datasource = array();

foreach ($clients as $key=>$client) {
	$datasource[] = sprintf($datarow, $client['_id'], $client['_company'], $client['_url'], $client['_user']);
}

printf($dataset, implode(", ", $datasource));
?>
