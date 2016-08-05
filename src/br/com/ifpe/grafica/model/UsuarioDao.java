package br.com.ifpe.grafica.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.ifpe.grafica.util.ConnectionFactory;

public class UsuarioDao {

	private Connection connection;

    public UsuarioDao() {

	try {
	    this.connection = new ConnectionFactory().getConnection();
	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }

    public void salvar(Usuario usuario) {

	try {
	    String sql = "INSERT INTO usuario (siape,nome,cargo,email,senha,tipo_id) VALUES (?,?,?,?,?,?)";
	    PreparedStatement stmt = connection.prepareStatement(sql);
	    stmt.setInt(1, usuario.getSiape());
	    stmt.setString(2, usuario.getNome());
	    stmt.setString(3, usuario.getCargo());
	    stmt.setString(4, usuario.getEmail());
	    stmt.setString(5, usuario.getSenha());
	    stmt.setInt(6, usuario.getTipoUsuario().getId());
	    stmt.execute();
	    stmt.close();
	    connection.close();
	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }
    

    public void alterar(Usuario usuario) {

	String sql = "UPDATE usuario SET siape = ? , nome = ? , cargo = ? , email  = ? , senha = ? WHERE id = ?";

	try {

	    PreparedStatement stmt = connection.prepareStatement(sql);
	    stmt.setInt(1, usuario.getSiape());
	    stmt.setString(2, usuario.getNome());
	    stmt.setString(3, usuario.getCargo());
	    stmt.setString(4, usuario.getEmail());
	    stmt.setString(5, usuario.getSenha());
	    stmt.execute();
	    stmt.close();
	    connection.close();
	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }

    public void remover(Usuario usuario) {

	try {
	    PreparedStatement stmt = connection.prepareStatement("DELETE FROM usuaeio WHERE siape = ?");
	    stmt.setLong(1, usuario.getSiape());
	    stmt.execute();
	    stmt.close();
	    connection.close();
	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }

    public List<Usuario> listar() {

	try {

	    List<Usuario> listaUsuario = new ArrayList<Usuario>();
	    PreparedStatement stmt = this.connection.prepareStatement("SELECT * FROM usuario ORDER BY cargo");

	    ResultSet rs = stmt.executeQuery();

	    while (rs.next()) {
	    	listaUsuario.add(montarObjeto(rs));
	    }

	    rs.close();
	    stmt.close();
	    connection.close();

	    return listaUsuario;

	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }

    public Usuario buscarPorSiape(int siape) {

	try {
	    PreparedStatement stmt = connection.prepareStatement("SELECT * FROM usuario WHERE siape = ?");
	    stmt.setInt(1, siape);
	    ResultSet rs = stmt.executeQuery();

	    Usuario usuario = null;
	    if (rs.next()) {
		usuario = montarObjeto(rs);
	    }

	    rs.close();
	    stmt.close();
	    connection.close();
	    return usuario;
	} catch (SQLException e) {
	    throw new RuntimeException(e);
	}
    }

    private Usuario montarObjeto(ResultSet rs) throws SQLException {

	Usuario usuario = new Usuario();
	usuario.setNome(rs.getString("nome"));
	usuario.setCargo(rs.getString("cargo"));
	usuario.setEmail(rs.getString("email"));
	
	TipoUsuarioDao dao = new TipoUsuarioDao();
	TipoUsuario tipoUsuario = dao.buscarPorId(rs.getInt("id"));
	usuario.setTipoUsuario(tipoUsuario);

	usuario.setSenha(rs.getString("senha"));
	usuario.setSiape(rs.getInt("siape"));
	
	return usuario;
    }
}

