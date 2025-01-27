<!doctype html>
<?php include_once("model/Collection.class.php"); ?>
<html>
	<head>
		<?php
			$datarow = "<li class=\"file\">";
			$datarow.= "<a name=\"%d\">";
			$datarow.= "<h3>%s</h3>";
			$datarow.= "<span>%s</span>";
			$datarow.= "</a>";
			$datarow.= "</li>";

			$catalog = new Collection("ic_tb_products");
			$page = $catalog->getPage();

			$datasource = array();

			foreach ($page as $key=>$element) {
				$datasource[] = sprintf($datarow, $element['_id'], $element['_name'], $element['_description']);
			}
		?>
		<link rel="stylesheet" type="text/css" href="templates/theme.css" />
		<link rel="stylesheet" type="text/css" href="templates/tree.css" />
	</head>
	<body class="news">
		<h1>Nuestros Productos</h1>
		<ol class="tree">
			<?php echo implode("", $datasource); ?>
		</ol>
	</body>
</html>
