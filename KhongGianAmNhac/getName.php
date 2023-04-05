<?php 
	echo basename($_FILES["image"]["name"]);
	$name = "ImageSinger";
	echo substr($name,0, 5);
	echo "<br>Date: ".$_POST['birthday'];
 ?>