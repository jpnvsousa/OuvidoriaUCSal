<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.ucsal.edu.ouvidoria.Usuario"%>
<%@page import="br.ucsal.edu.ouvidoria.Mensagem"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		<br>
		<h2>Segue sua lista de mensagens não lidas:</h2>
		<br /> <br> <br>
	</nav>
	<br>
	<br>
	<br>
	<form action="ControllerLogin" method="post">
		<div align="center">
			<c:forEach items="${Mensagem.getListaMensagens()}" var="amigo">
Entre em contato com ${amigo.getFrom().getLogin()} <br />
			</c:forEach>
			<br>
			<br>
			<nav class="navbar navbar-light bg-light">
		<br>
		<h2>Conteudo das mensagens não lidas:</h2>
		<br /> <br> <br>
	</nav>
			
			<c:forEach items="${Mensagem.getListaMensagens()}" var="amigo2">
			 ${amigo2.getConteudo()} <br />
</c:forEach>
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