<?php
header("Content-type: text/javascript");

include_once("../model/DataSet.class.php");

new DataSet("intelcomp.Downloads.datasource", "ic_vw_downloads", array(
	"_id" => "%d",
	"_product" => "\"%s\"",
	"_url" => "\"%s\"",
	"_enabled" => "true"
));
?>
