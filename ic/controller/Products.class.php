<?php
header("Content-type: text/javascript");

include_once("../model/DataSet.class.php");

new DataSet("intelcomp.Products.datasource", "ic_tb_products", array(
	"_id" => "%d",
	"_name" => "\"%s\"",
	"_description" => "\"%s\"",
	"_enabled" => "true"
));
?>
