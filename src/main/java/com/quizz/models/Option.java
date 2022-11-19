package com.quizz.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Options")
public class Option{

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long Id;
	
	private String optionText;
	
	@ManyToOne()
	@JoinColumn(name="question_id")
	private Question question;


	public Option(String optionText) {
		this.optionText = optionText;
	}

	public Option() {

	}

	public long getId() {
		return Id;
	}

	public void setId(long id) {
		Id = id;
	}

	public String getOptionText() {
		return optionText;
	}

	public void setOptionText(String optionText) {
		this.optionText = optionText;
	}

	
	 
	
}
