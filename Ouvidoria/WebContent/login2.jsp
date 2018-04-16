<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style>



.borderInput {
	border: 1px solid black;
	border-radius: 4px;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8" lang="pt-br">
<title>Ouvidoria UCSal</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<br> <br>
		<h1>Sessão de Ouvidoria</h1>
		<br>
		<br> <br>
	</nav>
	<br>
	<br>
	<br>
	<form action="ControllerLogin" method="post">
		<div align="center">
			Login:<br> <input class="borderInput" type="text" name="login"><br><br>
			Senha:<br> <input class="borderInput" type="password" name="password"><br>
			<br> <input class="btn btn-dark" type="submit" value="Login"><br>
		</div>
	</form>
	<br>
	<div class="footer">
		<nav class="navbar navbar-dark bg-dark">
			
			<br> <img
				src="https://www.ucsal.br/images/logo_nova_ucsal_slogan.png" alt="">
		</nav>
	</div>
</body>
</html>