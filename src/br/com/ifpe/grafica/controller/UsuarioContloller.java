package br.com.ifpe.grafica.controller;

import java.util.List;

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
public class UsuarioContloller {

	@RequestMapping("ixibir")
	public String ixibirUsuario(Model model) {

		// Código para popular o combo de categoria de produto
		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuarioDao = dao.listar();
		model.addAttribute("listaTipoUsuarioDao", listaTipoUsuarioDao);

		return "usuario/incluirUsuario";
	}

	@RequestMapping("incluirUsuario")
	public String incluirUsuario(@Valid Usuario usuario, BindingResult result, Model model) {

		
		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		model.addAttribute("mensagem", "O usuario " + usuario.getNome() + " foi inserida com sucesso !");

		return "usuario/incluirUsuario";
	}

	@RequestMapping("login")
	public String TelaLogin() {
		return "index";
	}

}
