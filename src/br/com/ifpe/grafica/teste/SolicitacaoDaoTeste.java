package br.com.ifpe.grafica.teste;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;

import br.com.ifpe.grafica.model.Solicitacao;
import br.com.ifpe.grafica.model.SolicitacaoDao;

public class SolicitacaoDaoTeste {

	Solicitacao solicitacao;
	SolicitacaoDao dao;
	
	
	
	@Before
	public void setUp() throws Exception {
	
		
		solicitacao = new Solicitacao();
		
		solicitacao.setData(new Date());
		solicitacao.setDescricao("ola");
		solicitacao.setStatus(1);
		
		//solicitacao.setSiapeSolicitante(1324);
		solicitacao.setSiapeExecutor(1234);
		
		solicitacao.setAnexo1("1");
		solicitacao.setAnexo2("2");
		solicitacao.setAnexo3("3");
		solicitacao.setAnexo4("4");
		
	
		
		
		dao=new SolicitacaoDao();
		
		
	}

	
	@Test
	public void testSolicitacaoDao() {
		
	}

	@Test
	public void testSalvar() {
	
		dao.salvar(solicitacao);
	}

}
