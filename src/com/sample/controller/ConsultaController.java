package com.sample.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import com.sample.dao.ConsultaDao;
import com.sample.dao.MedicoDao;
import com.sample.model.Consulta;

public class ConsultaController {
	private ConsultaDao consultaDao = ConsultaDao.getInstance();
	private Consulta consulta;
	private Integer medico_id;

	public ConsultaController() {
		consulta = new Consulta();
	}

	public String save() {
		consulta.setMedico(MedicoDao.getInstance().getById(getMedico_id()));
		consultaDao.save(consulta);
		return "consulta.jsp";
	}

	public String edit() {
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		consulta = consultaDao.getById(id);
		return "consulta.jsp";
	}
	
	public void delete(){
		// pega o parametro passado no link
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		consultaDao.delete(id);
	}

	// getters e setters
	public Consulta getConsulta() {
		return consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

	public List<Consulta> getConsultas() {
		return consultaDao.findAll();
	}
	
	public String listar() {
		return "listconsulta.jsp";
	}

	public Integer getMedico_id() {
		return medico_id;
	}

	public void setMedico_id(Integer medico_id) {
		this.medico_id = medico_id;
	}
	
	public String novaConsulta() {
		consulta = new Consulta();
		return "consulta.jsp";		
	}

}
