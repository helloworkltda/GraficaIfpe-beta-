package br.com.ifpe.grafica.controller;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.TipoUsuarioDao;

public class TipoUsuarioController {

	@RequestMapping("/listarTipo")
    public String listarTipo(Model model) {

	TipoUsuarioDao dao = new TipoUsuarioDao();
	List<TipoUsuario> listaCategoriaProduto = dao.listar();
	model.addAttribute("listarTipo", listaCategoriaProduto);

	return "";
    }
}
