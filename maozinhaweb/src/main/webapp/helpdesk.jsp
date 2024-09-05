<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help Desk</title>

<%@include file="all_components/CSS.jsp"%>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	color: #333;
}

.container {
	width: 60%;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

h1 {
	text-align: center;
	color: #555;
}

p {
	line-height: 1.6;
	margin-bottom: 20px;
	text-align: center;
}

.contact-info {
	text-align: center;
	margin-top: 20px;
	padding: 10px;
	background-color: #eef;
	border-radius: 8px;
}

.contact-info p {
	font-size: 18px;
	margin: 5px 0;
}

.contact-info a {
	color: #007bff;
	text-decoration: none;
	font-weight: bold;
}

.contact-info a:hover {
	text-decoration: underline;
}
</style>

</head>
<body>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	<%@include file="all_components/NavBar.jsp"%>

	<div class="container">
		<h1>Help Desk</h1>
		<p>Precisa de ajuda? Estamos aqui para te apoiar! No Mãozinha,
			nosso objetivo é garantir que você tenha a melhor experiência
			possível. Se você tiver alguma dúvida, problema ou precisar de
			suporte, não hesite em nos contatar.</p>

		<div class="contact-info">
			<p>Você pode nos ligar diretamente:</p>
			<p>
				<strong>Telefone de Help Desk:</strong>
			</p>
			<p>
				<a href="tel:+5514982217021">+55 14 98221-7021</a>
			</p>
		</div>

		<p>Nossa equipe de suporte está disponível para responder suas
			perguntas e resolver qualquer questão relacionada ao nosso serviço.
			Aguardamos seu contato!</p>
	</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>