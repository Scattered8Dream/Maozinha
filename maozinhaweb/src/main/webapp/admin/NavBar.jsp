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
		<div class="col-md-3">

			<c:if test="${not empty userobj }">

				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-user"></i> ${ userobj.name}</a>
				<a data-bs-toggle="modal" data-bs-target="#exampleModalCenter"
				class="btn btn-primary text-white"><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>

			</c:if>

			<c:if test="${empty userobj }">

				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a>
				<a href="../register.jsp" class="btn btn-primary text-white"><i
					class="fas fa-user-plus"></i> Registrar</a>

			</c:if>

		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Deseja
					sair?</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-footer">
				<a href="../logout" class="btn btn-primary" type="button">Logout</a>
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Fechar</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal -->

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
					aria-current="page" href="home.jsp"><i class="fa-solid fa-house m-2"></i>Home</a>
				</li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"><i class="fa-solid fa-star m-2"></i>Recentes</a>
				</li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"><i class="fa-solid fa-hand m-2"></i>Mãozinhas</a>
				</li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"><i
						class="fa-solid fa-question m-2"></i>Sobre nós</a></li>
				<li class="nav-item">
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-light my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-gear"></i> Configurações
				</button>
				<button class="btn btn-danger my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-phone"></i> Contato
				</button>
			</form>
		</div>
	</div>
</nav>