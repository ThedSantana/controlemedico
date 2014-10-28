package com.sample.controller;

import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

import com.sample.dao.UsuarioDao;
import com.sample.model.Usuario;

public class LoginController {

	/*
	 * Objeto Estático Singleton http://pt.wikipedia.org/wiki/Singleton
	 */
	private Usuario usuario;
	private String login;
	private String senha;
	
	public String login() {

		for (Object usu : UsuarioDao.getInstance().findAll()) {
			if (((Usuario) usu).getLogin().equalsIgnoreCase(login)) {
				if (((Usuario) usu).getSenha().equals(senha)) {
					usuario = (Usuario) usu;
					FacesContext context = FacesContext.getCurrentInstance();  
					HttpSession session = (HttpSession) context.getExternalContext().getSession(false);  
					session.setAttribute("usuario", usuario);
					return "home.jsp";
				}
			}
		}
		return "login.jsp";
	}

	public String logout() {
		usuario = null;
		FacesContext context = FacesContext.getCurrentInstance();  
		HttpSession session = (HttpSession) context.getExternalContext().getSession(false);  
		session.removeAttribute("usuario");
		return "login.jsp";
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
	
	public static boolean deslogado() {
		FacesContext context = FacesContext.getCurrentInstance();  
		HttpSession session = (HttpSession) context.getExternalContext().getSession(false);  
		 Usuario user = (Usuario) session.getAttribute("usuario");
		if (user != null) {
			return false;
		}
		return true;
	}

}
