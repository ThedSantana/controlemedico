package com.sample.model;

import java.util.Date;

/**
 * Write a description of class Lembrete here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Lembrete {
	private Integer id;
	private String tipo;
	private String descricao;
	private Date dataHora;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Date getDataHora() {
		return dataHora;
	}

	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}

}