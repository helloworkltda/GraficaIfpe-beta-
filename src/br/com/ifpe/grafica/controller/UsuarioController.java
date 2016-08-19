package br.com.ifpe.grafica.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.TipoUsuarioDao;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.model.UsuarioDao;

@Controller
public class UsuarioController {
	
	
	private static int USUARIOCOMUM=1;
	private static int USUARIOADM=2;

	@RequestMapping("exibir")
	public String exibirUsuario(Model model) {

		// Código para popular o combo de categoria de produto
		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuarioDao = dao.listar();
		model.addAttribute("listaTipoUsuarioDao", listaTipoUsuarioDao);

		return "usuario/cadastroUsuario";
	}

	@RequestMapping("incluirUsuario")
	public String incluirUsuario(@Valid Usuario usuario, BindingResult result, Model model)throws Exception {

	
		try {
			if (result.hasErrors()) {
				return "forward:exibir";
			}

			UsuarioDao dao = new UsuarioDao();

			dao.salvar(usuario);
			model.addAttribute("mensagem", usuario.getNome()+" Cadastrado com sucesso");
			
		} catch (Exception e) {
			System.out.println("OKOKOKOKOK");
		}
		return "usuario/sucessoCadastro";
		
	}
	@RequestMapping("homeFuncionario")
	public String Voltar() {
		return "principal/homeFuncionario";
	}

	@RequestMapping("solicitarCopias")
	public String SolicitarCopias() {
		return "usuario/solicitarCopias";
	}

	@RequestMapping("login")
	public String TelaLogin() {
		return "index";
	}

	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session, Model model) {
		
		UsuarioDao dao = new UsuarioDao();
		Usuario usuarioLogado = dao.buscarUsuario(usuario);
		
		
		if (usuarioLogado.getTipoUsuario().getId() == USUARIOCOMUM) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			return "principal/homeFuncionario";
			
		}else if (usuarioLogado.getTipoUsuario().getId() == USUARIOADM) {
			session.setAttribute("usuarioLogado", usuarioLogado);
			return "principal/homeAdministrador";
		}
		model.addAttribute("msg", "Não foi encontrado um usuário com o login e senha informados.");
		return "index";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}


}