package com.quizz.model;

import java.util.List;

import javax.persistence.*;


@Entity
@Table(name = "Questions")
public class Question {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long questionId;
	
	@Column(name = "question_title", nullable = false)
	private String title;
	
	@OneToMany(targetEntity=Option.class, mappedBy="question", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Option> options;
	
	@Column( name = "option_correct", nullable=false)
	private String optionCorrect;
}
