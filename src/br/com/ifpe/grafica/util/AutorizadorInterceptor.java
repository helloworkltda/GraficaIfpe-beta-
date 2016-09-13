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
				|| uri.endsWith("testee/") || uri.endsWith("efetuarLogin") || uri.endsWith("login") || uri.endsWith("cadastroUsuarioComum")
				|| uri.endsWith("incluirUsuario") || uri.endsWith("Erro.jsp") || uri.endsWith("404.jsp") || uri.endsWith("exibirSucesso") || uri.endsWith("proibido")) {
			return true;
		}
		
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");
		if (usuario != null) {
			
			if(usuario.getTipoUsuario().getId() == 1){
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeComum") || uri.endsWith("exibirAlterarUsuario")
						|| uri.endsWith("alterarUsuario") || uri.endsWith("exibirListaPedidos") || uri.endsWith("funcionarioDetalhes")
						|| uri.endsWith("logout") ||  uri.endsWith("solicitacao") || uri.endsWith("save") || uri.endsWith("SucessoSolicitacao")) {
					return true;
				}
			}else{
				if (uri.contains("assets") || uri.contains("css") || uri.contains("images") || uri.contains("js")
						|| uri.endsWith("testee/") || uri.endsWith("homeAdm") || uri.endsWith("exibirAlterarUsuarioAdm") 
						|| uri.endsWith("alterarUsuarioAdm") || uri.endsWith("admListarUsuario") || uri.endsWith("admCadastrar")
						|| uri.endsWith("incluirUsuarioAdm") || uri.endsWith("exibirSucessoAdmCadastro") || uri.endsWith("admDetalhes")
						|| uri.endsWith("logout") ||  uri.endsWith("solicitacaoAdm") || uri.endsWith("saveAdm") || uri.endsWith("admSucessoSolicitacao")
						|| uri.endsWith("admListarSolicitacao") || uri.endsWith("cancelarSolicitacao") || uri.endsWith("confirmaSolicitacao")) {
					return true;
				}
			}
			
		}

		response.sendRedirect("proibido");
		return false;
	}
}