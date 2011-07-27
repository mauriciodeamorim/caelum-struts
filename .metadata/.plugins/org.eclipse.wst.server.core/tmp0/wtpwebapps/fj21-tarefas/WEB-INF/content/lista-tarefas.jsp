<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
<title>Lista tarefas</title>
</head>
<body>
	<h1>Gerenciador de tarefas</h1>
	<br><br>
	<table id="lista-tarefas">
	<tr>
		<th>Id</th>
		<th>Descricao</th>
		<th>Finalizacao</th>
		<th>Data de finalizacao</th>
		<th>Acoes</th>
	</tr>
	<c:forEach items="${tarefas}" var="tarefa">
		<tr>
			<td>${tarefa.id}</td>
			<td>${tarefa.descricao}</td>
			<c:if test="${tarefa.finalizado eq false}">
				<td>Nao finalizado</td>	
			</c:if>
			<c:if test="${tarefa.finalizado eq true}">
				<td>Finalizado</td>	
			</c:if>
			<td>
				<fmt:formatDate value="${tarefa.dataFinalizado.time}" pattern="dd/MM/yyyy"/>
			</td>
			<td><a href="removeTarefa?tarefa.id=${tarefa.id}">Remover</a></td>
			<td><a href="mostraTarefa?tarefa.id=${tarefa.id}">Alterar</a></td>
			<c:if test="${tarefa.finalizado eq false}">
				<td id="tarefa_${tarefa.id}">
					<a href="#" onclick="finalizaAgora(${tarefa.id})"> Finaliza agora</a>
				</td>	
			</c:if>
		</tr>
	</c:forEach>
	</table>
	<br><br>
	<div id="menu-tarefas">
		<a href="formularioTarefa">Criar nova tarefa</a>
	</div>
</body>
<script type="text/javascript">
	function finalizaAgora(id){
		$.post("finalizaTarefa", {'id': id}, function (){
			$("#tarefa_"+id).html("Tarefa finalizada");
		});
	}
</script>
</html>