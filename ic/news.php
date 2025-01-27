<?php
header("Content-type: text/xml");

include_once("model/Collection.class.php");

$doc = "<"."?xml version=\"1.0\" encoding=\"iso-8859-1\" ?".">";

$datarow = "<item>";
$datarow.= "<title>%s</title>";
$datarow.= "<link>%s</link>";
$datarow.= "<description>%s</description>";
$datarow.= "<author>%s</author>";
$datarow.= "<pubdate>%s</pubdate>";
$datarow.= "</item>";

$catalog = new Collection("ic_vw_news");
$page = $catalog->getPage();

$datasource = array();

foreach ($page as $key=>$val) {
	$datasource[] = sprintf($datarow, $val['_title'], $val['_link'], $val['_description'], $val['_author'], $val['_pubdate']);
}
?>
<rss version="2.0">
	<channel>
		<title>Intelcomp - Noticias. San Jos&#233;, Costa Rica.</title>
		<link>http://wvw.intelcomp.ru/</link>
		<description>
			San Jos&#233;, Costa Rica. Para el seguimiento del acontecer inform&#225;tico.
		</description>
		<language>es-CR</language>
		<webmaster>webmaster@intelcomp.ru</webmaster>
		<copyright>
			Copyright 2013 Intelcomp | Todos los derechos reservados
		</copyright>
		<docs>http://wvw.intelcomp.ru/news.php</docs>
		<?php echo implode("", $datasource); ?>
	</channel>
</rss>
