<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MaozinhaDAOImplement"%>
<%@page import="com.entity.MaozinhaDtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Edit mãozinha</title>
<%@include file="CSS.jsp"%>
</head>
<body style="background-color: #f0f2f3">
	<%@include file="NavBar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Editar mãozinha</h4>
						
						<% 
							int id=Integer.parseInt(request.getParameter("id"));
							MaozinhaDAOImplement dao= new MaozinhaDAOImplement(DBConnect.getConn());
							MaozinhaDtls m=dao.getMaozinhaById(id);
						%>
						
						<form action="../edit_maozinhas" method="post">

							<input type="hidden" name="id" value="<%=m.getMaozinha_id()%>">

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Nome da Mãozinha</label> <input
									name="mname" type="text" class="form-control"
									id=exampleInputEmail aria-describedby="emailHelp" value="<%=m.getMaozinha_name()%>">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Nome do requerente</label> <input
									name="claimant" type="text" class="form-control"
									id=exampleInputEmail aria-describedby="emailHelp" value="<%=m.getReq_name()%>">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Valor total</label> <input
									name="totalvalue" type="number" class="form-control"
									id=exampleInputPassword1 value="<%=m.getTotal_value()%>">
							</div>

							<div class="form-group pt-2">
								<label for="exampleInputEmail">Valor mínimo de doação</label> <input
									name="minvalue" type="number" class="form-control"
									id=exampleInputPassword1 value="<%=m.getMin_value()%>">
							</div>


								<div class="form-group pt-2">
									<label for="inputState">Estado da mãozinha</label> <select
										id="inputState" name="mstatus" class="form-control">

										<%if("Em andamento".equals(m.getStatus())){%>
											
											<option value="Inativa">Inativa</option>
											<option value="Em andamento">Em andamento</option>
											<option value="Completa">Completa</option>
											<option value="Outro">Outros</option>
											
										<%}else{%>
											<option value="Inativa">Inativa</option>
											<option value="Em andamento">Em andamento</option>
											<option value="Completa">Completa</option>
											<option value="Outro">Outros</option>
										
										<%}%>
									</select>

								</div>
								
								<div class="form-group pt-2">
								<label for="exampleFormControlFile1"></label>Upload de foto<input
									name="mimg" type="file" class="form-control-file"
									id=exampleFormControlFile1>
							</div>
							
							<div class="pt-2">
								<button type="submit" class="btn btn-primary">Editar</button>
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