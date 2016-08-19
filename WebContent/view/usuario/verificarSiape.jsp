<%@page import="br.com.ifpe.grafica.model.Usuario"%>
<%@page import="br.com.ifpe.grafica.model.UsuarioDao"%>
<%

String siape = request.getParameter("siape");
UsuarioDao dao = new UsuarioDao();
Usuario usuario = dao.buscarPorSiape( Integer.valueOf(siape));
if(usuario != null){
	out.write("false");
}else{
	out.write("true");
}



%>