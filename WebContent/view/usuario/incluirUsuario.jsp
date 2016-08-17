<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
	<!-- arquivo  -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"></script>
<script>

$(document).ready(function(){
    $('#signupform').validate({
        rules:{
            email:{ required: true },
            nome:{ required: true }
   
        },
        messages:{
            email:{ required: 'Este Campo é obrigatório' },
            nome:{ required: 'Este Campo é obrigatório' }
                      
        }

    });
});

</script>



<title>Incluir Usuario Teste</title>
</head>
<body>

	
	
	<div style="text-align: center; color: red;">${mensagem}</div>

	<hr>
	<h3>Incluir Usuario Teste</h3>
	<hr>

	<form id="signupform"  method="post">

		<p>
			Nome: <br /> <input type="text" name="nome" style="width: 80px;"
				maxlength="5" />
		</p>
		

		<p>
			Cargo: <br /> <input type="text" name="cargo"
				style="width: 100px;" />
		</p>
		
		
		<p>
			Email: <br /> <input type="text" name="email"
				style="width: 100px;" />
		</p>
		
		
		<p>
			Siape: <br /> <input type="text" name="siape"
				style="width: 100px;" />
		</p>
	
		
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