<!doctype html>
<?php include_once("model/Collection.class.php"); ?>
<html>
	<head>
		<?php
			$datarow = "<li class=\"file\">";
			$datarow.= "<a href=\"%s\">%s</a>";
			$datarow.= "</li>";

			$catalog = new Collection("ic_vw_downloads");
			$page = $catalog->getPage();

			$datasource = array();

			foreach ($page as $key=>$element) {
				$datasource[] = sprintf($datarow, $element['_url'], $element['_product']);
			}
		?>
		<link rel="stylesheet" type="text/css" href="templates/theme.css" />
		<link rel="stylesheet" type="text/css" href="templates/tree.css" />
	</head>
	<body class="news">
		<h1>Descargas</h1>
		<ol class="tree">
			<?php echo implode("", $datasource); ?>
		</ol>
	</body>
</html>
