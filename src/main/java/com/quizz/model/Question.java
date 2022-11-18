package com.quizz.model;

import org.springframework.beans.factory.annotation.Value;

import java.util.HashMap;

public class Question { //Retourne un pays entier, et 4 capitales dans l'ordre random
    @Value("qcm")
    private String mode;
    private Country pays;
    private HashMap<String,Integer> propositions;

    public Question(Country pays) {
        this.pays=pays;

        String code_alpha = this.pays.getId();



    }


}
