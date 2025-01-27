<?php
header("Content-type: text/javascript");

include_once("../model/DataSet.class.php");

new DataSet("intelcomp.Workgroup.datasource", "ic_vw_users", array(
	"_id" => "%d",
	"_fullname" => "\"%s\"",
	"_alias" => "\"%s\"",
	"_email" => "\"%s\"",
	"_role" => "\"%s\"",
	"_enabled" => "true"
));
?>
