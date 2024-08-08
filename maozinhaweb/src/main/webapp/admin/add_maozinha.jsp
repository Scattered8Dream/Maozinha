<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add mãozinha</title>
<%@include file="CSS.jsp"%>
</head>
<body style="background-color: #f0f2f3">
	<%@include file="NavBar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Adiconar mãozinha</h4>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failMsg }">
							<p class="text-center text-danger">${failMsg }</p>
							<c:remove var="failMsg" scope="session"/>
						</c:if>
						
						<form action="../add_maozinhas" method="post"
							enctype="multipart/form-data">

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

	<%@include file="footer.jsp"%>
</body>
</html>