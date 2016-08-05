package br.com.ifpe.grafica.model;


import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Usuario {
	
	@NotEmpty(message="O nome deve ser preenchido")
	@Size(min = 3, max = 20, message="O nome deve deve ter um tamanho de 5 caracteres")
	private String nome;
	
	@NotEmpty(message="O cargo deve ser preenchido")
	@Size(min = 3, max = 20, message="O cargo deve deve ter um tamanho de 3 caracteres")
	private String cargo;
	
	@NotEmpty(message="O email deve ser preenchido")
	@Email(message="email incorreto")
	private String email;
	
	@Range(min=7,max=15,message="O campo siape tem que conter 7 caracteres")
	private int siape;
	
	private String senha;
	private TipoUsuario tipoUsuario;
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSiape() {
		return siape;
	}
	public void setSiape(int siape) {
		this.siape = siape;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public TipoUsuario getTipoUsuario() {
		return tipoUsuario;
	}
	public void setTipoUsuario(TipoUsuario tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}
	
	
	
	
	
}