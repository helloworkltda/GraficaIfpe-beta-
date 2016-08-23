<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=1,initial-scale=1,user-scalable=1">
<title>IFPE Cópias - Formulário de Cadastro</title>
<link
	href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="view/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="view/assets/css/styles.css">
<script src="view/assets/bootstrap/js/jquery.js"></script>
<script src="view/assets/bootstrap/js/jquery.validate.js"></script>


</head>
<body>



	<section class="container login-form">
		<section>
			<form method="post" action="incluirUsuarioAdm" role="form" id="formu">
				<a href="/login"><img src="view/assets/images/logo.png"
					height=24px></a> <img src="view/assets/images/cadastro.png"
					alt="" class="img-responsive">
				<div class="form-group">

					<div style="text-align: center; color: red;">${mensagem}</div>

					<input type="text" name="nome" class="form-control"
						placeholder="Nome Completo" maxlength="50"> <span
						class="glyphicon glyphicon-pencil"></span>
				</div>


				<div class="form-group">
					<input type="text" name="siape" pattern="[0-9]+$"
						class="form-control" placeholder="Matí­cula SIAPE" maxlength="7"
						onkeypress='return SomenteNumero(event)' /> <span
						class="glyphicon glyphicon-user"></span>
				</div>

				<div class="form-group">
					<input type="text" name="cargo" class="form-control"
						placeholder="Cargo do Funcionário" maxlength="50"> <span
						class="glyphicon glyphicon-briefcase"></span>
				</div>

				<div class="form-group">
					<input type="email" name="email" class="form-control"
						placeholder="E-mail" maxlength="50"> <span
						class="glyphicon glyphicon-envelope"></span>
				</div>

				<div class="form-group">
					<input type="password" id="senha" name="senha" class="form-control"
						placeholder="Senha"> <span
						class="glyphicon glyphicon-lock"></span>
				</div>
				<div class="form-group">
					<input type="password" name="senhaC" id="senhaC"
						class="form-control" placeholder="Confirmar Senha"> <span
						class="glyphicon glyphicon-lock"></span>
				</div>

				<div class="form-group">
					Tipo Usuario: <br /> <select name="tipoUsuario" class="form-control">
						<option value="">Selecione</option>
						<c:forEach items="${tipoUsuario}" var="obj">
							<option value="${obj.id}">${obj.descricao}</option>
						</c:forEach>
					</select>
				</div>
				
				<button type="submit" name="go" class="btn btn-primary btn-block">Cadastrar</button>
				<p>
					<a href="login">Voltar ao Início</a>
			</form>
		</section>
	</section>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="view/assets/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">history.forward();</script>

</body>
</html>