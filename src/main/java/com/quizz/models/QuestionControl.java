package com.quizz.models;

import javax.persistence.*;

@Entity
public class QuestionControl {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @OneToOne
    @JoinColumn(name = "question_question_id")
    private Question question;

    private int score=0;

    //mettre le timer ici


    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public QuestionControl() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public QuestionControl(Question question) {
        this.question = question;
    }
}
