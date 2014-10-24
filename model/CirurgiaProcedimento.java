package com.sample.model;

import java.util.Date;

/**
 * Write a description of class CirurgiaProcedimento here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class CirurgiaProcedimento {
	private Integer id;
	private Date data;
	private String descricao;
	private String equipe;
	private String local;
	private Double custo;
	private Consulta consulta;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getEquipe() {
		return equipe;
	}

	public void setEquipe(String equipe) {
		this.equipe = equipe;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public Double getCusto() {
		return custo;
	}

	public void setCusto(Double custo) {
		this.custo = custo;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Consulta getConsulta() {
		return consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}

}