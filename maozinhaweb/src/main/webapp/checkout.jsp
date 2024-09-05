<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImplement"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_components/CSS.jsp"%>
<meta charset="UTF-8">
<title>Carrinho Mãozinha</title>
</head>
<body style="background-color: #f0f1f2;">

	<%@include file="all_components/NavBar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty succMsg}">
		<div class="alert alert-success" role="alert">
  			${succMsg }
		</div>
		<c:remove var="succMsg" scope="session"/>
	
	</c:if>
	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger" role="alert">
  			${failedMsg }
		</div>
		<c:remove var="failedMsg" scope="session"/>
	
	</c:if>


	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">

						<h3 class="text-center">Sua(s) mãozinha(s)</h3>
						<table class="table table-success table-striped table-bordered">

							<thead>
								<tr>
									<th scope="col">Mãozinha</th>
									<th scope="col">Requerente</th>
									<th scope="col">Preço</th>
									<th scope="col">Ação</th>
								</tr>
							</thead>
							<tbody>
							
								<%
									User u=(User)session.getAttribute("userobj");
								
									CartDAOImplement dao = new CartDAOImplement(DBConnect.getConn());
									List<Cart> cart =dao.getMaozinhaByUser(u.getId());
									Double totalPrice = 0.00;
									for(Cart c: cart){
										totalPrice =c.getTotal_price();
								%>
									
										<tr>
											<th scope="row"><%=c.getMaozinha_name() %></th>
											<td><%=c.getReq_name() %></td>
											<td><%=c.getPrice() %></td>
											<td>
												<a href="remove_maozinha?mid=<%=c.getMaozinha_id()%>&&uid=<%=c.getUser_id() %>" class="btn btn-sm btn-danger"><i class="fa-solid fa-trash" style="color: #ffffff;"></i></a>
											</td>
										</tr>
									<%}%>
									
									<tr>
										<td>Preço total </td>
										<td></td>
										<td></td>
										<td><%=totalPrice %></td>
									</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center">Detalhes do pedido</h3>
						<form class="row g-3">
							<div class="col-md-6">
							<div class="col-12">
							
								<label for="inputName" class="form-label">Nome</label> <input
									name="username" type="text" class="form-control" id="inputName" value="<%=u.getName()%>">
							</div>
							
								<label for="inputEmail4" class="form-label">Email</label> <input
									name="email" type="email" class="form-control" id="inputEmail4" value="<%=u.getEmail()%>">
							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Telefone</label> <input
									name="phone" type="number" class="form-control" id="inputEmail4" value="<%=u.getPhone()%>">
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">Endereço</label> <input
									name="address" type="text" class="form-control" id="inputAddress" value="">
							</div>
							<div class="col-md-6">
								<label for="inputCity" class="form-label">Cidade</label> <input
									name="city" type="text" class="form-control" id="inputCity">
							</div>
							<div class="col-md-4">
								<label for="inputState" class="form-label">Estado</label> <select
									name="state" id="inputState" class="form-select">
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
							<div class="col-md-2">
								<label for="inputCpf" class="form-label">CEP</label> <input
									name="pincode" type="text" class="form-control" id="inputCpf">
							</div>
							<div class="col-12">
								<label for="inputState" class="form-label">Meio de
									pagamento</label> <select id="inputState" class="form-select" name="paymentType">
									<option selected>Escolha...</option>
									<option value="SP">PIX</option>
									<option value="SE">Crédito</option>
									<option value="TO">Débito</option>
									<option value="TO">Boleto bancário</option>
								</select>
							</div>
							<div class="col-12 text-center">
								<button type="submit" class="btn btn-primary">Concluir</button>
								<a href="index.jsp" class="btn btn-success">Continuar
									comprando</a>
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