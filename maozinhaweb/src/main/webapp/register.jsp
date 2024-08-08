<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro de Usuário</title>
<%@include file="all_components/CSS.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="all_components/NavBar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">

				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Registro de Usuário</h4>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failMsg }">
							<p class="text-center text-danger">${failMsg }</p>
							<c:remove var="failMsg" scope="session"/>
						</c:if>
						
						<form action="register" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Nome
									Completo</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email</label>
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Número de telefone</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phno">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="all_components/footer.jsp"%>
</body>
</html>