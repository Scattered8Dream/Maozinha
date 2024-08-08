<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doações</title>
<%@include file="CSS.jsp"%>
</head>
<body style="background-color: #f0f2f3">
	<%@include file="NavBar.jsp"%>
	<div class="container pt-3">
		<table
			class="table table-striped bg-primary table-hover table-bordered">
			<thead class="table-dark text-white">
				<tr>
					<th scope="col">Id doação</th>
					<th scope="col">Nome doador</th>
					<th scope="col">Email</th>
					<th scope="col">Telefone</th>
					<th scope="col">Mãozinha</th>
					<th scope="col">Valor</th>
					<th scope="col">Forma de pagamento</th>
					<th scope="col">Ação</th>

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
					<td>@mdo</td>
					<td><a href="#" class="btn btn-sm btn-primary">Editar</a> <a
						href="#" class="btn btn-sm btn-danger">Deletar</a></td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td><a href="#" class="btn btn-sm btn-primary">Editar</a> <a
						href="#" class="btn btn-sm btn-danger">Deletar</a></td>
				</tr>

			</tbody>
		</table>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>