<!doctype html>
<?php include_once("model/Collection.class.php"); ?>
<html>
	<head>
		<?php
			$datarow = "<div>";
			$datarow.= "<a name=\"%d\" href=\"%s\" target=\"_blank\">";
			$datarow.= "<h2>%s</h2>";
			$datarow.= "</a>";
			$datarow.= "<p>Contacto: %s</p>";
			$datarow.= "</div>";

			$catalog = new Collection("ic_vw_clients");
			$page = $catalog->getPage();

			$datasource = array();

			foreach ($page as $key=>$element) {
				$datasource[] = sprintf($datarow, $element['_id'], $element['_url'], $element['_company'], $element['_user']);
			}
		?>
		<link rel="stylesheet" type="text/css" href="templates/theme.css" />
		<link rel="stylesheet" type="text/css" href="templates/tree.css" />
		<style>
			a {
				color: #000 !important;
			}
		</style>
	</head>
	<body class="news">
		<h1>Nuestros Clientes</h1>
		<ol class="tree">
			<?php echo implode("", $datasource); ?>
		</ol>
	</body>
</html>
