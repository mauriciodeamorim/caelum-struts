<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produtos</title>
</head>
<body>
<h1>Produtos</h1>

<table>
	<c:forEach items="${produtoList}" var="produto">
		<tr>
			<td>${produto.nome}</td>
			<td>${produto.preco}</td>
			<td>${produto.descricao}</td>	
		</tr>
	</c:forEach>
</table>
</body>
</html>