
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1">
    <title>IFPE Cópias</title>
    <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="view/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="view/assets/css/styles.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media
    queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head><body>
  <br>
  <br>
  <br>
    <section class="container login-form">
      <section>
        <form method="post" action="efetuarLogin" role="login">
          <img src="view/assets/images/logo.png" alt="" class="img-responsive">
          <div class="form-group">
            <input type="text" name="siape" id="siape" required="" class="form-control" placeholder="Digite seu SIAPE" maxlength="7" onkeypress='return SomenteNumero(event)'/>
            <span class="glyphicon glyphicon-user"></span>
          </div>
          <div class="form-group">
            <input style:"font-color: white" type="password" name="senha" required="" class="form-control" placeholder="Digite sua Senha" maxlength="20">
            <span class="glyphicon glyphicon-lock"></span>
          </div>
          
          <div style="text-align: center; color: #ff4c4c;"> ${mensagem} </div>
          
          <button type="submit" name="go" class="btn btn-primary btn-block">Entrar</button>
          <a href="exibir">Ainda não é cadastrado?</a>
        </form>
      </section>
    </section>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="view/assets/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript">history.forward();</script>
	<script type="text/javascript">
	document.getElementById("siape").onkeypress = function(e) {
        var chr = String.fromCharCode(e.which);
        if ("1234567890".indexOf(chr) < 0)
          return false;
      };   
	
	
	
	
	
	</script>
</body></html>