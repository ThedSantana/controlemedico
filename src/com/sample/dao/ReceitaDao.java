package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Receita;

public class ReceitaDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Receita> database = new HashMap<Integer, Receita>();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static ReceitaDao INSTANCE = new ReceitaDao();

	private ReceitaDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe ReceitaDao
	 */
	public static ReceitaDao getInstance() {
		return INSTANCE;
	}

	public void save(Receita receita) {
		if (receita != null) {
			if (receita.getId() == null) {
				nextId++;
				receita.setId(nextId);
			}
			database.put(receita.getId(), receita);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public Receita getById(Integer id) {
		return database.get(id);
	}

	public List<Receita> findAll() {
		return new ArrayList<Receita>(database.values());
	}

}
