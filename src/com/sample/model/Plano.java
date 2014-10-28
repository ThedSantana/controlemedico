package com.sample.model;

/**
 * Write a description of class Plano here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Plano {
	private Integer id;
	private String nome;
	private String cobertura;
	private String numRegistro;
	private Double mensalidade;
	private Double inscricao;
	private String validadeContrato;
	private String dtFimCarencia;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCobertura() {
		return cobertura;
	}

	public void setCobertura(String cobertura) {
		this.cobertura = cobertura;
	}

	public String getNumRegistro() {
		return numRegistro;
	}

	public void setNumRegistro(String numRegistro) {
		this.numRegistro = numRegistro;
	}

	public Double getMensalidade() {
		return mensalidade;
	}

	public void setMensalidade(Double mensalidade) {
		this.mensalidade = mensalidade;
	}

	public Double getInscricao() {
		return inscricao;
	}

	public void setInscricao(Double inscricao) {
		this.inscricao = inscricao;
	}

	public String getValidadeContrato() {
		return validadeContrato;
	}

	public void setValidadeContrato(String validadeContrato) {
		this.validadeContrato = validadeContrato;
	}

	public String getDtFimCarencia() {
		return dtFimCarencia;
	}

	public void setDtFimCarencia(String dtFimCarencia) {
		this.dtFimCarencia = dtFimCarencia;
	}

}