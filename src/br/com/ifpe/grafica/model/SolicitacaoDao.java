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
			String sql = "INSERT INTO solicitacao (anexo1,anexo2,anexo3,anexo4,descricao,siape_solicitante,id_status) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, solicitacao.getAnexo1());
			stmt.setString(2, solicitacao.getAnexo2());
			stmt.setString(3, solicitacao.getAnexo3());
			stmt.setString(4, solicitacao.getAnexo4());
			stmt.setString(5, solicitacao.getDescricao());
			stmt.setInt(6, solicitacao.getSiapeSolicitante());
			stmt.setInt(7, solicitacao.getStatus());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
