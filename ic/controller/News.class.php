<?php
header("Content-type: text/javascript");

include_once("../model/DataSet.class.php");

new DataSet("intelcomp.News.datasource", "ic_vw_news", array(
	"_id" => "%d",
	"_title" => "\"%s\"",
	"_link" => "\"%s\"",
	"_description" => "\"%s\"",
	"_author" => "\"%s\"",
	"_pubdate" => "\"%s\"",
	"_enabled" => "true"
));
?>
