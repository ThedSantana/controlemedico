package com.sample.model;

/**
 * Write a description of class Medicamento here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Medicamento {
	private Integer id;
	private String nome;
	private String composicao;
	private String fabricante;
	private Boolean generico;

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

	public String getComposicao() {
		return composicao;
	}

	public void setComposicao(String composicao) {
		this.composicao = composicao;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public Boolean getGenerico() {
		return generico;
	}

	public void setGenerico(Boolean generico) {
		this.generico = generico;
	}

}
