package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Consulta;

public class ConsultaDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Consulta> database = new HashMap<Integer, Consulta>();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static ConsultaDao INSTANCE = new ConsultaDao();

	private ConsultaDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe ConsultaDao
	 */
	public static ConsultaDao getInstance() {
		return INSTANCE;
	}

	public void save(Consulta consulta) {
		if (consulta != null) {
			if (consulta.getId() == null) {
				nextId++;
				consulta.setId(nextId);
			}
			database.put(consulta.getId(), consulta);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public Consulta getById(Integer id) {
		return database.get(id);
	}

	public List<Consulta> findAll() {
		return new ArrayList<Consulta>(database.values());
	}

}
