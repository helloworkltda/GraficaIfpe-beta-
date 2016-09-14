package br.com.ifpe.grafica.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.ifpe.grafica.model.Solicitacao;
import br.com.ifpe.grafica.model.SolicitacaoDao;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.util.FileUploadForm;
import br.com.ifpe.grafica.util.Util;

@Controller
public class SolicitacaoController {

	@RequestMapping("solicitacao")
	public String solicitacao() {
		return "usuario/comumSolicitarCopias";
	}
	
	@RequestMapping("solicitacaoAdm")
	public String solicitacaoAdm() {
		return "adm/admSolicitarCopias";
	}

	
	@RequestMapping("save")
	public String save(
			@ModelAttribute("uploadForm") FileUploadForm uploadForm, HttpSession session,@ModelAttribute("descricao") String descricao,
			Model map) throws IOException {
		
		
		
		List<MultipartFile> files = uploadForm.getFiles();
		SolicitacaoDao dao = new SolicitacaoDao();
		Solicitacao solicitacao =new Solicitacao();
		List<String> fileNames = new ArrayList<String>();
		int x=1;
		
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				if (Util.fazerUploadImagem(multipartFile)) {
					
					String Concatena = Calendar.getInstance().getTime().toString();
					Concatena = Concatena.replaceAll(" ","");
					Concatena = Concatena.replaceAll("-","");
					Concatena = Concatena.replaceAll("_","");
					
					String nomeArquivo = multipartFile.getOriginalFilename();
					nomeArquivo = nomeArquivo.replaceAll(" ","");
					nomeArquivo = nomeArquivo.replaceAll("-","");
					nomeArquivo = nomeArquivo.replaceAll("_","");
					
					
					if(x==1)
						solicitacao.setAnexo1(Concatena + nomeArquivo);
					if(x==2)
						solicitacao.setAnexo2(Concatena + nomeArquivo);
					if(x==3)
						solicitacao.setAnexo3(Concatena + nomeArquivo);
					if(x==4)
						solicitacao.setAnexo4(Concatena + nomeArquivo);
					
					x++;
				}
				
				

			}
			Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
			solicitacao.setData(Calendar.getInstance().getTime());
			solicitacao.setSiapeSolicitante(usuario);
			solicitacao.setStatus(1);
			solicitacao.setDescricao(descricao);
			dao.salvar(solicitacao);
		}

		map.addAttribute("files", fileNames);
		return "usuario/sucessoSolicitacao";  // cria uma página de sucesso solicitação
	}
	
	 @RequestMapping("SucessoSolicitacao")
		public String exibirSucesso(Model model,Usuario usuario) {
		 
		 model.addAttribute("mensagem", "Usuário cadastrado com sucesso!");
			return "usuario/sucessoSolicitacao";
		}

	
	@RequestMapping("saveAdm")
	public String saveAdm(
			@ModelAttribute("uploadForm") FileUploadForm uploadForm, HttpSession session,@ModelAttribute("descricao") String descricao,
			Model map) throws IOException {

		List<MultipartFile> files = uploadForm.getFiles();
		SolicitacaoDao dao = new SolicitacaoDao();
		Solicitacao solicitacao =new Solicitacao();
		List<String> fileNames = new ArrayList<String>();
		int x=1;
		if(null != files && files.size() > 0) {
			for (MultipartFile multipartFile : files) {

				if (Util.fazerUploadImagem(multipartFile)) {
					String Concatena = Calendar.getInstance().getTime().toString();
					Concatena = Concatena.replaceAll(" ","");
					Concatena = Concatena.replaceAll("-","");
					Concatena = Concatena.replaceAll("_","");
					
					String nomeArquivo = multipartFile.getOriginalFilename();
					nomeArquivo = nomeArquivo.replaceAll(" ","");
					nomeArquivo = nomeArquivo.replaceAll("-","");
					nomeArquivo = nomeArquivo.replaceAll("_","");
					
					if(x==1)
						solicitacao.setAnexo1(Concatena + nomeArquivo);
					if(x==2)
						solicitacao.setAnexo2(Concatena + nomeArquivo);
					if(x==3)
						solicitacao.setAnexo3(Concatena + nomeArquivo);
					if(x==4)
						solicitacao.setAnexo4(Concatena + nomeArquivo);
					
					x++;
				}
				
				

			}
			Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
			solicitacao.setData(Calendar.getInstance().getTime());
			solicitacao.setSiapeSolicitante(usuario);
			solicitacao.setStatus(1);
			solicitacao.setDescricao(descricao);
			dao.salvar(solicitacao);
		}

		map.addAttribute("files", fileNames);
		return "forward:admSucessoSolicitacao";  // cria uma página de sucesso solicitação
	}
	
	
	 @RequestMapping("admSucessoSolicitacao")
		public String exibirSucessoAdm(Model model,Usuario usuario) {
		 
		 model.addAttribute("mensagem", "Usuário cadastrado com sucesso!");
			return "adm/admSucessoSolicitacao";
		}

	@RequestMapping("admListarSolicitacao")
	public String admListarSolicitacao(Model model,Solicitacao solicitacao) {
		
		
		SolicitacaoDao dao = new SolicitacaoDao();
		List<Solicitacao> listaSolicitacao = dao.listar();
		model.addAttribute("listaSolicitacao", listaSolicitacao);
	
		 
	 
		return "adm/admPedidosSolicitados";
	}
	
	@RequestMapping("cancelarSolicitacao")
	public String cancelarSolicitacao(Model model,Solicitacao solicitacao,@RequestParam("codigo") int codigo) {
		
		SolicitacaoDao dao = new SolicitacaoDao();
		
		solicitacao.setStatus(2);
		solicitacao.setCodigo(codigo);

		dao.cancelar(solicitacao);
		
		return "forward:admListarSolicitacao";
	}
	
	@RequestMapping("confirmaSolicitacao")
	public String confirmaSolicitacao(Model model,Solicitacao solicitacao,@RequestParam("codigo") int codigo) {
		
		SolicitacaoDao dao = new SolicitacaoDao();
		
		solicitacao.setStatus(3);
		solicitacao.setCodigo(codigo);

		dao.confirma(solicitacao);
		
		return "forward:admListarSolicitacao";
	}

 

}
