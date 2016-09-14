<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta name="theme-color" content="#3e454c">
<title>Administração - IFPE Cópias</title>
<!-- Font awesome -->
<link rel="stylesheet" href="view/assets/css/font-awesome.min.css">
<!-- Sandstone Bootstrap CSS -->
<link rel="stylesheet" href="view/assets/css/bootstrap.min.css">
<!-- Bootstrap Datatables -->
<link rel="stylesheet"
	href="view/assets/css/dataTables.bootstrap.min.css">
<!-- Bootstrap social button library -->
<link rel="stylesheet" href="view/assets/css/bootstrap-social.css">
<!-- Bootstrap select -->
<link rel="stylesheet" href="view/assets/css/bootstrap-select.css">
<!-- Bootstrap file input -->
<link rel="stylesheet" href="view/assets/css/fileinput.min.css">
<!-- Awesome Bootstrap checkbox -->
<link rel="stylesheet"
	href="view/assets/css/awesome-bootstrap-checkbox.css">
<!-- Admin Stye -->
<link rel="stylesheet" href="view/assets/css/style.css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="brand clearfix">
		<span class="logo"><img src="view/assets/img/logo.png"
			class="img-responsive" alt=""></span> <span class="menu-btn"> <i
			class="fa fa-bars"></i>
		</span>
		<ul class="ts-profile-nav">
			<li class="ts-account"><a href="#"><img
					src="view/assets/img/usuario.png" class="ts-avatar hidden-side"
					alt=""> ${usuarioLogado.nome}<span>&nbsp;&nbsp;&nbsp;</span><i
					class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a
						href="exibirAlterarUsuarioAdm?siape=${usuarioLogado.siape}">Editar
							Conta</a></li>
					<li><a href="logout">Logout</a></li>
				</ul></li>
		</ul>
	</div>
	<div class="ts-main-content">
		<nav class="ts-sidebar">
			<br>
			<ul class="ts-sidebar-menu">
				<li class="ts-label">Menu</li>
				<li><a href="homeAdm"><i class="fa fa-home"></i>Home</a></li>
				
				<li><a href="solicitacaoAdm"><i class="fa fa-copy"></i>Solicitar Cópias</a></li>
				
				<li><a href="admListarSolicitacao"><i class="fa fa-table"></i>Consultar Solicitações</a></li>
				
				<li class="open"><a href="javascript:;"><i class="fa fa-user"></i>Lista de Usuário</a></li>
				
				<li><a href="admCadastrar"><i class="fa fa-edit"></i>Cadastrar Usuário</a>
				</li>
			</ul>
		</nav>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">
							<font color="#999999">&nbsp;Administração /</font> <font
								color="#666666">Lista de Usuários</font>
						</h2>
						<div class="panel panel-default">

							<div class="panel-body">
								<table id="zctb"
									class="display table table-striped table-bordered table-hover"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>Usuário</th>
											<th>SIAPE</th>

											<th width=24%>E-Mail</th>
											<th width=18%>Cargo/Setor</th>
											<th width=13%>Categoria</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Usuário</th>
											<th>SIAPE</th>

											<th>E-Mail</th>
											<th>Cargo/Setor</th>
											<th>Categoria</th>
										</tr>
									</tfoot>


									<tbody>

										<c:forEach var="usuario" items="${listaUsuario}">
											<tr>
												<td>${usuario.nome}</td>
												<td>${usuario.siape}</td>
												<td><a href='mailto:${usuario.email}'> ${usuario.email}</a></td>
												<td>${usuario.cargo}</td>
												<td>
												<c:choose>
												<c:when test="${usuario.tipoUsuario.id == 1}">
												<font color="#2075c2"><b>${usuario.tipoUsuario.descricao}</b></font>
												
												</c:when>
												<c:otherwise>
												<font color="#cf0053"><b>${usuario.tipoUsuario.descricao}</b></font>
												</c:otherwise>
												</c:choose>
												</td>
											</tr>	
										</c:forEach>

									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Loading Scripts -->
	<script src="view/assets/js/jquery.min.js"></script>
	<script src="view/assets/js/bootstrap-select.min.js"></script>
	<script src="view/assets/js/bootstrap.min.js"></script>
	<script src="view/assets/js/jquery.dataTables.min.js"></script>
	<script src="view/assets/js/dataTables.bootstrap.min.js"></script>
	<script src="view/assets/js/Chart.min.js"></script>
	<script src="view/assets/js/fileinput.js"></script>
	<script src="view/assets/js/chartData.js"></script>
	<script src="view/assets/js/main.js"></script>


</body>
</html>
