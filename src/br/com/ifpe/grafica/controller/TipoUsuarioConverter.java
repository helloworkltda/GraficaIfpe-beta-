package br.com.ifpe.grafica.controller;

import org.springframework.core.convert.converter.Converter;

import br.com.ifpe.grafica.model.TipoUsuario;
import br.com.ifpe.grafica.model.TipoUsuarioDao;


public class TipoUsuarioConverter implements Converter<String, TipoUsuario> {
	public TipoUsuario convert(String id) {
		TipoUsuarioDao dao = new TipoUsuarioDao();
		return dao.buscarPorId(Integer.valueOf(id));
	}
}