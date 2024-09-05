<%@page import="com.entity.MaozinhaDtls"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.MaozinhaDAOImplement"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mãozinha</title>
<link rel="shortcut icon" href="/resources/help.png" type="image/x-icon">
<%@include file="all_components/CSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("resources/helphand.jpg");
	height: 58vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body>

	<%User user = (User)session.getAttribute("userobj"); %>

	<%@include file="all_components/NavBar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center">Faça sua parte!</h2>
	</div>

	<!-- Começo das mãozinhas recentes -->

	<div class="container-fluid" style="background-color: #f7f7f7;">
		<h3 class="text-center pt-2 pb-2">Mãozinhas médicas</h3>
		<div class="row">
				<%
				MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
				List<MaozinhaDtls> list = dao.getNewMaozinha();
				for (MaozinhaDtls m : list) {
				%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="maozinhas_img/<%=m.getPhotoName() %>"
							style="width: 150px; height: 200px" class="img-thumbnail">
						<p><%=m.getMaozinha_name()%></p>
						<p><%=m.getReq_name()%></p>
						<p>
							Categoria:
							<%=m.getCategory()%></p>
							
						<% if(user==null){ %>
							<a href="login.jsp" class="btn btn-danger btn-block"><i
							class="fa-solid fa-plus"></i><i class="fa-solid fa-cart-shopping"></i></a>
							<a href="login.jsp"
							class="btn btn-danger btn-block"><i
							class="fa-solid fa-brazilian-real-sign"> <%=m.getMin_value()%></i></a>
						<%}else{%>
							<a href="cart?mid=<%=m.getMaozinha_id() %>&&uid=<%=user.getId() %>" class="btn btn-danger btn-block"><i
							class="fa-solid fa-plus"></i><i class="fa-solid fa-cart-shopping"></i></a>
							<a href=""
							class="btn btn-danger btn-block"><i
							class="fa-solid fa-brazilian-real-sign"> <%=m.getMin_value()%></i></a>
						<%}%>
						
						<a href="view_maozinhas.jsp?mid=<%=m.getMaozinha_id() %>" class="btn btn-success btn-block"><i
							class="fa-solid fa-plus"></i><i
							class="fa-regular fa-address-book"></i></a>
					</div>
				</div>
				</div>	

				<%
				}
				%>

			</div>

		</div>

	</div>

	<!-- Final das mãozinhas recentes -->

	<hr>

	<!-- Começo todas as mãozinhas -->

	<div class="container-fluid" style="background-color: #f7f7f7;">
		<h3 class="text-center pt-2 pb-2">Todas as mãozinhas</h3>
		<div class="row">
			<%
				MaozinhaDAOImplement dao2 = new MaozinhaDAOImplement(DBConnect.getConn());
				List<MaozinhaDtls> list2 = dao2.getRecentMaozinhas();
				for (MaozinhaDtls m : list2) {
				%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="cadeira de rodas" src="maozinhas_img/<%=m.getPhotoName() %>"
							style="width: 150px; height: 200px" class="img-thumbnail">
						<p><%=m.getMaozinha_name()%></p>
						<p><%=m.getReq_name()%></p>
						<p>
							Categoria:
							<%=m.getCategory()%></p>
						<% if(user==null){ %>
							<a href="login.jsp" class="btn btn-danger btn-block"><i
							class="fa-solid fa-plus"></i><i class="fa-solid fa-cart-shopping"></i></a>
							<a href="login.jsp"
							class="btn btn-danger btn-block"><i
							class="fa-solid fa-brazilian-real-sign"> <%=m.getMin_value()%></i></a>
						<%}else{%>
							<a href="cart?mid=<%=m.getMaozinha_id() %>&&uid=<% %>" class="btn btn-danger btn-block"><i
							class="fa-solid fa-plus"></i><i class="fa-solid fa-cart-shopping"></i></a>
							<a href=""
							class="btn btn-danger btn-block"><i
							class="fa-solid fa-brazilian-real-sign"> <%=m.getMin_value()%></i></a>
						<%}%>
						
						<a href="view_maozinhas.jsp?mid=<%=m.getMaozinha_id() %>" class="btn btn-success btn-block"><i
							class="fa-solid fa-plus"></i><i
							class="fa-regular fa-address-book"></i></a>
					</div>
				</div>
				</div>	

				<%
				}
				%>

		</div>

	</div>

	<!-- Final todas as mãozinhas -->
	
	<div class="text-center p-3">
			<a href="" class="btn btn-danger btn-sm text-white">Ver tudo!</a>
		</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>