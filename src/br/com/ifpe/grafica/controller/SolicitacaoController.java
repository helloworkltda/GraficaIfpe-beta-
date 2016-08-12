package br.com.ifpe.grafica.controller;

import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.grafica.model.Solicitacao;
import br.com.ifpe.grafica.model.SolicitacaoDao;

public class SolicitacaoController {
	
	
	@RequestMapping("solicitacao")
	public String solicitacao() {
		return "usuario/usuarioSolicita";
	}
	
	@RequestMapping("incluirSolicitacao")
	public String incluirSolicitacao(@Valid Solicitacao solicitacao, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:incluirSolicitacao";
		}

		SolicitacaoDao dao = new SolicitacaoDao();
		
		dao.salvar(solicitacao);

		model.addAttribute("mensagem", "Solicitação foi enviada !");

		return "usuario/usuarioSolicita";
	}

}
