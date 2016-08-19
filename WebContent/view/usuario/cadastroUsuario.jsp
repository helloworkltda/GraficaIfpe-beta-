<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    
    <title>IFPE Cópias - Formulário de Cadastro</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="view/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="view/assets/css/styles.css">
    
    

  </head><body>
  <div class=logoinicio><a href=""><img src="view/assets/images/logo.png" height=24px></a></div>
    <section class="container login-form">
      <section>
        <form method="post" action="incluirUsuario" role="login" id="form_contato">
          <img src="view/assets/images/cadastro.png" alt="" class="img-responsive">
          <div class="form-group">
          
            <input type="text" name="nome" id="nome" class="form-control" placeholder="Nome Completo" maxlength="50">
            <span class="glyphicon glyphicon-pencil"></span>
            
          </div>
          <div class="form-group">
            <input pattern="[0-9]+$" type="text" name="siape" id="siape"  class="form-control" placeholder="Matricula SIAPE" maxlength="7" onkeypress='return SomenteNumero(event)'/>
            <span class="glyphicon glyphicon-user"></span>
          </div>
          <div class="form-group">
            <input type="text" name="cargo" id="cargo"  class="form-control" placeholder="Cargo do Funcionario" maxlength="50">
            <span class="glyphicon glyphicon-briefcase"></span>
          </div>
          <div class="form-group">
            <input type="email" name="email" id="email"  class="form-control" placeholder="E-mail" maxlength="50">
            <span class="glyphicon glyphicon-envelope"></span>
          </div>
          <div class="form-group">
            <input type="password" name="senha" id="senha"  class="form-control" placeholder="Senha" maxlength="20">
            <span class="glyphicon glyphicon-lock"></span>
          </div>
          <div class="form-group">
            <input type="password" name="Csenha" id="Csenha"  class="form-control" placeholder="Confirmar Senha" maxlength="20">
            <span class="glyphicon glyphicon-lock"></span>
          </div>
          
          <input type="hidden" name="tipoUsuario" value="1"></input>
          
          <button type="submit" name="go" class="btn btn-primary btn-block">Cadastrar</button>
          <p>
          <a href="login">Voltar ao Inicio</a>
        </form>
      </section>
    </section>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    
    
  	 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.js"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.1/jquery.validate.min.js"></script>
       <script>
             $(function(){
            	 $("#form_contato").validate({
            	       rules : {
            	             nome:{
            	                    required:true,
            	                    minlength:3
            	             },
            	             email:{
            	                    required:true,
            	                    remote:"view/usuario/verificarEmail.jsp"
            	             },
            	             siape:{
            	                    required:true,
            	                    remote:"view/usuario/verificarSiape.jsp"
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
            	                    required:"Por favor, informe seu nome",
            	                    minlength:"O nome deve ter pelo menos 3 caracteres"
            	             },
            	             email:{
            	                    required:"É necessário informar um email",
            	                   	remote: "EMAIL Existente"
            	             },
            	             siape:{
            	                    required:"SIAPE não pode ficar em branco",
            	                    remote: "SIAPE Existente"
            	             },
            	             senha:{
            	            	 	required:"O campo senha é obrigatorio",
            	            	 	minlength:"O senha deve ter pelo menos 8 caracteres"
            	             },
            	             Csenha:{
            	            	 required:"O campo senha é obrigatorio",
            	            	 equalTo:"Senhas diferentes"
            	             }
            	       }
            	});


            	
             });
       </script>

</body></html>