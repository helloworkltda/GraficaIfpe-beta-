<%@page import="br.com.ifpe.grafica.model.Usuario"%>
<%@page import="br.com.ifpe.grafica.model.UsuarioDao"%>
<%

String email = request.getParameter("email");
UsuarioDao dao = new UsuarioDao();
Usuario usuario = dao.buscarPorEmail(String.valueOf(email));
if(usuario != null){
	out.write("false");
}else{
	out.write("true");
}



%>