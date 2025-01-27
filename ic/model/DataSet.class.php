<?php
include_once("Collection.class.php");

class DataSet {
	
	public function DataSet($name, $source, $fields) {
		$dataset = $name." = [%s];";
		$tempset = array();
		foreach ($fields as $key=>$val) {
			$tempset[] = sprintf("%s: %s", $key, $val);
		}
		$datarow = sprintf("{%s}", implode(", ", $tempset));

		$catalog = new Collection($source);
		$page = $catalog->getPage();

		$datasource = array();

		foreach ($page as $key=>$element) {
			$datasource[] = vsprintf($datarow, $this->clear($element));
		}

		printf($dataset, implode(", ", $datasource));	
	}	
	
	private function clear($element) {
		foreach ($element as $key=>$val) {
			if (is_numeric($key)) {
				unset($element[$key]);
			}
		}
		return $element;
	}	
	
}
?>
