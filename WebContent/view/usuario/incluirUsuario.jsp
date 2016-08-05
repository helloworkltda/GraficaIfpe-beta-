<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Incluir Usuario Teste</title>
</head>
<body>

	
	
	<div style="text-align: center; color: red;">${mensagem}</div>

	<hr>
	<h3>Incluir Usuario Teste</h3>
	<hr>

	<form action="incluirUsuario" method="post"
		enctype="multipart/form-data" id="formulario">

		<p>
			Nome: <br /> <input type="text" name="nome" style="width: 80px;"
				maxlength="5" />
		</p>
		<form:errors path="usuario.nome" cssStyle="color:red" />

		<p>
			Cargo: <br /> <input type="text" name="cargo"
				style="width: 100px;" />
		</p>
		<form:errors path="usuario.cargo" cssStyle="color:red" />
		
		<p>
			Email: <br /> <input type="text" name="email"
				style="width: 100px;" />
		</p>
		<form:errors path="usuario.email" cssStyle="color:red" />
		
		<p>
			Siape: <br /> <input type="text" name="siape"
				style="width: 100px;" />
		</p>
		<form:errors path="usuario.siape" cssStyle="color:red" />
		
		<p>
			Senha: <br /> <input type="password" name="senha"
				style="width: 100px;" />
		</p>
		
		<p>
			Confirma Senha: <br /> <input type="password" name="Csenha"
				style="width: 100px;" />
		</p>
		
		

		<p>
			Tipo Usuario: <br /> <select name="tipoUsuario">
				<option value="">Selecione</option>
				<c:forEach items="${listaTipoUsuarioDao}" var="obj">
					<option value="${obj.id}">${obj.descricao}</option>
				</c:forEach>
			</select>
		</p>

		<br />

		<p>
			<input type="reset" value="Limpar"> &nbsp; &nbsp; <input
				type="submit" value="Incluir">
		</p>

	</form>
		
	

</body>
</html>