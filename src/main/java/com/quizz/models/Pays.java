package com.quizz.models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pays {
	
	public Pays() {
		super();
	}

	public Pays(String code_alpha, String nom, String capitale, String continent) {
		super();
		Code_alpha = code_alpha;
		Nom = nom;
		Capitale = capitale;
		Continent = continent;
	}

	public String getCode_alpha() {
		return Code_alpha;
	}

	public void setCode_alpha(String code_alpha) {
		Code_alpha = code_alpha;
	}

	public String getNom() {
		return Nom;
	}

	public void setNom(String nom) {
		Nom = nom;
	}

	public String getCapitale() {
		return Capitale;
	}

	public void setCapitale(String capitale) {
		Capitale = capitale;
	}

	public String getContinent() {
		return Continent;
	}

	public void setContinent(String continent) {
		Continent = continent;
	}

	@Id
	String Code_alpha;
	
	String Nom;
	
	String Capitale;
	
	String Continent;

}
