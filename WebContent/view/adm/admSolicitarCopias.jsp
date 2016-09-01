<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
      <span class="logo">
        <img src="view/assets/img/logo.png" class="img-responsive" alt="">
      </span>
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
          <li class="open">
            <a href="solicitacaoAdm"><i class="fa fa-copy"></i>Solicitar C�pias</a>
          </li>
          <li>
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
                <font color="#666666">Solicitar C�pias</font>
              </h2>
              <center>
               <div style="text-align: center; color: white;"> ${mensagem} </div>
              <form:form method="post" action="saveAdm" modelAttribute="uploadForm" enctype="multipart/form-data" id="form_contato">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  <div class="panel panel-default">
                    <div class="panel-body">

                      <label class="col-sm-2 control-label" id="anexo1">Anexo #1</label>
                      
                        <input id="input-43" type="file" name="files[0]">

                        <div class="help-block" id="errorBlock43"></div>
                      <br><br>


<label class="col-sm-2 control-label">Anexo #2</label>
                     

                        <input id="input-44" type="file" name="files[1]">

                        <div class="help-block" id="errorBlock44"></div>
                      <br><br>

<label class="col-sm-2 control-label">Anexo #3</label>
                      

                        <input id="input-45" type="file" name="files[2]">

                        <div class="help-block" id="errorBlock45"></div>
                      <br><br>

<label class="col-sm-2 control-label">Anexo #4</label>
                  

                        <input id="input-46" type="file"  name="files[3]">

                        <div class="help-block" id="errorBlock46"></div>
                      <br><br>

                        <div class="form-group">
                          <label class="col-sm-2 control-label">Descri��o</label>
                       
                          <div class="col-sm-8">
                            <textarea class="form-control" style="resize:none" name="descricao" rows="5" cols="3"></textarea>
                          </div>
                          
                          <input type="hidden" name="usuariofk" value="${usuarioLogado.siape}"></input>
                          
                          
                             
                  <br><br><br><br><br><br><br>
                          <div class="form-group">
                      
                            <div class="col-sm-8 col-sm-offset-2">
                              <button class="btn btn-danger" type="submit">Cancelar Solicita��o</button> &nbsp; &nbsp;
                              <button class="btn btn-primary" type="submit">Fazer Solicita��o</button>
                            </div>
                          </div>
                        </div>
                      </form:form>
            
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
                  history.forward();
                  $(function(){
                 	 $("#form_contato").validate({
                 	       rules : {
                 	    	  input-43:{
                 	                    required:true
                 	                    
                 	             },
                 	             email:{
                 	                    required:true
                 	                    
                 	             },
                 	             mensagem:{
                 	                    required:true
                 	                    
                 	             }                                
                 	       },
                 	       messages:{
                 	    	  input-43:{
                 	                    required:"Por favor, informe seu nome",
                 	                    minlength:"O nome deve ter pelo menos 3 caracteres"
                 	             },
                 	             email:{
                 	                    required:"� necess�rio informar um email"
                 	                    
                 	             },
                 	             mensagem:{
                 	                    required:"A mensagem n�o pode ficar em branco"
                 	                   
                 	             }     
                 	       }
                 	});


                 	
                  });
                  </script>
                </div>
              </center>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>

