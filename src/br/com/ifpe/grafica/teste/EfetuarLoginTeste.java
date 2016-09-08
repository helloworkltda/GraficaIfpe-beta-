package br.com.ifpe.grafica.teste;

import java.sql.SQLException;

import org.junit.Before;
import org.junit.Test;

import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.model.UsuarioDao;

public class EfetuarLoginTeste {

	Usuario usuario;
	UsuarioDao dao;
	TipoUsuario tipo;
	
	
	@Before
	public void setUp() throws Exception {
		
	dao= new UsuarioDao();
	
	tipo =new TipoUsuario();
	
		
		
	usuario=new Usuario();
	usuario.setNome("Astaoufo");
	usuario.setEmail("Astinha@gmail.com");
	usuario.setCargo("Professor");
	usuario.setSenha("4321");
	usuario.setSiape(4321);
	
	tipo.setDescricao("comum");
	tipo.setId(1);
	usuario.setTipoUsuario(tipo);
	}

		
	@Test
	public void testEfetuarLogin() throws SQLException {
		
		dao.buscarUsuario(usuario);
		dao.fecharConexao();
	}

}
