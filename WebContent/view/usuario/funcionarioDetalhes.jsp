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
    <title>Home - IFPE C�pias</title>
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
      <a href="#" class="logo"><img src="view/assets/img/logo.png" class="img-responsive" alt=""></a>
      <span class="menu-btn">
        <i class="fa fa-bars"></i>
      </span>
      <ul class="ts-profile-nav">
    
        <li class="ts-account">
          <a href="#"><img src="view/assets/img/usuario.png" class="ts-avatar hidden-side" alt=""> ${usuarioLogado.nome}<span>&nbsp;&nbsp;&nbsp;</span><i class="fa fa-angle-down hidden-side"></i></a>
          <ul>
            <li>
              <a href="exibirAlterarUsuario?siape=${usuarioLogado.siape}">Editar Conta</a>
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
            <a href="homeFuncionario"><i class="fa fa-home"></i>Home</a>
          </li>
          <li>
            <a href="solicitacao"><i class="fa fa-copy"></i>Solicitar C�pias</a>
          </li>

          <li class="open">
            <a href="exibirListaPedidos?siape=${usuarioLogado.siape}"><i class="fa fa-table"></i>Pedidos Realizados</a>
          </li>
          
           <li>
            <a href="exibirAlterarUsuario?siape=${usuarioLogado.siape}"><i class="fa fa-user"></i>Editar Conta</a>
          </li>
         
        </ul>
      </nav>
      <div class="content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <h2 class="page-title">
                <font color="#999999">&nbsp;Funcion�rio /</font>
                <font color="#666666">Pedidos Realizados</font>
              </h2>
              <div class="panel panel-default">


              <table
                class="display table table-striped table-bordered table-hover"
                cellspacing="0" width="100%">
                <tbody>
                 
                 <tr>
                    <th style="background-color: #fff; color: #666; text-align: center">
                      Situa��o</th>
                    <td style="background-color: #fff">
                      <c:choose>
												<c:when test="${solicitacao.id.id == 1}">
												<img src="view/assets/img/pendente.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">1</span>
												</c:when>
												
												<c:when test="${solicitacao.id.id == 2}">
												<img src="view/assets/img/cancelado.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">2</span>
												</c:when>
												
												<c:otherwise>
												<img src="view/assets/img/impresso.png" height='19px'><span style="color: rgba(100, 100, 100, 0.0);">3</span>
												</c:otherwise>
												</c:choose></td>
                  </tr>
                 
                  <tr>
                    <th width=11% style="background-color: #fff; color: #666; text-align: center">
                      Anexo #1</th>
                    <td style="background-color: #fff"><c:if test="${solicitacao.anexo1 != null}">
                        <a href="${caminhoAnexo}/${solicitacao.anexo1}"> Download Anexo #1
                        </a>
                      </c:if></td>
                  </tr>

                  <tr>
                    <th
                      style="background-color: #fff; color: #666; text-align: center">
                      Anexo #2</th>
                    <td style="background-color: #fff"><c:if test='${solicitacao.anexo2 != null}'>
                        <a href="${caminhoAnexo}/${solicitacao.anexo2}"> Download Anexo #2
                        </a>
                      </c:if></td>
                  </tr>
                  <tr>
                    <th
                      style="background-color: #fff; color: #666; text-align: center">
                      Anexo #3</th>
                    <td style="background-color: #fff"><c:if test='${solicitacao.anexo3 != null}'>
                        <a href="${caminhoAnexo}/${solicitacao.anexo3}"> Download Anexo #3
                        </a>
                      </c:if></td>
                  </tr>

                  <tr>
                    <th
                      style="background-color: #fff; color: #666; text-align: center">
                      Anexo #4</th>
                    <td style="background-color: #fff"><c:if test='${solicitacao.anexo4 != null}'>
                        <a href="${caminhoAnexo}/${solicitacao.anexo4}"> Download Anexo #4
                        </a>
                      </c:if></td>
                  </tr>

                  <tr>
                    <th
                      style="background-color: #fff; color: #666; text-align: center">
                      Data</th>
                    <td style="background-color: #fff">${solicitacao.data}</td>
                  </tr>

                  <tr>
                    <th height="150px"
                      style="background-color: #fff; color: #666; text-align: center">
                      Descri��o</th>
                    <td style="background-color: #fff">
                      ${solicitacao.descricao}</td>
                  </tr>

                  

                </tbody>
              </table>

            </div>
            
            <center><a href="exibirListaPedidos?siape=${usuarioLogado.siape}">Voltar � Lista de Pedidos</a></center>
            
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