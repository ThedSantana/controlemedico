package com.sample.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sample.model.Usuario;

/**
 * @author lenita
 * 
 *         Classe responsável por "salvar" os usuários a princípio salva os
 *         dados em um mapa, uma vez que não possui conexão com banco de dados.
 */
public class UsuarioDao {

	// Mapa de usuários cadastrados no sistema
	private static Map<Integer, Usuario> database = initDatabase();

	/*
	 * Contador que guarda o último id utilizado
	 */
	private static Integer nextId = 1;

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private static UsuarioDao INSTANCE = new UsuarioDao();

	private UsuarioDao() {
	}

	/*
	 * Inicializa a lista de usuários adicionando o usuário admin
	 */
	private static HashMap<Integer, Usuario> initDatabase() {
		HashMap<Integer, Usuario> map = new HashMap<Integer, Usuario>();
		Usuario admin = new Usuario();
		admin.setNome("Administrador");
		admin.setLogin("admin");
		admin.setSenha("123");
		admin.setId(1);
		map.put(admin.getId(), admin);
		return map;
	}

	/*
	 * Método que retorna o objeto instanciado da classe UsuarioDao
	 */
	public static UsuarioDao getInstance() {
		return INSTANCE;
	}

	public void save(Usuario usuario) {
		if (usuario != null) {
			if (usuario.getId() == null) {
				nextId++;
				usuario.setId(nextId);
			}
			database.put(usuario.getId(), usuario);
		}
	}

	public void delete(Integer id) {
		if (id != null && id != 1)
			database.remove(id);
	}

	public Usuario getById(Integer id) {
		return database.get(id);
	}

	public List<Usuario> findAll() {
		return new ArrayList<Usuario>(database.values());
	}

}
