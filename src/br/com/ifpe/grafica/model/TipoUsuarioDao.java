package br.com.ifpe.grafica.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import br.com.ifpe.grafica.util.ConnectionFactory;

public class TipoUsuarioDao {

	private Connection connection;

	public TipoUsuarioDao() {

		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(TipoUsuario tipoUsuario) {

		try {

			String sql = "INSERT INTO tipo_usuario (id, descricao) VALUES (?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1, tipoUsuario.getId());
			stmt.setString(2, tipoUsuario.getDescricao());
			stmt.execute();
			stmt.close();
			connection.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<TipoUsuario> listar() {

		try {
			List<TipoUsuario> listaTipoUsuario = new ArrayList<TipoUsuario>();
			PreparedStatement stmt = (PreparedStatement) this.connection
					.prepareStatement("SELECT * FROM tipo_usuario ORDER BY descricao");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaTipoUsuario.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaTipoUsuario;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	 public TipoUsuario buscarPorId(int id) {

			try {
			    PreparedStatement stmt = (PreparedStatement) connection.prepareStatement("SELECT * FROM tipo_usuario WHERE id = ?");
			    stmt.setInt(1, id);
			    ResultSet rs = stmt.executeQuery();

			    TipoUsuario tipoUsuario = null;
			    if (rs.next()) {
			    	tipoUsuario = montarObjeto(rs);
			    }

			    rs.close();
			    stmt.close();
			    connection.close();
			    return tipoUsuario;

			} catch (SQLException e) {
			    throw new RuntimeException(e);
			}
		    }

	private TipoUsuario montarObjeto(ResultSet rs) throws SQLException {

		TipoUsuario tipoUsuario = new TipoUsuario();
		tipoUsuario.setId(rs.getInt("id"));
		tipoUsuario.setDescricao(rs.getString("descricao"));
		return tipoUsuario;
	}
}