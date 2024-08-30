<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Pedidos</title>
</head>
<body>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_components/NavBar.jsp"%>

	<div class="container p-3">

		<h4 class="text-center">Seus pedidos</h4>

		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th scope="col">Id Pedido</th>
					<th scope="col">Nome</th>
					<th scope="col">Nome mãozinha</th>
					<th scope="col">Requerente</th>
					<th scope="col">Valor</th>
					<th scope="col">Tipo de pagamento</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>Mark</td>
					<td>Otto</td>
				</tr>
			</tbody>
		</table>
	</div>


	<%@include file="all_components/footer.jsp"%>
</body>
</html>