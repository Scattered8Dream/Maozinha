<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: #e57373"></div>
<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3">
			<h3>
				<i class="fa-solid fa-hand"></i> Mãozinha
			</h3>
		</div>
		<div class="col-md-6">
			<form class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Pesquisar</button>
			</form>
		</div>

		<c:if test="${not empty userobj }">

			<div class="col-md-3">
				<a href="checkout.jsp" class="btn btn-danger"><i class="fa-solid fa-cart-shopping" style="color: #ffffff;"></i></a>
				<a href="login.jsp" class="btn btn-success"> <i
					class="fa-solid fa-user-gear"></i> ${userobj.name}
				</a> <a href="logout" class="btn btn-primary "><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>
			</div>

		</c:if>

		<c:if test="${empty userobj }">

			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-door-open"></i> Login</a> <a href="register.jsp"
					class="btn btn-primary"><i class="fa-solid fa-pencil"></i>
					Registrar</a>
			</div>

		</c:if>

	</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i class="fa-solid fa-house m-2"></i>Home</a>
				</li>
<!-- 				<li class="nav-item"><a class="nav-link active" -->
<!-- 					aria-current="page" href="#"><i class="fa-solid fa-star m-2"></i>Em -->
<!-- 						andamento</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link active" -->
<!-- 					aria-current="page" href="#"><i class="fa-solid fa-hand m-2"></i>Mãozinhas</a> -->
<!-- 				</li> -->
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="whoweare.jsp"><i
						class="fa-solid fa-question m-2"></i>Sobre nós</a></li>
				<li class="nav-item">
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-gear"></i> Configurações
				</a>
				<a href="contactus.jsp" class="btn btn-danger my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-phone"></i> Contato
				</a>
			</form>
		</div>
	</div>
</nav>