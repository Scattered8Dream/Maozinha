<%@page import="com.entity.MaozinhaDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MaozinhaDAOImplement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mãozinha</title>
<%@include file="all_components/CSS.jsp"%>
</head>
<body style="background-color: #f0f2f3;">
	<%@include file="all_components/NavBar.jsp"%>
	
	<%
		int mid = Integer.parseInt(request.getParameter("mid"));
		MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
		MaozinhaDtls m = dao.getMaozinhaById(mid);
		
	%>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="maozinhas_img/<%=m.getPhotoName() %>"
					style="height: 150px; width: 150px "> <br>
				<h4>Mãozinha: <span class="text-success"><%=m.getMaozinha_name() %></span></h4>
				<h4>Requerente: <span class="text-success"><%=m.getReq_name() %></span></h4>
				<h4>Categoria: <span class="text-success"><%=m.getCategory() %></span></h4>
			</div>

			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=m.getMaozinha_name() %></h2>

				<div class="row p-2">
					<div>
						<a href="" class="btn btn-success btn-block fa-2x"><i
							class="fa-solid fa-plus"></i><i class="fa-solid fa-cart-shopping"></i></a>

						<a href="" class="btn btn-danger btn-block fa-2x"><i
							class="fa-solid fa-brazilian-real-sign"> <%=m.getMin_value()%></i></a>
					</div>
				</div>

			</div>
		</div>
		
		<div class="container p-2 border bg-white" >
			<h2>Descrição</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
				nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit 
				in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
				Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
				officia deserunt mollit anim id est laborum."</p>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>