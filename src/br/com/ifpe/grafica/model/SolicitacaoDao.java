package br.com.ifpe.grafica.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.ifpe.grafica.util.ConnectionFactory;

public class SolicitacaoDao {
	
	private Connection connection;

	public SolicitacaoDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public void salvar(Solicitacao solicitacao) {

		try {
			String sql = "INSERT INTO solicitacao (codigo,anexo1,anexo2,anexo3,anexo4,descricao) VALUES (?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, solicitacao.getCodigo());
			stmt.setString(2, solicitacao.getAnexo1());
			stmt.setString(3, solicitacao.getAnexo2());
			stmt.setString(4, solicitacao.getAnexo3());
			stmt.setString(5, solicitacao.getAnexo4());
			stmt.setString(6, solicitacao.getDescricao());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
