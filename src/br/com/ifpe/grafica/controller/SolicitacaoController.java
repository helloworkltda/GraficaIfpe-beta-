package br.com.ifpe.grafica.controller;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import br.com.ifpe.grafica.model.Solicitacao;
import br.com.ifpe.grafica.model.SolicitacaoDao;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.model.UsuarioDao;
import br.com.ifpe.grafica.util.FileUploadForm;
import br.com.ifpe.grafica.util.Util;

@Controller
public class SolicitacaoController {

	@RequestMapping("solicitacao")
	public String solicitacao() {
		return "usuario/usuarioSolicita";
	}

	
	@RequestMapping("save")
	public String save(
			@ModelAttribute("uploadForm") FileUploadForm uploadForm, HttpSession session,@ModelAttribute("descricao") String descricao,
			Model map) {

		List<MultipartFile> files = uploadForm.getFiles();
		SolicitacaoDao dao = new SolicitacaoDao();
		Solicitacao solicitacao =new Solicitacao();
		List<String> fileNames = new ArrayList<String>();
		int x=1;
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				if (Util.fazerUploadImagem(multipartFile)) {
					if(x==1)
						solicitacao.setAnexo1(Calendar.getInstance().getTime() + " - " + multipartFile.getOriginalFilename());
					if(x==2)
						solicitacao.setAnexo2(Calendar.getInstance().getTime() + " - " + multipartFile.getOriginalFilename());
					if(x==3)
						solicitacao.setAnexo3(Calendar.getInstance().getTime() + " - " + multipartFile.getOriginalFilename());
					if(x==4)
						solicitacao.setAnexo4(Calendar.getInstance().getTime() + " - " + multipartFile.getOriginalFilename());
					
					x++;
				}
				
				

			}
			Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
			solicitacao.setData(Calendar.getInstance().getTime());
			solicitacao.setSiapeSolicitante(usuario.getSiape());
			solicitacao.setStatus(1);
			solicitacao.setDescricao(descricao);
			dao.salvar(solicitacao);
		}

		map.addAttribute("files", fileNames);
		return "file_upload_success";  // cria uma página de sucesso solicitação
	}


	@RequestMapping("admListarSolicitacao")
	public String admListarSolicitacao(Model model) {
	 
		UsuarioDao dao2 = new UsuarioDao();
		List<Usuario> listaUsuario = dao2.listar();
		model.addAttribute("listaUsuario", listaUsuario);
		
		SolicitacaoDao dao = new SolicitacaoDao();
		List<Solicitacao> listaSolicitacao = dao.listar();
		model.addAttribute("listaSolicitacao", listaSolicitacao);
		
	 
		return "adm/admPedidosSolicitados";
	}





}
