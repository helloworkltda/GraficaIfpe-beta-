package br.com.ifpe.grafica.teste;

import static org.junit.Assert.assertEquals;

import java.sql.SQLException;
import java.util.List;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.Usuario;
import br.com.ifpe.grafica.model.UsuarioDao;



@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class UsuarioDaoTeste {

	UsuarioDao dao;
	UsuarioDao dao2;
	
	Usuario usuario;
	Usuario usuario2; 
	
	TipoUsuario tipo;
	
	@Before
	public void setUp() throws Exception {
		dao= new UsuarioDao();
		dao2= new UsuarioDao();
		
		usuario = new Usuario();
	
		tipo =new TipoUsuario();
		
		//usuario 1
		usuario=new Usuario();
		usuario.setNome("Ataliba");
		usuario.setEmail("Talibinha@gmail.com");
		usuario.setCargo("Professor");
		usuario.setSenha("1234");
		usuario.setSiape(1234);
		
		tipo.setDescricao("comum");
		tipo.setId(1);
		usuario.setTipoUsuario(tipo);
		
		
		//usuario 2
		usuario2=new Usuario();
		usuario2.setNome("Astaoufo");
		usuario2.setEmail("Astinha@gmail.com");
		usuario2.setCargo("Professor");
		usuario2.setSenha("4321");
		usuario2.setSiape(4321);
		
		tipo.setDescricao("comum");
		tipo.setId(1);
		usuario2.setTipoUsuario(tipo);
		
	}

	@Test
	public void testUsuarioDao() {
		
	}

	
	@Test
	public void AtestSalvar() throws SQLException {
	
		//usuario 1
		dao.salvar(usuario);
	
		Usuario usuarioConsultado = dao.buscarPorSiape(usuario.getSiape());	
		assertEquals(usuarioConsultado.getSiape(), usuario.getSiape());
		
		dao.fecharConexao();
		
		
		//usuario 2
		dao2.salvar(usuario2);
		
		Usuario usuarioConsultado2 = dao2.buscarPorSiape(usuario2.getSiape());
		assertEquals(usuarioConsultado2.getSiape(), usuario2.getSiape());
		
		dao2.fecharConexao();
	}

	
	
	@Test
	public void EtestAlterar() throws SQLException {
	
	Usuario usuarioAlterado = dao.buscarPorSiape(4321);
		usuarioAlterado.setNome("fulano");
		usuarioAlterado.setCargo("tecnico");
		usuarioAlterado.setEmail("fulano@gmail.com");
		usuarioAlterado.setSenha("1234");
		
		dao.alterar(usuarioAlterado);
		
		dao.fecharConexao();
		
	}

	
	
	@Test
	public void FtestRemover() throws SQLException {
		
		Usuario usuarioRemovido= dao.buscarPorSiape(1234);
		dao.remover(usuarioRemovido);
		usuarioRemovido=dao.buscarPorSiape(1234);
		
		assertEquals(usuarioRemovido, null);
		
		dao.fecharConexao();
	}

	@Test
	public void BtestListar() throws SQLException {
		List <Usuario> usuarios=dao.listar();
		
		for( Usuario usuario: usuarios){
			System.out.println(usuario.getNome()+" "+usuario.getCargo()+" "+usuario.getEmail()+" "+usuario.getSenha()+" "+usuario.getSiape()+" "+usuario.getTipoUsuario().getId()+" "+usuario.getTipoUsuario().getDescricao());
		
		}
			
		dao.fecharConexao();
	}

	@Test
	public void CtestBuscarPorSiape() throws SQLException {
		
		Usuario usuarioEncontrado= dao.buscarPorSiape(1234);
		assertEquals(usuarioEncontrado.getSiape(), usuario.getSiape());		
		
		dao.fecharConexao();
		
	}

	@Test
	public void DtestBuscarUsuario() throws SQLException {
		
		dao.buscarUsuario(usuario);
		
		assertEquals(usuario, usuario);
		
		
		dao.fecharConexao();
	}
//
//	@Test
//	public void testFecharConexao() {
//		fail("Not yet implemented");
//	}
}
