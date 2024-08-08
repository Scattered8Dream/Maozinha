<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Mãozinha</title>
<%@include file="CSS.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body style="background-color: #f0f2f3">
	<%@include file="NavBar.jsp"%>

	<h5 class="text-center">Olá, admin !</h5>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-3">
				<a href="add_maozinha.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-plus fa-3x"></i>
							<h4>Adicionar mãozinhas</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_maozinhas.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-hand-holding-heart fa-3x"></i>
							<h4>Todas as mãozinhas</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="donations.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-hand-holding-dollar fa-3x"></i>
							<h4>Doações</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
			<a data-bs-toggle="modal" data-bs-target="#exampleModal">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x"></i>
						<h4>Log out</h4>

					</div>
				</div>
				</a>
			</div>

		</div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Deseja
						sair?</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-footer">
					<a class="btn btn-primary" href="../login.jsp" role="button">Logout</a>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Fechar</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->

	<%@include file="footer.jsp"%>
</body>
</html>