package com.quizz.models;

import java.util.ArrayList;

public class Quizz {
    private ArrayList<Question> questions;
    //mode qcm ou pas
    private String continent;  //Asie, Europe, Amérique su Sud, Amérique du Nord, Afrique, Océanie, Monde
    //faire un enum?




    public Quizz(ArrayList<Question> questions) {
        this.questions = questions;
    }

    public ArrayList<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(ArrayList<Question> questions) {
        this.questions = questions;
    }
}
