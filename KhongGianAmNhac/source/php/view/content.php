<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../css/content.css">
</head>
<body>
	<?php 
		session_start();
		include($_SERVER['DOCUMENT_ROOT']."/KhongGianAmNhac/source/php/model/bo/LoadInterface.php");
		if($f['id'] == "1"){
			$_SESSION['songList'] = loadSong();
		} else {
			$_SESSION['songList'] = search($_SESSION['search']);
		}
	 ?>
	<div class="container">
		<form action="../model/bo/searchHandle.php" method="post">
			<div class="taskbar">
			<a href="./content.php"><img src="../../../res/icon/logo03.png" title="Home" class="logo"></a>
			<input type="text" name="txtSearch" placeholder="Search" class="textSearch" required>
			<input type="submit" name="btnSearch" class="btnSearch" value="Search">
			<a href="./login.php"><img src="../../../res/icon/user.png" class="user" 
				title="<?php echo $_SESSION['state'] ?>"></a>
			<label class="name"><?php echo $_SESSION['user'] ?></label>
		</div>
		</form>
		<div class="content">
			<form method="POST">
				<table>
					<?php 
						$row = 0;
					 ?>
					 <tr>
					 	<?php 
					 		foreach($_SESSION['songList'] as $data){
					 	 ?>
					 		<td>
					 			<div class="songBox">
					 				<img src="../../../res/icon/like.png" class="icon like" title="<?php echo "Like: ".$data['numLike'] ?>">
					 				<img src="../../../res/icon/comment.png" class="icon comment" title="<?php echo "Comment: ".$data['numComment'] ?>">
					 				<img title="<?php echo "Download: ".$data['numDownload'] ?>" src="../../../res/icon/download.png" class="icon download">
					 				<img src="<?php echo "../../../res/singer/".$data['imageSinger'] ?>" class="avatar">
					 				<a href="./content.php?bh=<?php echo $data['srcSong'] ?>" class="showAudio">
					 					<h1 title="<?php echo $data['nameComposer'] ?>"><?php echo $data['nameSong'] ?></h1>
					 				</a>
					 				<h3><?php echo $data['nameSinger'] ?></h3>
					 			</div>
					 		</td>
					 		<?php 
					 			if(++$row == 4){
					 				$row = 0;
					 		 ?>
					 		 	</tr>
					 		 	<tr>
					 		 <?php 
					 		 	}
					 		  ?>
					 	<?php 
					 		}
					 	 ?>
					 </tr>
				</table>
				
			</form>
			<form class="play">
				<audio controls autoplay>
    				<source src="<?php echo "../../../res/audio/".$_GET['bh'] ?>" type="audio/ogg">
				</audio>
			</form>
		</div>
	</div>
</body>
</html>