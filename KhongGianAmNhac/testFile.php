<!DOCTYPE html>
<html>
<body>
<?php 
	session_start();
	$_SESSION['k'] = "OK";
	header("location: ./upload.php");
 ?>
</body>
</html>