package com.sample.model;

import java.util.List;

/**
 * Write a description of class Receita here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Receita {
	private Integer id;
	private Consulta consulta;
	private List<ItemReceita> itens;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<ItemReceita> getItens() {
		return itens;
	}

	public void setItens(List<ItemReceita> itens) {
		this.itens = itens;
	}

	public Consulta getConsulta() {
		return consulta;
	}

	public void setConsulta(Consulta consulta) {
		this.consulta = consulta;
	}
}
