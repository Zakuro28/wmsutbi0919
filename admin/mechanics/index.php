<?php
 
$dataPoints = array(
	array("label"=> "Canusi Bio Leather", "y"=> 10),
	array("label"=> "Dee ZamPen Native Chicken", "y"=> 7),
	array("label"=> "Dee ZamPen Native Egg", "y"=> 0),
	array("label"=> "JMs Fruiting Bags", "y"=> 20),
	array("label"=> "JMs Oyster Mushroom Atsara", "y"=> 10),
	array("label"=> "JMs Oyster Mushroom Chicaron", "y"=> 20),
	array("label"=> "Macrohon Vermicast Soil", "y"=> 20),
	array("label"=> "Maicas Fresh Mushroom", "y"=> 20),
	array("label"=> "Maicas Fruiting Bags", "y"=> 20),
	array("label"=> "NDCM Vermicast Soil", "y"=> 20),
	array("label"=> "Rodolfo ZamPen Native Chicken", "y"=> 19),
	array("label"=> "Ruru Dried Mushroom", "y"=> 10),
	array("label"=> "Ruru Powdered Mushroom", "y"=> 13),
	array("label"=> "Rurus Fresh Mushroom", "y"=> 15),
	array("label"=> "Siete Swerte Fresh Mushroom", "y"=> 15),
	array("label"=> "Rurus Mushroom Chips", "y"=> 15),
	array("label"=> "Unvas Accessories", "y"=> 15),
	array("label"=> "Unvas Art Canvas", "y"=> 15),
	array("label"=> "Xavier Zampen Native Chicken", "y"=> 20)
);
	
?>
<!DOCTYPE HTML>
<html>
<head>  
<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title:{
		text: "Inventory"
	},
	subtitles: [{
		text: "total inventory"
	}],
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 11,
		indexLabel: "{label} - #percent%",
		yValueFormatString: "#,##0",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 600px; width: 100%;"></div>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
</body>
</html>       