<%@page import="br.com.ifpe.grafica.model.Usuario"%>
<%@page import="br.com.ifpe.grafica.model.UsuarioDao"%>
<%

UsuarioDao dao = new UsuarioDao();
Usuario usuario = dao.buscarPorSiape(1234567);
if(usuario != null){
	response.getWriter().write("true");
}else{
	response.getWriter().write("false");
}



%>