package br.com.ifpe.grafica.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			String sql = "INSERT INTO solicitacao (anexo1,anexo2,anexo3,anexo4,descricao,siape_solicitante,id_status,data_solicitacao) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, solicitacao.getAnexo1());
			stmt.setString(2, solicitacao.getAnexo2());
			stmt.setString(3, solicitacao.getAnexo3());
			stmt.setString(4, solicitacao.getAnexo4());
			stmt.setString(5, solicitacao.getDescricao());
			stmt.setInt(6, solicitacao.getSiapeSolicitante());
			stmt.setInt(7, solicitacao.getStatus());
			stmt.setDate(8, new java.sql.Date(solicitacao.getData().getTime()));
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Solicitacao> listar() {

		try {

			List<Solicitacao> listaSolicitacao = new ArrayList<Solicitacao>();
			PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM solicitacao ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaSolicitacao.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			

			return listaSolicitacao;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	private Solicitacao montarObjeto(ResultSet rs) throws SQLException {

		Solicitacao solicitacao = new Solicitacao();
		
		solicitacao.setCodigo(rs.getInt("codigo"));
		solicitacao.setData(rs.getDate("data"));
		solicitacao.setStatus(rs.getInt("status"));

		solicitacao.setSiapeSolicitante(rs.getInt("siapeSolicitante"));
		solicitacao.setSiapeExecutor(rs.getInt("siapeSolicitante"));
		solicitacao.setAnexo1(rs.getString("anexo1"));
		solicitacao.setAnexo2(rs.getString("anexo2"));
		solicitacao.setAnexo3(rs.getString("anexo3"));
		solicitacao.setAnexo4(rs.getString("anexo4"));

		return solicitacao;
	}
}
