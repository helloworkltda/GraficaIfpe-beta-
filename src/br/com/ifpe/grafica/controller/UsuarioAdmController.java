package br.com.ifpe.grafica.controller;

import java.util.Calendar;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


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

	@RequestMapping("AdmSolicitar")
	public String AdmSolitar() {
		return "adm/admSolicitarCopias";
	}

	@RequestMapping("exibirCadastroAdm")
	public String exibirUsuarioAdm(Model model) {

		// Código para popular o combo de categoria de produto
		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuarioDao = dao.listar();
		model.addAttribute("listaTipoUsuarioDao", listaTipoUsuarioDao);

		return "adm/cadastrarUsuario";
	}

	@RequestMapping("incluirUsuarioAdm")
	public String incluirUsuarioAdm(@Valid Usuario usuario, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:exibir";
		}

		UsuarioDao dao = new UsuarioDao();

		dao.salvar(usuario);

		model.addAttribute("mensagem", "O usuario " + usuario.getNome() + " foi inserida com sucesso !");

		return "adm/cadastrarUsuario";
	}

	@RequestMapping("incluirAnexoAdm")
	public String incluirAnexoAdm(@Valid Solicitacao solicitacao, BindingResult result, Model model,
			@RequestParam("file") MultipartFile imagem) throws Exception {

		if (Util.fazerUploadImagem(imagem)) {
			solicitacao.setAnexo1(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
			solicitacao.setAnexo2(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
			solicitacao.setAnexo3(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
			solicitacao.setAnexo4(Calendar.getInstance().getTime() + " - " + imagem.getOriginalFilename());
		}

		try {
			if (result.hasErrors()) {
				model.addAttribute("mensagem", " Cadastrado com sucesso");
				return "forward:incluirAnexo";

			}

			SolicitacaoDao dao = new SolicitacaoDao();

			dao.salvar(solicitacao);
			model.addAttribute("mensagem", " Cadastrado com sucesso");

		} catch (Exception e) {
			System.out.println("OK");
		}
		return "adm/admSolicitarCopias";

	}
	
	@RequestMapping("exibirAlterarUsuarioAdm")
    public String exibirAlterarUsuarioAdm(Usuario usuario, Model model) {

	UsuarioDao dao = new UsuarioDao();
	Usuario usuarioPreenchido = dao.buscarPorSiape(usuario.getSiape());
	model.addAttribute("usuario", usuarioPreenchido);
	
	TipoUsuarioDao dao1 = new TipoUsuarioDao();
	List<TipoUsuario> usuarioPreenchido2 = dao1.listar();
	model.addAttribute("tipoUsuario", usuarioPreenchido2);

	return "adm/alteraUsuarioAdm";
					
    }
	
	 @RequestMapping("alterarUsuarioAdm")
	    public String alterarUsuarioAdm(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.alterar(usuario);
		model.addAttribute("msg", "Usuário alterado com sucesso !");

		return "forward:alterarUsuarioAdm";
	    }
	 
	 @RequestMapping("admListarUsuario")
		public String admListarUsuario(Model model) {
		 

			UsuarioDao dao = new UsuarioDao();
			List<Usuario> listaUsuario = dao.listar();
			model.addAttribute("listaUsuario", listaUsuario);
			
		 
			return "adm/admListaUsuarios";
		}
}
