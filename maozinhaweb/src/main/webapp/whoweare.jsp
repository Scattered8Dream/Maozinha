<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quem Somos</title>

<%@include file="all_components/CSS.jsp"%>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f7f7f7;
	color: #333;
}

.container {
	width: 80%;
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
}

.mission, .values {
	background-color: #eef;
	padding: 15px;
	border-radius: 8px;
	margin-bottom: 20px;
}

.mission h2, .values h2 {
	color: #444;
}
</style>
</head>
<body>

	<%@include file="all_components/NavBar.jsp"%>

	<div class="container">
		<h1>Quem Somos</h1>
		<p>
			Bem-vindo ao <strong>Mãozinha</strong>! Somos uma plataforma dedicada
			a conectar pessoas dispostas a ajudar com aquelas que precisam de uma
			mãozinha. Nosso objetivo é criar uma rede de solidariedade onde
			pequenas contribuições possam fazer uma grande diferença na vida de
			alguém.
		</p>

		<div class="mission">
			<h2>Nossa Missão</h2>
			<p>No Mãozinha, acreditamos que todos podem fazer a diferença.
				Nossa missão é facilitar o processo de doação, garantindo que a
				generosidade das pessoas chegue a quem mais precisa. Trabalhamos
				para construir uma comunidade solidária, onde o ato de doar se torna
				um gesto simples, acessível e impactante.</p>
		</div>

		<div class="values">
			<h2>Nossos Valores</h2>
			<ul>
				<li><strong>Solidariedade:</strong> Ajudar ao próximo é a base
					de tudo o que fazemos.</li>
				<li><strong>Transparência:</strong> Priorizamos a clareza e a
					confiança em todas as nossas ações.</li>
				<li><strong>Impacto:</strong> Acreditamos que pequenas ações
					podem gerar grandes mudanças.</li>
				<li><strong>Comunidade:</strong> Valorizamos a força do
					coletivo para alcançar objetivos comuns.</li>
			</ul>
		</div>

		<p>Nós do Mãozinha estamos comprometidos em fazer o bem. Se você
			deseja se juntar a nós nessa jornada de transformação, saiba que cada
			contribuição, por menor que seja, tem o poder de mudar vidas.</p>
	</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>