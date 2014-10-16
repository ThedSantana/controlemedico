package com.sample.controller;

import com.sample.dao.UsuarioDao;
import com.sample.model.Usuario;
 
public class LoginController {

	private Usuario usuario;
	private String login;
	private String senha;

	public String login() {

		for (Object usu : UsuarioDao.getInstance().findAll()) {
			if (((Usuario) usu).getLogin().equalsIgnoreCase(
					login)) {
				if (((Usuario) usu).getSenha().equals(senha)) {
					usuario = (Usuario) usu;
					return "/home.jsp";
				}
			}
		}
		return "/login.jsp";
	}

	public String logout() {
		usuario = null;
		return "/login.jsp";
	}

	public boolean isLoggedIn() {
		return usuario != null;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Usuario getUsuario() {
		return usuario;
	}



}
