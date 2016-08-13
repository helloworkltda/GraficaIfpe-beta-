<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Solicitação</title>
</head>
<body>

	

	<div style="text-align: center; color: red;">${mensagem}</div>

	<hr>
	<h3>Solicitação</h3>
	<hr>

	<form action="incluirSolicitacao" method="post"
		enctype="multipart/form-data">

		<div style="text-align: center; color: red;">${mensagem}</div>

		<p>
			Descrição: <br /> <input type="text" name="descricao"
				style="width: 200px;" />
		</p>

		<p>
			Anexo 1: <br /> <input type="file" name="file">
		</p>
	
		<p>
			Anexo 2: <br /> <input type="file" name="file">
		</p>
		
		<p>
			Anexo 3: <br /> <input type="file" name="file">
		</p>
		
		<p>
			anexo 4: <br /> <input type="file" name="file">
		</p>
		
		<br />

		<p>
			<input type="reset" value="Limpar"> &nbsp; &nbsp; <input
				type="submit" value="Incluir">
		</p>

	</form>

</body>
</html>