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
		
																	
		if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("img") || uri.contains("js")
				|| uri.endsWith("testee/") || uri.endsWith("efetuarLogin") || uri.endsWith("login") || uri.endsWith("exibir")
				|| uri.endsWith("incluirUsuario") || uri.endsWith("Erro.jsp") || uri.endsWith("404.jsp")) {
			return true;
		}
		
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
		if (usuario != null) {
			
			if(usuario.getTipoUsuario().getId() == 1){
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeFuncionario") || uri.endsWith("comumSolicita")
						|| uri.endsWith("homeComum") || uri.endsWith("exibirAlterarUsuario") || uri.endsWith("alterarUsuario")
						|| uri.endsWith("save") || uri.endsWith("exibirSucesso")) {
					return true;
				}
			}else{
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeAdministrador") || uri.endsWith("AdmSolitar")
						|| uri.endsWith("homeAdm") || uri.endsWith("exibirAlterarUsuarioAdm") || uri.endsWith("alterarUsuarioAdm")
						|| uri.endsWith("admSolicitar") || uri.endsWith("admListarUsuario") || uri.endsWith("admCadastrar")
						|| uri.endsWith("incluirUsuarioAdm") || uri.endsWith("admListarSolicitacao") || uri.endsWith("admDetalhes")
						|| uri.endsWith("exibirSucessoAdmCadastro") || uri.endsWith("saveAdm")) {
					return true;
				}
			}
			
		}

		response.sendRedirect("login");
		return false;
	}
}