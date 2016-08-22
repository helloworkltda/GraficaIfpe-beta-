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
      <span class="logo">
        <img src="view/assets/img/logo.png" class="img-responsive" alt="">
      </span>
      <span class="menu-btn">
        <i class="fa fa-bars"></i>
      </span>
      <ul class="ts-profile-nav">
        <li class="ts-account">
          <a href="#"><img src="view/assets/img/usuario.png" class="ts-avatar hidden-side" alt=""> ${usuarioLogado.nome} <span>&nbsp;&nbsp;</span><i class="fa fa-angle-down hidden-side"></i></a>
          <ul>
            <li>
              <a href="#">Editar Conta</a>
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
          <li class="open">
            <a href="#;"><i class="fa fa-copy"></i>Solicitar Cópias</a>
          </li>
          <li>
            <a href="#"><i class="fa fa-table"></i>Consultar Solicitações</a>
          </li>
          <li>
            <a href="#"><i class="fa fa-user"></i>Lista de Usuários</a>
          </li>
          <li>
            <a href="#"><i class="fa fa-edit"></i>Cadastrar Usuário</a>
          </li>
        </ul>
      </nav>
      <div class="content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <h2 class="page-title">
                <font color="#999999">&nbsp;Administração /</font>
                <font color="#666666">Solicitar Cópias</font>
              </h2>
              <center>
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  <div class="panel panel-default">
                    <div class="panel-body">
<form method="get" class="form-horizontal">
                      <label class="col-sm-2 control-label">Anexo #1</label>
                      
                        <input id="input-43" type="file" multiple="">

                        <div class="help-block" id="errorBlock43"></div>
                      <br><br>


<label class="col-sm-2 control-label">Anexo #2</label>
                      <form method="get" class="form-horizontal">

                        <input id="input-44" type="file" multiple="">

                        <div class="help-block" id="errorBlock44"></div>
                      <br><br>

<label class="col-sm-2 control-label">Anexo #3</label>
                      <form method="get" class="form-horizontal">

                        <input id="input-45" type="file" multiple="">

                        <div class="help-block" id="errorBlock45"></div>
                      <br><br>

<label class="col-sm-2 control-label">Anexo #4</label>
                      <form method="get" class="form-horizontal">

                        <input id="input-46" type="file" multiple="">

                        <div class="help-block" id="errorBlock46"></div>
                      <br><br>

                        <div class="form-group">
                          <label class="col-sm-2 control-label">Descrição</label>
                          <div class="col-sm-8">
                            <textarea class="form-control" style="resize:none" name="name" rows="5" cols="3"></textarea>

                          </div>
                  <br><br><br><br><br><br><br>
                          <div class="form-group">
                      
                            <div class="col-sm-8 col-sm-offset-2">
                              <button class="btn btn-danger" type="submit">Cancelar Solicitação</button>
                              <button class="btn btn-primary" type="submit">Fazer Solicitação</button>
                            </div>
                          </div>
                        </div>
                      </form>
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
                  <script>
                    window.onload = function(){
                                                                                              
                                                                                          		// Line chart from swirlData for dashReport
                                                                                          		var ctx = document.getElementById("dashReport").getContext("2d");
                                                                                          		window.myLine = new Chart(ctx).Line(swirlData, {
                                                                                          			responsive: true,
                                                                                          			scaleShowVerticalLines: false,
                                                                                          			scaleBeginAtZero : true,
                                                                                          			
                                                                                          		}); 
                                                                                          		
                                                                                          		// Pie Chart from doughutData
                                                                                          		var doctx = document.getElementById("chart-area3").getContext("2d");
                                                                                          		window.myDoughnut = new Chart(doctx).Pie(doughnutData, {responsive : true});
                                                                                          
                                                                                          		// Dougnut Chart from doughnutData
                                                                                          		var doctx = document.getElementById("chart-area4").getContext("2d");
                                                                                          		window.myDoughnut = new Chart(doctx).Doughnut(doughnutData, {responsive : true});
                                                                                          
                                                                                          	}
                  </script>
                </div>
              </center>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>
