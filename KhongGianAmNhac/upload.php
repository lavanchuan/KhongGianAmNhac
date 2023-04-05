<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
</head>
<body>
  <?php 
    session_start();
   ?>
<form action="getName.php" method="post" enctype="multipart/form-data">
  File: <input type="file" name="image">
  <br>
  Date:<input type="date" name="birthday">
  <input type="submit" name="submit" value="OK">
</form>
</body>
</html>