<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Alterar endereço</title>
</head>
<body>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="all_components/NavBar.jsp"%>

	<div class="container"></div>
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Editar usuário</h4>

						<form class="row g-3">
							<div class="col-12">
								<label for="inputAddress" class="form-label">Endereço</label> <input
									type="text" class="form-control" id="inputAddress" value="">
							</div>
							<div class="col-12">
								<label for="inputCpf" class="form-label">CEP</label> <input
									type="text" class="form-control" id="inputCpf">
							</div>

							<div class="col-md-6">
								<label for="inputCity" class="form-label">Cidade</label> <input
									type="text" class="form-control" id="inputCity">
							</div>
							<div class="col-md-4">
								<label for="inputState" class="form-label">Estado</label> <select
									id="inputState" class="form-select">
									<option selected>Escolha...</option>
									<option value="AC">Acre</option>
									<option value="AL">Alagoas</option>
									<option value="AP">Amapá</option>
									<option value="AM">Amazonas</option>
									<option value="BA">Bahia</option>
									<option value="CE">Ceará</option>
									<option value="DF">Distrito Federal</option>
									<option value="ES">Espírito Santo</option>
									<option value="GO">Goiás</option>
									<option value="MA">Maranhão</option>
									<option value="MT">Mato Grosso</option>
									<option value="MS">Mato Grosso do Sul</option>
									<option value="MG">Minas Gerais</option>
									<option value="PA">Pará</option>
									<option value="PB">Paraíba</option>
									<option value="PR">Paraná</option>
									<option value="PE">Pernambuco</option>
									<option value="PI">Piauí</option>
									<option value="RJ">Rio de Janeiro</option>
									<option value="RN">Rio Grande do Norte</option>
									<option value="RS">Rio Grande do Sul</option>
									<option value="RO">Rondônia</option>
									<option value="RR">Roraima</option>
									<option value="SC">Santa Catarina</option>
									<option value="SP">São Paulo</option>
									<option value="SE">Sergipe</option>
									<option value="TO">Tocantins</option>
								</select>
							</div>

							<div class="col-12 text-center">
								<button type="submit" class="btn btn-primary">Editar</button>

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