<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - Mãozinha</title>
</head>
<body>
	<h1>Home Usuário</h1>

	<c:if test="${not empty userobj }">
		<h5 class="text-center text-danger">Olá, ${userobj.name }</h5>
		<c:remove var="failMsg" scope="session" />
	</c:if>
</body>
</html>