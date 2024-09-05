<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Configurações</title>
<style type="text/css">
a{
text-decoration: none;
color: black;
}

a:hover{
text-decoration: none;
}


</style>
</head>
<body style="background-color: #f7f7f7;">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	<%@include file="all_components/NavBar.jsp"%>

	<%User u=(User)session.getAttribute("userobj");%>

	<div class="container">
		<c:if test="${not empty userobj }">
				<h3 class="text-center pt-3">Olá, ${userobj.name}</h3>
		</c:if>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="sell_maozinha.jsp">
					<div class="card">
						<div class="text-center card-body">
							<div class="text-primary"><i class="fa-solid fa-hand fa-3x"></i></div>
							<h4>Criar Mãozinha</h4>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="text-center card-body">
							<div class="text-primary"><i class="fa-solid fa-id-card fa-3x"></i></div>
							<h4>Editar perfil</h4>
						</div>
					</div>
				</a>
			</div>
			
<!-- 			<div class="col-md-4 mt-3"> -->
<!-- 				<a href="user_address.jsp"> -->
<!-- 					<div class="card"> -->
<!-- 						<div class="text-center card-body"> -->
<!-- 							<div class="text-primary"><i class="fa-solid fa-location-dot fa-3x"></i></div> -->
<!-- 							<h4>Seu endereço</h4> -->
<!-- 							<p>Altere seu endereço</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</a> -->
<!-- 			</div> -->
			
			<div class="col-md-6 mt-3">
				<a href="order.jsp">
					<div class="card">
						<div class="text-center card-body">
							<div class="text-primary"><i class="fa-solid fa-box-open fa-3x"></i></div>
							<h4>Meus pedidos</h4>
							<p>Veja seus pedidos</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 mt-3">
				<a href="helpdesk.jsp">
					<div class="card">
						<div class="text-center card-body">
							<div class="text-primary"><i class="fa-solid fa-circle-user fa-3x"></i></div>
							<h4>HelpDesk</h4>
							<p>Suporte 24/7</p>
						</div>
					</div>
				</a>
			</div>
			
		</div>
	</div>
	
	<%@include file="all_components/footer.jsp"%>
	
</body>
</html>