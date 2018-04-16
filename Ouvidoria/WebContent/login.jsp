<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
<style>
:root {
  --input-padding-x: .75rem;
  --input-padding-y: .75rem;
}

.link{
font-family: 'Exo 2', sans-serif;
text-shadow: 4px 4px 4px #aaa;
}

html
body{
  padding-top: 80px;
  background-color: #ccc;
}
#sessaoouvidoria{
color:white;
}


#memamou{
  width: 100%;
  bottom: 0;
  position: fixed;
}
.form-signin {
  width: 100%;
  max-width: 420px;
  padding: 15px;
  margin: auto;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group > input,
.form-label-group > label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group > label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0; /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown) ~ label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
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
<div class="link" align="center" id="sessaoouvidoria"><h1>SETOR DE OUVIDORIA</h1><br><br></div>


  <div>
  	<form class="form-signin" action="LoginController" method="post">
        <div class="form-label-group">
          <input name="login" type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
          <label for="inputEmail">Identificação de usuário</label>
        </div>

        <div class="form-label-group">
          <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
          <label for="inputPassword">Senha</label>
        </div>

        <button class="btn btn-dark btn-primary btn-block " type="submit">Acessar</button>
      </form>
      <div class="footer">
    </div>
  </div>
    <nav class="navbar navbar-dark bg-dark" id="memamou">        
        <br> <img
          src="https://www.ucsal.br/images/logo_nova_ucsal_slogan.png" alt="">
      </nav>
</body>

</html>