package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Medico;

public class MedicoDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Medico> database = new HashMap<Integer, Medico>();
	private static Map<String, Medico> map = new HashMap<String, Medico>();


	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static MedicoDao INSTANCE = new MedicoDao();

	private MedicoDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe MedicoDao
	 */
	public static MedicoDao getInstance() {
		return INSTANCE;
	}

	public void save(Medico medico) {
		if (medico != null) {
			if (medico.getId() == null) {
				nextId++;
				medico.setId(nextId);
			}
			database.put(medico.getId(), medico);
			map.put(medico.getNome(), medico);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)		
			map.remove(database.get(id).getNome());
			database.remove(id);
	}

	public Medico getById(Integer id) {
		return database.get(id);
	}

	public List<Medico> findAll() {
		return new ArrayList<Medico>(database.values());
	}
	
	public Map<String, Medico> getMap() {
		return map;
	}

}
