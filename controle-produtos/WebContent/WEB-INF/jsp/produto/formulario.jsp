<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link type="text/css" href="css/tarefa.css" rel="stylesheet"/>
	<link type="text/css" href="css/jquery.css" rel="stylesheet"/>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<title>Adiciona produtos</title>
</head>
<body>
	<h3>Adicionar produtos</h3>
	
	<form action="<c:url value="/produto/adiciona"/>">
		Nome: <input name="produto.nome"/><br>
		Descricao: <input name="produto.descricao"/><br>
		Preco: <input name="produto.preco"/><br>				
		<input type="submit" value="Adicionar">
	</form>
</body>
</html>