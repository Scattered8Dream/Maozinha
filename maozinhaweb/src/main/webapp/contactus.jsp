<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Fale conosco</title>
<link rel="shortcut icon" href="/resources/help.png" type="image/x-icon">

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.container {
	width: 50%;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

 h1 {
	text-align: center;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input, .form-group textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-group textarea {
	resize: vertical;
	height: 150px;
}

.btn-submit {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #28a745;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

.btn-submit:hover {
	background-color: #218838;
}
</style>


</head>
<body>
	<%@include file="all_components/NavBar.jsp"%>

	<div class="container">
		<h1>Fale Conosco</h1>
		<form action="/enviar" method="POST">
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text" id="nome"
					name="nome" required>
			</div>
			<div class="form-group">
				<label for="email">E-mail:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="mensagem">Mensagem:</label>
				<textarea id="mensagem" name="mensagem" required></textarea>
			</div>
			<button type="submit" class="btn-submit">Enviar</button>
		</form>

		<p class="pt-3 text-center">Em caso de dúvidas ou problemas
			durante a utilização do site, fale conosco.</p>

	</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>