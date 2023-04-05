<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../css/login.css">
</head>
<body>
	<h1>Login</h1>
	<form action="../controller/checkLogin.php" method="post">
		<table>
			<tbody>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="txtUser" placeholder="Username" required></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="txtPass" placeholder="Password" required></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="btn" value="Login">
					<input type="submit" name="btn" value="Cancel"></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>