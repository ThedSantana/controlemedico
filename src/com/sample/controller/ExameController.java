package com.sample.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import com.sample.dao.ConsultaDao;
import com.sample.dao.ExameDao;
import com.sample.model.Consulta;
import com.sample.model.Exame;

public class ExameController {
	private ExameDao exameDao = ExameDao.getInstance();
	private Exame exame;

	public ExameController() {
		exame = new Exame();
	}

	public String save() {
		exameDao.save(exame);
		exame = new Exame();
		return "consulta.jsp";
	}

	public String edit() {
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		exame = exameDao.getById(id);
		return "exame.jsp";
	}
	
	public void delete(){
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		exameDao.delete(id);
	}

	// getters e setters
	public Exame getExame() {
		return exame;
	}

	public void setExame(Exame exame) {
		this.exame = exame;
	}

	public List<Exame> getExames() {
		return exameDao.findAll();
	}
	
	public String listar() {
		return "listexame.jsp";
	}
	
	public String novoExame() {
		Integer id =  Integer.parseInt((String)FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("consulta_id"));
		System.out.println(id);
		exame.setConsulta(ConsultaDao.getInstance().getById(id));
		return "exame.jsp";
		
	}

}
