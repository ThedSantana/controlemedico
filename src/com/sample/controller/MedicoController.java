package com.sample.controller;

import java.util.HashMap;
import java.util.List;

import javax.faces.context.FacesContext;

import com.sample.dao.MedicoDao;
import com.sample.model.Medico;

public class MedicoController {
	private MedicoDao medicoDao = MedicoDao.getInstance();
	private Medico medico;

	public MedicoController() {
		medico = new Medico();
	}

	public String save() {
		medicoDao.save(medico);
		medico = new Medico();
		return "listmedico.jsp";
	}

	public String edit() {
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		medico = medicoDao.getById(id);
		return "medico.jsp";
	}
	
	public void delete(){
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		medicoDao.delete(id);
	}

	// getters e setters
	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}

	public List<Medico> getMedicos() {
		return medicoDao.findAll();
	}
	
	public String listar() {
		return "listmedico.jsp";
	}

	public HashMap<String, Object> getMedicosmap() {
		return medicoDao.getMap();
	}

	
}
