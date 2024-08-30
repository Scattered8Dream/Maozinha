<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Editar usuário</title>

</head>
<body style="background-color: #f0f1f2;">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	
	<%@include file="all_components/NavBar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">

						<h4 class="text-center">Editar usuário</h4>

						<form action="update_profile" method="post">
							
							<input type="hidden" value="${userobj.id" name="id">
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Nome
									Completo</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="fname" value="${userobj.name}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email</label>
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email" value="${userobj.email}">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Número
									de telefone</label> <input type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									required="required" name="phno" value="${userobj.phone}">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Senha</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required="required" name="password">
							</div>

							<button type="submit" class="btn btn-primary">Atualizar</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>