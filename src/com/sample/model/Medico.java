package com.sample.model;

/**
 * Write a description of class Medico here.
 * 
 * @author (Paulo C. Coimbra)
 * @version (20141021)
 */
public class Medico {

	private Integer id;
	private String nome;
	private String crm;
	private String especialidade;
	private String cidade;
	private String endereco;
	private String telefone;
	private String email;
	private Boolean atendeNoPlano;
	private String cobertura;

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

	public String getCrm() {
		return crm;
	}

	public void setCrm(String crm) {
		this.crm = crm;
	}

	public String getEspecialidade() {
		return especialidade;
	}

	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCobertura() {
		return cobertura;
	}

	public void setCobertura(String cobertura) {
		this.cobertura = cobertura;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getAtendeNoPlano() {
		return atendeNoPlano;
	}

	public void setAtendeNoPlano(Boolean atendeNoPlano) {
		this.atendeNoPlano = atendeNoPlano;
	}

}
