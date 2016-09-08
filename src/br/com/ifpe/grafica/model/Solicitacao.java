package br.com.ifpe.grafica.model;

import java.util.Date;

public class Solicitacao {

	private int codigo;
	private Date data;
	private String descricao;
	private int status;
	private int siapeSolicitante; 
	private Usuario siapeExecutor;
	private String anexo1;
	private String anexo2;
	private String anexo3;
	private String anexo4;
	private Usuario usuariofk;
	
	
	
	
	public int getSiapeSolicitante() {
		return siapeSolicitante;
	}
	public void setSiapeSolicitante(int siapeSolicitante) {
		this.siapeSolicitante = siapeSolicitante;
	}
	public Usuario getSiapeExecutor() {
		return siapeExecutor;
	}
	public void setSiapeExecutor(Usuario siapeExecutor) {
		this.siapeExecutor = siapeExecutor;
	}
	public Usuario getUsuariofk() {
		return usuariofk;
	}
	public void setUsuariofk(Usuario usuariofk) {
		this.usuariofk = usuariofk;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getAnexo1() {
		return anexo1;
	}
	public void setAnexo1(String anexo1) {
		this.anexo1 = anexo1;
	}
	public String getAnexo2() {
		return anexo2;
	}
	public void setAnexo2(String anexo2) {
		this.anexo2 = anexo2;
	}
	public String getAnexo3() {
		return anexo3;
	}
	public void setAnexo3(String anexo3) {
		this.anexo3 = anexo3;
	}
	public String getAnexo4() {
		return anexo4;
	}
	public void setAnexo4(String anexo4) {
		this.anexo4 = anexo4;
	}
	
	
	
}