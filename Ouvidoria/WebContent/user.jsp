<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.ucsal.edu.ouvidoria.Usuario"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
<%if((Boolean) request.getSession().getAttribute("mensagemJS")!=null && (Boolean) request.getSession().getAttribute("mensagemJS")) {
	out.print("alert(\"Sugestão enviada\");");
	request.getSession().setAttribute("mensagemJS", null);
}%>
</script>
<style>
textarea {
	resize: none;
}

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

	<%
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
	%>
	<nav class="navbar navbar-light bg-light">
		<br> <br>
		<h1>
			Bem vindo,
			<%=usuario.getLogin()%></h1>
		<br> <br> <br>
	</nav>
	<br>
	<br>
	<br>

	<div class="form-group" align="center">
		<label for="exampleFormControlTextarea1">Insira sua sugestão
			para enviar à Ouvidoria</label>
		<form action="MensagemController" method="post">
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="15" name="mensagemTextArea"></textarea>
			<button class="btn btn-dark btn-primary btn-block " type="submit">Enviar</button>
			<br> <br> <input class="btn btn-dark" type="button"
				value="Voltar"><br>
		</form>
	</div>

	<br>
	<div class="footer">
		<nav class="navbar navbar-dark bg-dark">

			<br> <img
				src="https://www.ucsal.br/images/logo_nova_ucsal_slogan.png" alt="">
		</nav>
	</div>

</body>
</html>