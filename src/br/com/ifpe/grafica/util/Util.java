package br.com.ifpe.grafica.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;


public class Util {

	//public static String downloadAnexo = "/home/nilson/git/GraficaIfpe-beta-/";
	public static String downloadAnexo = "/home/administrador/git/GraficaIfpe-beta-";
	public static String caminhoAnexo = "/grafica/view/anexos";
	
	
	public static boolean fazerUploadImagem(MultipartFile imagem) throws IOException {
		
		
		
		boolean sucessoUpload = false;
		if (!imagem.isEmpty()) {
			String nomeArquivo = imagem.getOriginalFilename(); 
			try {
				// Criando o diret�rio para armazenar o arquivo
				//COLOCAR File.separator PARA CADA / QUE ENCONTRAR
				// C:\Users\Suporte\git\connectwolrd
				String workspaceProjeto =  downloadAnexo;
				//String workspaceProjeto = "C:" + File.separator + "Users" + File.separator +"Suporte" + File.separator+ "git" + File.separator + "connectwolrd";
				File dir = new File(workspaceProjeto + File.separator+ "WebContent" + File.separator+ "view" + File.separator +"anexos");
				
				if (!dir.exists()) {
					dir.mkdirs();
				}
				
				String Concatena = Calendar.getInstance().getTime().toString();
				Concatena = Concatena.replaceAll(" ","");
				Concatena = Concatena.replaceAll("-","");
				Concatena = Concatena.replaceAll("_","");
				
				
				nomeArquivo = nomeArquivo.replaceAll(" ","");
				nomeArquivo = nomeArquivo.replaceAll("-","");
				nomeArquivo = nomeArquivo.replaceAll("_","");
				
				
				// Criando o arquivo no diretorio
				File serverFile = new File(workspaceProjeto + File.separator + "WebContent" + File.separator + "view" + File.separator+"anexos" +File.separator + Concatena + nomeArquivo);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(imagem.getBytes()); stream.close();

				System.out.println("Arquivo armazenado em:" + serverFile.getAbsolutePath()); System.out.println("Voce fez o upload do arquivo " + nomeArquivo + " com sucesso");
				sucessoUpload = true;

			} 
			catch (Exception e) {
				System.out.println("Você falhou em carregar o arquivo " + nomeArquivo + " => " + e.getMessage());
			}

		}
		else {
			System.out.println("Você falhou em carregar o arquivo porque ele está vazio ");
		}

		return sucessoUpload;
		}
    
    

}
