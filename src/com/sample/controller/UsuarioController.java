package com.sample.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import com.sample.dao.UsuarioDao;
import com.sample.model.Usuario;

public class UsuarioController {
	private UsuarioDao usuarioDao = UsuarioDao.getInstance();
	private Usuario usuario;

	public UsuarioController() {
		usuario = new Usuario();
	}

	public String save() {
		usuarioDao.save(usuario);
		usuario = new Usuario();
		return "/listusuario.jsp";
	}

	public String edit() {
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		usuario = usuarioDao.getById(id);
		return "/usuario.jsp";
	}
	
	public void delete(){
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		usuarioDao.delete(id);
	}

	// getters e setters
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public List<Usuario> getUsuarios() {
		return usuarioDao.findAll();
	}
	
	public String listar() {
		return "/listusuario.jsp";
	}

}
