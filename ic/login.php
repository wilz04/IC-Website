<?php
include_once("model/Settings.class.php");

$username = $_POST['txUsername'];
$password = $_POST['txPassword'];

$cx = new Database(DB_HOST, DB_SCHEMA, $username, $password);

if ($cx->isConnected()) {
	header("location: home.php");
} else {
	header("location: index.php");
}
?>
