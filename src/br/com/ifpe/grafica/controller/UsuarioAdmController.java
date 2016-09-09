package br.com.ifpe.grafica.controller;


import java.util.List;

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
import br.com.ifpe.grafica.util.Util;


@Controller
public class UsuarioAdmController {

	@RequestMapping("homeAdm")
	public String Voltar() {
		return "principal/homeAdministrador";
	}


	@RequestMapping("exibirAlterarUsuarioAdm")
    public String exibirAlterarUsuarioAdm(Usuario usuario, Model model) {

	UsuarioDao dao = new UsuarioDao();
	Usuario usuarioPreenchido = dao.buscarPorSiape(usuario.getSiape());
	model.addAttribute("usuario", usuarioPreenchido);
	
	TipoUsuarioDao dao1 = new TipoUsuarioDao();
	List<TipoUsuario> usuarioPreenchido2 = dao1.listar();
	model.addAttribute("tipoUsuario", usuarioPreenchido2);

	return "adm/admEditarConta";
					
    }
	
	 @RequestMapping("alterarUsuarioAdm")
	    public String alterarUsuarioAdm(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.alterar(usuario);
		model.addAttribute("msg", "Usuário alterado com sucesso!");

		return "adm/admSucessoEdicao";
	    }
	 
	 @RequestMapping("admListarUsuario")
		public String admListarUsuario(Model model) {
		 

			UsuarioDao dao = new UsuarioDao();
			List<Usuario> listaUsuario = dao.listar();
			model.addAttribute("listaUsuario", listaUsuario);
			
		 
			return "adm/admListaUsuarios";
		}
	 
	 @RequestMapping("admCadastrar")
		public String admCadastrar(Model model) {
		 
		    TipoUsuarioDao dao = new TipoUsuarioDao();
			List<TipoUsuario> listaTipoUsuarioDao = dao.listar();
			model.addAttribute("listaTipoUsuarioDao", listaTipoUsuarioDao);
			return "adm/admCadastrar";
		}
	 
	 @RequestMapping("incluirUsuarioAdm")
		public String incluirUsuarioAdm(@Valid Usuario usuario, BindingResult result, Model model) {

			if (result.hasErrors()) {
				
				return "forward:admCadastrar";
			}

			UsuarioDao dao = new UsuarioDao();

			dao.salvar(usuario);

			model.addAttribute("mensagem", "Usuário cadastrado com sucesso!");

			return "forward:exibirSucessoAdmCadastro";
		}

	 
	 @RequestMapping("exibirSucessoAdmCadastro")
		public String exibirSucessoAdm(Model model,Usuario usuario) {
		 
		 model.addAttribute("mensagem", "Usuário cadastrado com sucesso!");
			return "adm/sucessoCadastroAdm";
		}
	 
	 @RequestMapping("admDetalhes")
		public String admDetalhes(Model model,Solicitacao solicitacao){
		 
		 	SolicitacaoDao dao = new SolicitacaoDao();
			Solicitacao usuarioPreenchido = dao.buscarPorCodigo(solicitacao.getCodigo());
			model.addAttribute("solicitacao", usuarioPreenchido);
			
			model.addAttribute("caminhoAnexo",Util.caminhoAnexo);
			
			return "adm/admDetalhes";
		}

	 
	 
}
