<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    
    <title>IFPE Cópias - Formulário de Cadastro</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="view/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="view/assets/css/styles.css">
    
    

  </head><body>
  <section class="container cadastro-form">
      <section>
        <form method="post" action="incluirUsuario" role="cadastro" id="form_contato">
          <img src="view/assets/images/cadastro.png" alt="" class="img-responsive">
    <table border=0 width=100%>
            
                <tr><td><label>Nome Completo</label></td></tr>
                <tr><td>
                  <input type="text" id="nome" name="nome" class="form-control" placeholder="Nome e Sobrenome" maxlength="40">
                </td></tr>

                <tr><td><label><br>Matrícula SIAPE</label></td></tr>
                <tr><td>
                  <input type="text" id="siape" name="siape" class="form-control" placeholder="SIAPE válido" maxlength="7" onkeyup="validar(this,'num');" />

                </td></tr>
             
                <tr><td><label><br>Cargo do Funcionário</label></td></tr>
                <tr><td>

                  <select id="cargo" name="cargo" style="width: 320px;">
                  <option value=""> Selecionar Cargo </option>
                 
                    <option value="Docente"> Docente </option>
                    <option value="Tecnico Administrativo"> Técnico Administrativo </option>
                  
                </select>
                </td></tr>

                <tr><td><label><br>E-mail</label></td></tr>
                <tr><td>
                  <input type="text" name="email" id="email" class="form-control" placeholder="E-mail válido" maxlength="50"/>

                </td></tr>

                <tr><td><label><br>Senha</label></td></tr>
                <tr><td>
                  <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha (Máx. de 20 caracteres)" maxlength="20"/>

                </td></tr>

                <tr><td><label><br>Confirmar Senha</label></td></tr>
                <tr><td>
                  <input type="password" name="Csenha" id="Csenha" class="form-control" placeholder="Confirmar Senha" maxlength="20"/>

                </td></tr>
						<input type="hidden" value="1" name="tipoUsuario">
      </table><br>
          <button type="submit" name="go" class="btn btn-primary btn-block" style='height:50px'>Cadastrar</button>
          <p>
          <a href="index.html">Voltar ao Início</a>
        </form>
      </section>
    </section>
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    
    
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
            	                    required:"<font size='3' color='#ff4c4c'>Por favor, informe seu nome</font>",
            	                    minlength:"<font size='3' color='#ff4c4c'>O nome deve ter pelo menos 3 caracteres</font>"
            	             },
            	             email:{
            	                    required:"<font size='3' color='#ff4c4c'>É necessário informar um E-mail</font>",
            	                   	remote: "<font size='3' color='#ff4c4c'>EMAIL Existente</font>"
            	             },
            	             siape:{
            	                    required:"<font size='3' color='#ff4c4c'>O campo 'SIAPE' é obrigatório</font>",
            	                    remote: "<font size='3' color='#ff4c4c'>SIAPE Existente</font>"
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