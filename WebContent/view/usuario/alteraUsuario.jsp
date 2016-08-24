<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar Usuário</title>
</head>
<body>

	

	<hr>
	<h3>Alterar Usuário</h3>
	<hr>
	
	<form action="alterarUsuario" method="post">
	
		<input type="hidden" name="siape" value="${usuario.siape}">
		
		<p>
			Nome: <br />
			<input type="text" name="nome" style="width: 80px;" value="${usuario.nome}" />
		</p>
		
		<p>
			E-mail: <br />
			<input type="text" name="email" style="width: 400px;" value="${usuario.email}" />
		</p>
		
		<p>
			Tipo Usuario: <br /> <select name="tipoUsuario">
				<option value="">Selecione</option>
				<c:forEach items="${tipoUsuario}" var="obj">
					<option value="${obj.id}"
						<c:if test="${obj.id eq usuario.tipoUsuario.id}">selected="selected"</c:if>>
						${obj.descricao}</option>
				</c:forEach>
			</select>
		</p>
		
		<p>
			Cargo: <br />
			<input type="text" name="cargo" value="${usuario.cargo}" />
		</p>
		
		<p>
			Senha: <br />
			<input type="password" name="senha" value="${usuario.senha}" />
		</p>
		
		<br />
		
		<p>
			<input type="reset" value="Limpar"> &nbsp; &nbsp;
			<input type="submit" value="Alterar">
			<br><br>
			 <a href="homeFuncionario">voltar</a>
		</p>
		
	</form>

</body>
</html>