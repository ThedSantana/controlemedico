package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.ItemReceita;

public class ItemReceitaDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, ItemReceita> database = new HashMap<Integer, ItemReceita>();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static ItemReceitaDao INSTANCE = new ItemReceitaDao();

	private ItemReceitaDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe ItemReceitaDao
	 */
	public static ItemReceitaDao getInstance() {
		return INSTANCE;
	}

	public void save(ItemReceita itemReceita) {
		if (itemReceita != null) {
			if (itemReceita.getId() == null) {
				nextId++;
				itemReceita.setId(nextId);
			}
			database.put(itemReceita.getId(), itemReceita);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public ItemReceita getById(Integer id) {
		return database.get(id);
	}

	public List<ItemReceita> findAll() {
		return new ArrayList<ItemReceita>(database.values());
	}

}
