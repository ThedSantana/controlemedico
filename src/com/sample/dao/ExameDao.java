package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Exame;

public class ExameDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Exame> database = new HashMap<Integer, Exame>();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static ExameDao INSTANCE = new ExameDao();

	private ExameDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe ExameDao
	 */
	public static ExameDao getInstance() {
		return INSTANCE;
	}

	public void save(Exame exame) {
		if (exame != null) {
			if (exame.getId() == null) {
				nextId++;
				exame.setId(nextId);
			}
			database.put(exame.getId(), exame);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public Exame getById(Integer id) {
		return database.get(id);
	}

	public List<Exame> findAll() {
		return new ArrayList<Exame>(database.values());
	}

}
