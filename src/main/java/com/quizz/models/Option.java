package com.quizz.models;

import javax.persistence.*;

@Entity
@Table(name = "Options")
public class Option{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long Id;
	
	private String optionText;
	
	//@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	//@JoinColumn(name="question_id")
	private transient Long question;


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

	public Long getQuestion() {
		return question;
	}

	public void setQuestion(Long question) {
		this.question = question;
	}
}
