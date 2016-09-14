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
    
    <meta http-equiv="refresh" content="2;url=http://10.31.30.24:8080/grafica/homeAdm" />
    
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
          <li>
            <a href="admListarSolicitacao"><i class="fa fa-table"></i>Consultar Solicitações</a>
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
                <font color="#666666">Editar Conta</font>
              </h2>
  <center>
<br><br><br>
          <img src="view/assets/images/sucessoverde.png" height="130px">
          <br>
          <font color="#125c4c"><h2>Perfil alterado com sucesso!</h2>
          <br>
          Aguarde, redirecionando ao sistema...</font>
          
</center>
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