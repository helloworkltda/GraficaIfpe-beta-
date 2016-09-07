<!DOCTYPE html>

<html lang="pt-br">

<head>

	<meta charset="UTF-8">

	<!-- Título no topo do Browser-->
	<title> Pizzaria Kamilla </title>

	<!--Link para o .CSS-->
	<link rel="stylesheet" type="text/css" href="estilo.css">

    <!--jQuery para Validação dos dados do Cadastro-->
    <script src="jquery-2.1.4.min.js"></script>
    <script src="jquery.validate.min.js"></script>
    <script src="validacao.js"></script>

    <!--Script para Validar Apenas Números no "Varchar"-->
    <script language='JavaScript'>
    function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
        if (tecla==8 || tecla==0) return true;
    else  return false;
    }
}
</script>
		
</head>


<body class="corpo" background="imagens/background2.jpg"><!--Body com imagem de background-->


<center><!--Centralizar a página-->

<!-------------------------------------------->

<div id="navegacao"><!--Início da Barra Principal de Navegação-->

<a href="index.html"><img src="logos/logokamilla.png" onmouseover="this.src='logos/logokamillaclick.png'" onmouseout="this.src='logos/logokamilla.png'" height="60" width="255"></a>
&nbsp; &nbsp; &nbsp; 
<a href="empresa.html"><img src="logos/empresa.png" onmouseover="this.src='logos/empresaclick.png'" onmouseout="this.src='logos/empresa.png'"></a>
&nbsp; &nbsp; &nbsp; 
<a href="cardapio.html"><img src="logos/cardapio.png" onmouseover="this.src='logos/cardapioclick.png'" onmouseout="this.src='logos/cardapio.png'"></a>
&nbsp; &nbsp; &nbsp; 
<a href="unidades.html"><img src="logos/unidades.png" onmouseover="this.src='logos/unidadesclick.png'" onmouseout="this.src='logos/unidades.png'"></a>
&nbsp; &nbsp; &nbsp; 
<a href="contato.html"><img src="logos/contato.png" onmouseover="this.src='logos/contatoclick.png'" onmouseout="this.src='logos/contato.png'"></a>
&nbsp; &nbsp; &nbsp;
</div><!--Fim da Barra Principal de Navegação-->

<!-------------------------------------------->

<div id="login"><!--Início da Barra de Login-->

<a href="login.php"><img src="logos/login.png" onmouseover="this.src='logos/loginclick.png'" onmouseout="this.src='logos/login.png'"></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="javascript:;"><img src="logos/cadastrar.png" onmouseover="this.src='logos/cadastrarclick.png'" onmouseout="this.src='logos/cadastrar.png'"></a>

</div><!--Fim da Barra de Login-->

<!-------------------------------------------->

<div class="pagina"><!--Início do Conteúdo Principal da Página-->

<center><img src="logos/titulocadastro.png"></center><!--Título da Página-->

<hr><!--Linha-->
<br>
<center>

    <form action="cadastro.php" method="post" id="form1">

    <b>Todos os campos são obrigatórios.</b>
    <br>
    <br>
    <br>
        
<table>

<tr>
<td>
Login (a ser utilizado para entrar)
<br>
<input type="text" name="login" size="30" minlength="1" maxlength="16" placeholder="&nbsp;Login">
<br>
<font color="#7f7f7f" size="1">Máximo de 16 caracteres</font>
<br><br>
</td>
</tr>

<tr>
<td>
Senha
<br>
<input type="password" name="senha" size="30" minlength="1" maxlength="12" placeholder="&nbsp;Senha">
<br>
<font color="#7f7f7f" size="1">Máximo de 12 caracteres</font>
<br><br>
</td>
</tr>

<tr>
<td>
Nome Completo
<br>
<input type="text" name="nome" size="30" minlength="1" maxlength="40" placeholder="&nbsp;Nome Completo">
<br>
<font color="#7f7f7f" size="1">Máximo de 40 caracteres</font>
<br><br>
</td>
</tr>

<tr>
<td>
Telefone
<br>
<input type="text" name="telefone" size="30" minlength="8" maxlength="9" placeholder="&nbsp;Telefone sem prefixo" value='' onkeypress='return SomenteNumero(event)'/>
<br>
<font color="#7f7f7f" size="1">Somente Números (8 ou 9 dígitos)</font>
<br><br>
</td>
</tr>

<tr>
<td>
Endereço
<br>
<input type="text" name="endereco" size="30" minlength="1" maxlength="40" placeholder="&nbsp;Endereço">
<br>
<font color="#7f7f7f" size="1">Máximo de 40 caracteres</font>
<br><br>
</td>
</tr>

<tr>
<td>
Número
<br>
<input type="text" name="numero" size="30" minlength="1" maxlength="6" placeholder="&nbsp;Número" value='' onkeypress='return SomenteNumero(event)'/>
<br>
<font color="#7f7f7f" size="1">Somente Números</font>
<br><br>
</td>
</tr>

<tr>
<td>
CEP
<br>
<input type="text" name="cep" size="30" minlength="8" maxlength="8" placeholder="&nbsp;CEP" value="" onkeypress="return SomenteNumero(event)"/>
<br>
<font color="#7f7f7f" size="1">Somente Números (8 dígitos)</font>
<br><br>
</td>
</tr>


</table>
<br>
<input type="submit" value="Fazer Cadastro">

    
    </form>

    <?php
if ($_POST){

    $login = $_POST['login'];
    $senha = $_POST['senha'];
    $nome = $_POST['nome'];
    $telefone = $_POST['telefone'];
    $endereco = $_POST['endereco'];
    $numero = $_POST['numero'];
    $cep = $_POST['cep'];

    $conectar = mysqli_connect("127.0.0.1", "root", "") 
      or die("Erro ao abrir a conexão com o MySQL: ". mysqli_error());

    mysqli_select_db($conectar, "kamilla");

    $sucesso = mysqli_query($conectar, "INSERT INTO usuario (login, senha, nome, telefone, endereco, numero, cep) VALUES ('$login', '$senha', '$nome', '$telefone', '$endereco', '$numero', '$cep')");

    if ($sucesso){
        echo "<br><br><center><p><B>Usuário cadastrado com sucesso! Faça já o seu Login!</b></p> <br></center><br/>";

    } else {

        echo "<br><br><center>Ocorreu uma falha... </center>" . mysqli_error();
    }   
}

?>


</center>

</div><!--Fim do Conteúdo-->

<!-------------------------------------------->

<div class="rodape"><!---Início do Rodapé-->


        <a href="index.html">Início</a>
        &nbsp;|&nbsp; 
        <a href="empresa.html">Empresa</a> 
        &nbsp;|&nbsp; 
        <a href="cardapio.html">Cardápio</a> 
        &nbsp;|&nbsp; 
        <a href="unidades.html">Unidades</a>
        &nbsp;|&nbsp; 
        <a href="contato.html">Contato</a>     

<br>
<br>
			
<a href="https://www.facebook.com/kamillapizza/" target="_blank" title="Facebook"><img src="logos/facebook.png" onmouseover="this.src='logos/facebookclick.png'" onmouseout="this.src='logos/facebook.png'" height="40" width="40" /></a>
&nbsp; &nbsp;
<a href="https://plus.google.com/114317168290659343575" target="_blank" title="Google+"><img src="logos/google.png" onmouseover="this.src='logos/googleclick.png'" onmouseout="this.src='logos/google.png'" height="40" width="40"></a>
&nbsp; &nbsp;
<a href="https://pt.foursquare.com/v/pizzaria-kamilla/50e8c985e4b098a1e96b4b61" target="_blank" title="Foursquare"><img src="logos/foursquare.png" onmouseover="this.src='logos/foursquareclick.png'" onmouseout="this.src='logos/foursquare.png'" height="40" width="40"></a>
&nbsp; &nbsp;
<a href="javascript:;" title="Whatsapp: 98406-1384"><img src="logos/whatsapp.png" onmouseover="this.src='logos/whatsappclick.png'" onmouseout="this.src='logos/whatsapp.png'" height="40" width="40"></a>

<br>
<br>

    Central de Atendimento (das 18:00h às 00:00h)
    <br>
    (81) 3362-1174  -  (81) 3362-1175
			
	<hr width="850px"><!--Linha Horizontal-->
		
	Copyright © 2016 - Pizzaria Kamilla. Todos os direitos reservados

<p>

</div><!--Fim do Rodapé-->

<!-------------------------------------------->

</center><!--Centralização da Página-->

</body><!--Fim do Body-->

</html>