<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../css/header.css">
	<title></title>
</head>
<body>
<h1>
	<?php 
		session_start();
		$_SESSION['user'] = '';
		$_SESSION['state'] = 'Login';
		$_SESSION['id'] = "1";
		$_SESSION['songList'] = NULL;
		echo "Music Space";

	 ?>
</h1>
<h2>Giải trí bất tận cùng âm nhạc</h2>

</body>
</html>