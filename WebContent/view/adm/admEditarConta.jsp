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
            <a href="admSolicitar"><i class="fa fa-copy"></i>Solicitar Cópias</a>
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

              <form method="post" action="alterarUsuarioAdm" role="cadastro" id="form_contato">
    			<table border=0 width='350px'>

			
			<input type="hidden" name="tipoUsuario" value="${usuario.tipoUsuario.id}">
				
                <tr><td><label><br>Nome Completo</label></td></tr>
                <tr><td>
                  <input type="text" id="nome" name="nome" class="form-control" maxlength="40" value="${usuario.nome}">

                </td></tr>


                <tr><td><label><br>Matrícula SIAPE</label></td></tr>
                <tr><td>
                  <input type="text" id="siape" name="siape" class="form-control" maxlength="7" value="${usuario.siape}"/>

                </td></tr>
             
             
                <tr><td><label><br>Cargo</label></td></tr>
                <tr><td>

                  <select id="cargo" name="cargo" style="width: 350px;">
                  <option value=""> Selecionar Cargo </option>
                 
                    <option value="Docente"> Docente </option>
                    <option value="Técnico Administrativo"> Técnico Administrativo </option>
                  
                </select>
                </td></tr>

                <tr><td><label><br>E-mail</label></td></tr>
                <tr><td>
                  <input type="text" name="email" id="email" class="form-control" maxlength="50"  value="${usuario.email}"/>

                </td></tr>

                <tr><td><label><br>Senha</label></td></tr>
                <tr><td>
                  <input type="password" name="senha" id="senha" class="form-control" maxlength="20" value="${usuario.senha}"/>

                </td></tr>

                <tr><td><label><br>Confirmar Senha</label></td></tr>
                <tr><td>
                  <input type="password" name="Csenha" id="Csenha" class="form-control" maxlength="20" value="${usuario.senha}"/>

                </td></tr>

      </table><br>

      <button type="submit" name="go" class="btn btn-primary btn-block" style='height:50px; width:240px'> Alterar Dados da Conta</button>
        </form>
        <br>
        <br>
            
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
  
		
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.1/jquery.validate.min.js"></script>
       <script>
       history.forward();
             $(function(){
            	 $("#form_contato").validate({
            	       rules : {
            	             nome:{
            	                    required:true,
            	                    minlength:3
            	             },
            	             email:{
            	                    required:true,
            	                    
            	             },
            	             cargo:{
         	                    required:true
         	                    
         	             	},
            	             senha:{
            	            	 	required: true,
            						minlength:8
            	             },
            	             Csenha:{
            	            	 required: true,
            	            	 equalTo:"#senha"
            	             }
            	       },
            	       messages:{
            	             nome:{
            	                    required:"<font size='3' color='#ff4c4c'>Por favor, informe seu nome</font>",
            	                    minlength:"<font size='3' color='#ff4c4c'>O nome deve ter pelo menos 3 caracteres</font>"
            	             },
            	             email:{
            	                    required:"<font size='3' color='#ff4c4c'>É necessário informar um E-mail</font>",
            	                   	
            	                   	email: "<font size='3' color='#ff4c4c'>O campo EMAIL deve conter um email válido.</font>"
            	             },
            	            
            	             cargo:{
         	                    required:"<font size='3' color='#ff4c4c'>O campo 'Cargo' é obrigatório</font>"
         	                    
         	             	},
            	             senha:{
            	            	 	required:"<font size='3' color='#ff4c4c'>O campo 'Senha' é obrigatorio</font>",
            	            	 	minlength:"<font size='3' color='#ff4c4c'>O senha deve ter pelo menos 8 caracteres</font>"
            	             },
            	             Csenha:{
            	            	 required:"<font size='3' color='#ff4c4c'>O campo 'Senha' é obrigatorio</font>",
            	            	 equalTo:"<font size='3' color='#ff4c4c'>Senhas diferentes</font>"
            	             }
            	       }
            	});


            	
             });
             
            
             
             document.getElementById("siape").onkeypress = function(e) {
                 var chr = String.fromCharCode(e.which);
                 if ("1234567890".indexOf(chr) < 0)
                   return false;
               };   
         
            document.getElementById("nome").onkeypress = function(e) {
                var chr = String.fromCharCode(e.which);
                if ("qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM".indexOf(chr) < 0  && " ".indexOf(chr) < 0)
                  return false;
              };   
            
       </script>
</body></html>
