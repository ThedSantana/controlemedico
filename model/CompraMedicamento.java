package com.sample.model;

/**
 * Write a description of class CompraMedicamentos here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class CompraMedicamento {

	private Integer id;
	private Double valorUnit;
	private Integer quantidade;
	private Double valorTotal;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getValorUnit() {
		return valorUnit;
	}

	public void setValorUnit(Double valorUnit) {
		this.valorUnit = valorUnit;
	}

	public Integer getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(Integer quantidade) {
		this.quantidade = quantidade;
	}

	public Double getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(Double valorTotal) {
		this.valorTotal = valorTotal;
	}

}
