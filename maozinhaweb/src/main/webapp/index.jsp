<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mãozinha</title>
<%@include file= "all_components/CSS.jsp"%>
<style type="text/css">
	.back-img{
		background: url("resources/helphand.jpg");
		height:58vh;
		width: 100%;
		background-repeat: no-repeat;
		background-size:cover;
	}
	

</style>
</head>
<body>
	<%@include file= "all_components/NavBar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center">Faça sua parte!</h2>
		
	</div>
	<div class="container-fluid">
		<h3 class="text-center pt-2 pb-2">Últimas mãozinhas</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card">
				 	<div class="card-body text-center">
				 		<img alt="cadeira de rodas" src="resources/cadeira de rodas.jpg" style="width:100%;height:100%" class="img-thumblin">
				 		<p>Cadeira de rodas da Ciça.</p>
				 		<p>Dona Ciça</p>
				 		<p>Categoria: Ajuda com equipamento</p>
				 			<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-plus" ></i><i class="fa-solid fa-cart-shopping"></i></a>
				 			<a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-plus"></i><i class="fa-regular fa-address-book"></i></a>
				 			<a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-brazilian-real-sign"> 5,00</i></a>
					</div>
				</div>
			
			</div>
		</div>
	</div>
</body>
</html>