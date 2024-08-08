<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Mãozinha</title>
<%@include file="all_components/CSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/NavBar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Login</h4>
						
						<c:if test="${not empty failMsg }">
							<h5 class="text-center text-danger">${failMsg }</h5>
							<c:remove var="failMsg" scope="session"/>
						</c:if>

						<form action="login" method="post">

							<div class="form-group">
								<label for="InputEmail" class="form-label">Email</label> <input
									type="email" class="form-control" id="InputEmail1"
									aria-describedby="emailHelp" placeholder="Insira seu Email"
									required="required" name="email">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputPassword1" class="form-label">Senha</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Insira sua senha"
									required="required" name="password">
							</div>

							<div class="text-center pt-2">

								<button type="submit" class="btn btn-primary center">Entrar</button>
								<br> <a href="register.jsp" class="center">Criar conta</a>

							</div>

						</form>

					</div>


				</div>

			</div>

		</div>

	</div>


	<%@include file="all_components/footer.jsp"%>

</body>
</html>