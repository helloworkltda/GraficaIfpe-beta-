package br.com.ifpe.grafica.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;


public class Util {

	public static boolean fazerUploadImagem(MultipartFile imagem) {
		
		boolean sucessoUpload = false;
		if (!imagem.isEmpty()) {
			String nomeArquivo = imagem.getOriginalFilename(); 
			try {
				// Criando o diret�rio para armazenar o arquivo
				//COLOCAR File.separator PARA CADA / QUE ENCONTRAR
				// C:\Users\Suporte\git\connectwolrd
				String workspaceProjeto =  "/home/administrador/git/GraficaIfpe-beta-";
				//String workspaceProjeto = "C:" + File.separator + "Users" + File.separator +"Suporte" + File.separator+ "git" + File.separator + "connectwolrd";
				File dir = new File(workspaceProjeto + File.separator+ "WebContent" + File.separator+ "view" + File.separator +"anexos");
				
				if (!dir.exists()) {
					dir.mkdirs();
				}

				// Criando o arquivo no diretorio
				File serverFile = new File(workspaceProjeto + File.separator + "WebContent" + File.separator + "view" + File.separator+"anexos" +File.separator + Calendar.getInstance().getTime() + " - " + nomeArquivo);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(imagem.getBytes()); stream.close();

				System.out.println("Arquivo armazenado em:" + serverFile.getAbsolutePath()); System.out.println("Voce fez o upload do arquivo " + nomeArquivo + " com sucesso");
				sucessoUpload = true;

			} 
			catch (Exception e) {
				System.out.println("Voce falhou em carregar o arquivo " + nomeArquivo + " => " + e.getMessage());
			}

		}
		else {
			System.out.println("Voce falhou em carregar o arquivo porque ele esta vazio ");
		}

		return sucessoUpload;
		}
    
    

}
