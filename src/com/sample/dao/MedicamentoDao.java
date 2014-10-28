package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Medicamento;

public class MedicamentoDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Medicamento> database = new HashMap<Integer, Medicamento>();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static MedicamentoDao INSTANCE = new MedicamentoDao();

	private MedicamentoDao() {
	}

	/*
	 * Método que retorna o objeto instanciado da classe MedicamentoDao
	 */
	public static MedicamentoDao getInstance() {
		return INSTANCE;
	}

	public void save(Medicamento medicamento) {
		if (medicamento != null) {
			if (medicamento.getId() == null) {
				nextId++;
				medicamento.setId(nextId);
			}
			database.put(medicamento.getId(), medicamento);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public Medicamento getById(Integer id) {
		return database.get(id);
	}

	public List<Medicamento> findAll() {
		return new ArrayList<Medicamento>(database.values());
	}

}
