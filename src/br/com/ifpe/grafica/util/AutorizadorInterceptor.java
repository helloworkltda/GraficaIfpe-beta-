package br.com.ifpe.grafica.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import br.com.ifpe.grafica.model.Usuario;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
																	
		if (uri.contains("bootstrap") || uri.contains("css") || uri.contains("images") || uri.contains("js")
				|| uri.endsWith("testee/") || uri.endsWith("efetuarLogin") || uri.endsWith("login") || uri.endsWith("exibir")
				|| uri.endsWith("incluirUsuario")) {
			return true;
		}
		
		if (usuario != null) {
			
			if(usuario.getTipoUsuario().getId() == 1){
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeFuncionario")) {
					return true;
				}
			}else{
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeAdministrador")) {
					return true;
				}
			}
			
		}

		response.sendRedirect("login");
		return false;
	}
}