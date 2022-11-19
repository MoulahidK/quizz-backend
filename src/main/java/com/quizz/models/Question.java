package com.quizz.models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Questions")
public class Question {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long questionId;
	
	@Column(name = "question_title", nullable = false)
	private String title;
	
	@OneToMany(targetEntity=Option.class, mappedBy="question", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Set<Option> options;
	
	@Column( name = "option_correct", nullable=false)
	private String optionCorrect;

	public Question() {
	}

	public Question(Pays pays,String continent) {
		this.title = pays.getNom();
		this.options=new HashSet<>(); //?
		this.options.add(new Option(pays.getCapitale()));

		//ajouter 3 autres options

		this.optionCorrect=pays.getCapitale();



	}


}
