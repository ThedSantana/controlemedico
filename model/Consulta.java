package com.sample.model;

import java.util.Date;
import java.util.List;

/**
 * Write a description of class Consulta here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Consulta {

	private Integer id;
	private Date data;
	private String diagnosticoHipotese;
	private String orientacoes;
	private Double custo;
	private Medico medico;	
	private Receita receita;
	
	private List<Exame> exames;
	private List<CirurgiaProcedimento> cirurgiaProcedimentos;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getDiagnosticoHipotese() {
		return diagnosticoHipotese;
	}

	public void setDiagnosticoHipotese(String diagnosticoHipotese) {
		this.diagnosticoHipotese = diagnosticoHipotese;
	}

	public String getOrientacoes() {
		return orientacoes;
	}

	public void setOrientacoes(String orientacoes) {
		this.orientacoes = orientacoes;
	}

	public Double getCusto() {
		return custo;
	}

	public void setCusto(Double custo) {
		this.custo = custo;
	}

	public Receita getReceita() {
		return receita;
	}

	public void setReceita(Receita receita) {
		this.receita = receita;
	}

	public List<Exame> getExames() {
		return exames;
	}

	public void setExames(List<Exame> exames) {
		this.exames = exames;
	}

	public List<CirurgiaProcedimento> getCirurgiaProcedimentos() {
		return cirurgiaProcedimentos;
	}

	public void setCirurgiaProcedimentos(List<CirurgiaProcedimento> cirurgiaProcedimentos) {
		this.cirurgiaProcedimentos = cirurgiaProcedimentos;
	}

	public Medico getMedico() {
		return medico;
	}

	public void setMedico(Medico medico) {
		this.medico = medico;
	}


}
