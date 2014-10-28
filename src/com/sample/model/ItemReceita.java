package com.sample.model;

/**
 * Write a description of class ItemReceita here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class ItemReceita {
	private Integer id;
	private String administracao;
	private String dose;
	private String posologia;
	private String duracao;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAdministracao() {
		return administracao;
	}

	public void setAdministracao(String administracao) {
		this.administracao = administracao;
	}

	public String getDose() {
		return dose;
	}

	public void setDose(String dose) {
		this.dose = dose;
	}

	public String getPosologia() {
		return posologia;
	}

	public void setPosologia(String posologia) {
		this.posologia = posologia;
	}

	public String getDuracao() {
		return duracao;
	}

	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}

}
