package br.com.ifpe.grafica.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.grafica.model.Solicitacao;
import br.com.ifpe.grafica.model.SolicitacaoDao;
import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.TipoUsuarioDao;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.model.UsuarioDao;
import br.com.ifpe.grafica.util.Criptografia;
import br.com.ifpe.grafica.util.Util;

@Controller
public class UsuarioController {

	private static int USUARIOCOMUM = 1;
	private static int USUARIOADM = 2;

	@RequestMapping("cadastroUsuarioComum")
	public String cadastroUsuarioComum(Model model) {


		return "usuario/cadastroUsuario";
	}
	
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session, Model model) {

		UsuarioDao dao = new UsuarioDao();
		//usuario.setSenha((Criptografia.md5(usuario.getSenha())));
		Usuario usuarioLogado = dao.buscarUsuario(usuario);

		if (usuarioLogado == null) {

			model.addAttribute("mensagem", " Usuário não cadastrado.");
			return "index";
		} else if (usuarioLogado.getTipoUsuario().getId() == USUARIOCOMUM) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			return "principal/homeFuncionario";

		} else if (usuarioLogado.getTipoUsuario().getId() == USUARIOADM) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			return "principal/homeAdministrador";
		}
		return "index";
	}
	
	@RequestMapping("incluirUsuario")
	public String incluirUsuario(@Valid Usuario usuario, BindingResult result, Model model) throws Exception {

		try {
			if (result.hasErrors()) {
				return "forward:exibir";
			}

			UsuarioDao dao = new UsuarioDao();
			usuario.setSenha((Criptografia.md5(usuario.getSenha())));
			
			
			dao.salvar(usuario);
			model.addAttribute("mensagem", "Usuário cadastrado com sucesso");

		} catch (Exception e) {
			System.out.println("OKOKOKOKOK");
		}
		return "forward:exibirSucesso";

	}
	
	@RequestMapping("exibirSucesso")
	public String exibirSucessoAdm(Model model,Usuario usuario) {
	 
		model.addAttribute("mensagem", "Usuário cadastrado com sucesso");
		return "usuario/sucessoCadastro";
	}

	@RequestMapping("homeFuncionario")
	public String Voltar() {
		return "principal/homeFuncionario";
	}

	

	@RequestMapping("homeComum")
	public String homeComum() {
		return "principal/homeFuncionario";
	}

	@RequestMapping("login")
	public String TelaLogin() {
		return "index";
	}

	@RequestMapping("exibirAlterarUsuario")
	public String exibirAlterarUsuario (Usuario usuario, Model model) {
		
		
		UsuarioDao dao = new UsuarioDao();
		Usuario usuarioPreenchido = dao.buscarPorSiape(usuario.getSiape());
		model.addAttribute("usuario", usuarioPreenchido);

		TipoUsuarioDao dao1 = new TipoUsuarioDao();
		List<TipoUsuario> usuarioPreenchido2 = dao1.listar();
		model.addAttribute("tipoUsuario", usuarioPreenchido2);
		
		return "usuario/funcionarioEditarConta";

	}

	@RequestMapping("alterarUsuario")
	public String alterarUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		usuario.setSenha((Criptografia.md5(usuario.getSenha())));
		dao.alterar(usuario);
		model.addAttribute("msg", "Usuário alterado com sucesso!");

		return "usuario/usuarioAlteradoSucesso";
	}
	
	
	@RequestMapping("exibirListaPedidos")
	public String usuarioPedidosSolicitados(Solicitacao solicitacao, Model model,Usuario usuario) {

	
		
		SolicitacaoDao dao2 = new SolicitacaoDao();
		List<Solicitacao> listaSolicitacao = dao2.listarSO(usuario.getSiape());
		model.addAttribute("listaSolicitacao", listaSolicitacao);

		return "usuario/funcionarioListaPedidos";
	}
	
	@RequestMapping("funcionarioDetalhes")
	public String funcionarioDetalhes(Model model,Solicitacao solicitacao){
	 
	 	SolicitacaoDao dao = new SolicitacaoDao();
		Solicitacao usuarioPreenchido = dao.buscarPorCodigo(solicitacao.getCodigo());
		model.addAttribute("solicitacao", usuarioPreenchido);
		
		model.addAttribute("caminhoAnexo",Util.caminhoAnexo);
		
		return "usuario/funcionarioDetalhes";
	}
	
	

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "principal/logout";
	}
	
	
	@RequestMapping("proibido")
	public String proibido() {
		return "erros/proibido";
	}

}
