package com.quizz.models;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;


@Entity
@Table(name = "Questions")
public class Question {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long questionId;
	
	@Column(name = "question_title", nullable = false)
	private String title;

	@Column
	private String code_country;
	
	@OneToMany(targetEntity=Option.class,  fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Set<Option> options = new HashSet<Option>();
	
	@Column( name = "option_correct", nullable=false)
	private String optionCorrect;


	//pas sur
	//@OneToOne
	//private QuestionControl qControl;
	//pas sur



	public Question() {
	}

	public Boolean ValidateQuestion(String reponse){
		return reponse.equalsIgnoreCase(this.optionCorrect);
	}


	public String toJson() {

		System.out.println("--------------");
		System.out.println(Helper.toJsonConverter(this));

		System.out.println("--------------");
		return Helper.toJsonConverter(this);
	}

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Set<Option> getOptions() {
		return options;
	}

	public void setOptions(Set<Option> options) {
		this.options = options;
	}

	public void ajouterUneOption(Option option){
		this.options.add(option);
	}

	public String getOptionCorrect() {
		return optionCorrect;
	}

	public void setOptionCorrect(String optionCorrect) {
		this.optionCorrect = optionCorrect;
	}

	public String getCode_country() {
		return code_country;
	}

	public void setCode_country(String code_country) {
		this.code_country = code_country;
	}
}
