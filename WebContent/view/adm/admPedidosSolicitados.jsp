<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="theme-color" content="#3e454c">
    <title>Administração - IFPE Cópias</title>
    <!-- Font awesome -->
    <link rel="stylesheet" href="view/assets/css/font-awesome.min.css">
    <!-- Sandstone Bootstrap CSS -->
    <link rel="stylesheet" href="view/assets/css/bootstrap.min.css">
    <!-- Bootstrap Datatables -->
    <link rel="stylesheet" href="view/assets/css/dataTables.bootstrap.min.css">
    <!-- Bootstrap social button library -->
    <link rel="stylesheet" href="view/assets/css/bootstrap-social.css">
    <!-- Bootstrap select -->
    <link rel="stylesheet" href="view/assets/css/bootstrap-select.css">
    <!-- Bootstrap file input -->
    <link rel="stylesheet" href="view/assets/css/fileinput.min.css">
    <!-- Awesome Bootstrap checkbox -->
    <link rel="stylesheet" href="view/assets/css/awesome-bootstrap-checkbox.css">
    <!-- Admin Stye -->
    <link rel="stylesheet" href="view/assets/css/style.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head><body>
    <div class="brand clearfix">
      <span class="logo"><img src="view/assets/img/logo.png" class="img-responsive" alt=""></span>
      <span class="menu-btn">
        <i class="fa fa-bars"></i>
      </span>
      <ul class="ts-profile-nav">
        <li class="ts-account">
          <a href="#"><img src="view/assets/img/usuario.png" class="ts-avatar hidden-side" alt=""> ${usuarioLogado.nome}<span>&nbsp;&nbsp;&nbsp;</span><i class="fa fa-angle-down hidden-side"></i></a>
          <ul>
            <li>
              <a href="exibirAlterarUsuarioAdm?siape=${usuarioLogado.siape}">Editar Conta</a>
            </li>
            <li>
              <a href="logout">Logout</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="ts-main-content">
      <nav class="ts-sidebar">
        <br>
        <ul class="ts-sidebar-menu">
          <li class="ts-label">Menu</li>
          <li>
            <a href="homeAdm"><i class="fa fa-home"></i>Home</a>
          </li>
          <li>
            <a href="solicitacaoAdm"><i class="fa fa-copy"></i>Solicitar Cópias</a>
          </li>
          <li class="open">
            <a href="javascript:;"><i class="fa fa-table"></i>Consultar Solicitações</a>
          </li>
          <li>
            <a href="admListarUsuario"><i class="fa fa-user"></i>Lista de Usuários</a>
          </li>
          <li>
            <a href="admCadastrar"><i class="fa fa-edit"></i>Cadastrar Usuário</a>
          </li>
        </ul>
      </nav>
      <div class="content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <h2 class="page-title">
                <font color="#999999">&nbsp;Administração /</font>
                <font color="#666666">Consultar Solicitações</font>
              </h2>
              
              <div class="panel panel-default">
            
              <div class="panel panel-default">
                
                <div class="panel-body">
                  <table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th>Funcionário</th>
                        <th>Detalhes</th>
          
                        <th>Data</th>
                        
                        <th width=9%>Situação</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Funcionário</th>
                        <th>Detalhes</th>
          
                        <th>Data</th>
                        
                        <th>Situação</th>
                      </tr>
                    </tfoot>


                    <tbody>
                      <tr>
                        <td>Tiger Nixon</td>
              
                        <td><a href="javascript:;">Abrir Solicitação</a></td>
                        
                        <td>2011/04/25</td>
                        
                        <td><img src="view/assets/img/cancelado.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">2</span></td>
                      </tr>
                      
                      <tr>
                        <td>Garrett Winters</td>
            
                        <td><a href="javascript:;">Abrir Solicitação</a></td>
                       
                        <td>2011/07/25</td>
                       
                        <td><img src="view/assets/img/pendente.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">1</span></td>
                      </tr>
                      
                      <tr>
                        <td>Ashton Cox</td>
            
                        <td><a href="javascript:;">Abrir Solicitação</a></td>
                        
                        <td>2009/01/12</td>
                        
                        <td><img src="view/assets/img/impresso.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">3</span></td>
                      </tr>
                     
											
											<c:forEach var="listaSolicitacao" items="${listaSolicitacao}">
											<tr>
												<td>${listaSolicitacao.siapeSolicitante.nome}</td>
												<td><a href="admDetalhes?codigo=${listaSolicitacao.codigo}">Abrir Solicitação</a></td>
												<td>${listaSolicitacao.data}</td>
												
												<td>&nbsp;${listaSolicitacao.id.descricao}</td>
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
  

</body></html>
