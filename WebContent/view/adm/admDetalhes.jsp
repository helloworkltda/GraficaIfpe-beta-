<html><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="theme-color" content="#3e454c">
    <title>Administra��o - IFPE C�pias</title>
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
          <a href="#"><img src="view/assets/img/usuario.png" class="ts-avatar hidden-side" alt=""> ${usuarioLogado.nome}<span>&nbsp;&nbsp;</span><i class="fa fa-angle-down hidden-side"></i></a>
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
            <a href="solicitacaoAdm"><i class="fa fa-copy"></i>Solicitar C�pias</a>
          </li>
          <li class="open">
            <a href="admListarSolicitacao"><i class="fa fa-table"></i>Consultar Solicita��es</a>
          </li>
          <li>
            <a href="admListarUsuario"><i class="fa fa-user"></i>Lista de Usu�rios</a>
          </li>
          <li>
            <a href="admCadastrar"><i class="fa fa-edit"></i>Cadastrar Usu�rio</a>
          </li>
        </ul>
      </nav>
      <div class="content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <h2 class="page-title">
                <font color="#999999">&nbsp;Administra��o /</font>
                <font color="#666666">Detalhes da Solicita��o</font>
              </h2>
              <div class="panel panel-default">
                
                
                  <table class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                    <tbody>
                      <tr>
                        <th width=11% style="background-color: #fff; color: #666; text-align: center"> Solicitante </th>
                        <td style="background-color: #fff; color: #4482b1"> ${solicitacao.siapeSolicitante.nome} </td>
                      </tr>
                    
              
                      <tr>
                        <th style="background-color: #fff; color: #666; text-align: center"> Anexo #1 </th>
                        <td style="background-color: #fff"><a href="${caminhoAnexo}/${solicitacao.anexo1}"> Anexo1 </a></td>
                      </tr>

 <tr>
                        <th style="background-color: #fff; color: #666; text-align: center"> Anexo #2 </th>
                        <td style="background-color: #fff"> <a href="${caminhoAnexo}/${solicitacao.anexo2}"> Anexo 2 </a></td>
                      </tr>
<tr>
                        <th style="background-color: #fff; color: #666; text-align: center"> Anexo #3 </th>
                        <td style="background-color: #fff"><a href="${caminhoAnexo}/${solicitacao.anexo3}"> Anexo 3 </a> </td>
                      </tr>

<tr>
                        <th style="background-color: #fff; color: #666; text-align: center"> Anexo #4 </th>
                        <td style="background-color: #fff"> <a href="${caminhoAnexo}/${solicitacao.anexo4}"> Anexo 4 </a> </td>
                      </tr>

<tr>
                        <th style="background-color: #fff; color: #666; text-align: center"> Data </th>
                        <td style="background-color: #fff"> ${solicitacao.data} </td>
                      </tr>

<tr>
                        <th height="150px" style="background-color: #fff; color: #666; text-align: center"> Descri��o </th>
                        <td style="background-color: #fff"> ${solicitacao.descricao} </td>
                      </tr>
                    
                    </tbody>
                  </table>
                  
                </div>
                <center><button class="btn btn-danger" type="submit">Cancelar Solicita��o</button> &nbsp; &nbsp; &nbsp;
                              <button class="btn btn-primary" type="submit" width="200px">Confirmar Impress�o</button></center>
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
