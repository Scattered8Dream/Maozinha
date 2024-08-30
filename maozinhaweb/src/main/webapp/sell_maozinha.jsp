<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Criar mãozinha</title>
</head>
<body style="background-color: #f7f7f7;">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_components/NavBar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					
					<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failMsg }">
							<p class="text-center text-danger">${failMsg }</p>
							<c:remove var="failMsg" scope="session"/>
						</c:if>

						<h4 class="text-center">Adiconar mãozinha</h4>

						<form action="add_maozinha_user" method="post"
							enctype="multipart/form-data">

							<input type="hidden" value="${userobj.email}" name="user">

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Nome da Mãozinha</label> <input
									name="mname" type="text" class="form-control"
									id=exampleInputEmail aria-describedby="emailHelp">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Nome do requerente</label> <input
									name="claimant" type="text" class="form-control"
									id=exampleInputEmail aria-describedby="emailHelp">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Valor total</label> <input
									name="totalvalue" type="number" class="form-control"
									id=exampleInputPassword1>
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Valor mínimo de doação</label> <input
									name="minvalue" type="number" class="form-control"
									id=exampleInputPassword1>
							</div>

							<div class="form-group pt-2">
								<label for="inputState">Categorias de mãozinhas</label> <select
									id="inputState" name="mtype" class="form-control">

									<option selected>--escolha--</option>
									<option value="Gastos médicos">Gastos médicos</option>
									<option value="Outros">Outros</option>

								</select>

							</div>

							<div class="form-group pt-2">
								<label for="inputState">Estado da mãozinha</label> <select
									id="inputState" name="mstatus" class="form-control">

									<option selected>--escolha--</option>
									<option value="Em andamento">Em andamento</option>
									<option value="Completa">Completa</option>
									<option value="Inativa">Inativa</option>
									<option value="Outro">Outros</option>

								</select>

							</div>

							<div class="form-group pt-2">
								<label for="exampleFormControlFile1"></label>Upload de foto<input
									name="mimg" type="file" class="form-control-file"
									id=exampleFormControlFile1>
							</div>

							<div class="pt-2">
								<button type="submit" class="btn btn-primary">Adicionar</button>
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