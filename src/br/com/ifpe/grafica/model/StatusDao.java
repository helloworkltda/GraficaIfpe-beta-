package br.com.ifpe.grafica.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import br.com.ifpe.grafica.util.ConnectionFactory;

public class StatusDao {
	
	private Connection connection;

	public StatusDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Status buscarPorId(int id) {

		try {
			PreparedStatement stmt = connection.prepareStatement("SELECT * FROM status WHERE id = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			Status status = null;
			if (rs.next()) {
				status = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			
			return status;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	private Status montarObjeto(ResultSet rs) throws SQLException {

		Status status = new Status();
		status.setId(rs.getInt("id"));
		status.setDescricao(rs.getString("descricao"));
		
		return status;
	}
	
	
	
	public void fecharConexao() throws SQLException{
		connection.close();
	}
}
