<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MaozinhaDAOImplement"%>
<%@page import="com.entity.MaozinhaDtls"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Todas as mãozinhas</title>
<%@include file="CSS.jsp"%>
</head>
<body style="background-color: #f0f2f3">
	<%@include file="NavBar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<h3 class="text-center">Olá,Admin!</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg }</h5>
		<c:remove var="succMsg" scope="session"/>
	</c:if>
	
	<c:if test="${not empty failMsg }">
		<h5 class="text-center text-danger">${failMsg }</h5>
		<c:remove var="failMsg" scope="session"/>
	</c:if>

	<div class="container pt-3">
		<table
			class="table table-striped bg-primary table-hover table-bordered">
			<thead class="table-dark text-white">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Imagem</th>
					<th scope="col">Nome</th>
					<th scope="col">Requerente</th>
					<th scope="col">Valor mínimo</th>
					<th scope="col">Valor total</th>
					<th scope="col">Categoria</th>
					<th scope="col">Status</th>
					<th scope="col">Ação</th>

				</tr>
			</thead>
			<tbody>

				<% 
				MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
				List<MaozinhaDtls> list = dao.getAllMaozinhas();
				
				for(MaozinhaDtls m:list){
					%>
				<tr>
					<td><%=m.getMaozinha_id()%></td>
					<td><img src="../maozinhas_img/<%=m.getPhotoName()%>" style="width: 50px;height: 50px;"></td>
					<td><%=m.getMaozinha_name()%></td>
					<td><%=m.getReq_name()%></td>
					<td><%=m.getMin_value()%></td>
					<td><%=m.getTotal_value()%></td>
					<td><%=m.getCategory()%></td>
					<td><%=m.getStatus()%></td>
					<td><a href="edit_maozinhas.jsp?id=<%=m.getMaozinha_id()%>" class="btn btn-sm btn-primary">Editar</a> 
					<a href="../delete?id=<%=m.getMaozinha_id() %>" class="btn btn-sm btn-danger">Deletar</a></td>
				</tr>


				<%
				}
				%>

			</tbody>
		</table>
	</div>


	<%@include file="footer.jsp"%>
</body>
</html>