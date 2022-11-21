package com.quizz.models;

import java.util.ArrayList;

public class Quizz {
    private ArrayList<Question> questions;
    private ArrayList<String> reponses = new ArrayList<>();
    ///mode qcm ou pas
    private String continent;  //Asie, Europe, Amérique su Sud, Amérique du Nord, Afrique, Océanie, Monde
    //faire un enum?




    public Quizz(String continent) {
        this.continent = continent;
        this.questions=new ArrayList<Question>();
    }

    public String toJson() {
        return Helper.toJsonConverter(this);
    }


    public Quizz(ArrayList<Question> questions) {
        this.questions = questions;
    }

    public ArrayList<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(ArrayList<Question> questions) {
        this.questions = questions;
    }

    public ArrayList<String> getReponses() {
        return reponses;
    }

    public void setReponses(ArrayList<String> reponses) {
        this.reponses = reponses;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }
}
