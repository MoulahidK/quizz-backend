package com.quizz.controller;

import com.quizz.models.Pays;
import com.quizz.models.Question;
import com.quizz.models.Quizz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController

public class Controller {
    @Autowired
    private DaoManager daoM;
    @RequestMapping(value="/home",method=RequestMethod.GET)
    public String home(){
        Quizz qu= daoM.createQuizz("Europe");
        return qu.toJson();
    }

    @RequestMapping(value="/home2",method=RequestMethod.GET)
    public String home2(){
        String str ="From Pays where NOT (Code_alpha  = 'FRA') AND Continent='Europe' ORDER BY RAND()" ;
        List <Pays> u = daoM.sendRq(str);
        ArrayList<String> res= new ArrayList<>();
        for (Pays p:u){
            res.add(p.getNom());
        }
        return String.join(",    ",res);
        }

    @RequestMapping(value="/home3",method=RequestMethod.GET)
    public String home3(){

        //une question
        Pays fr= daoM.createPays("France");
        Question qu= daoM.createQuestion(fr,"Europe");
        return  qu.toJson();

    }

    public Integer QuizzResults(Quizz quizz,ArrayList<String> reponses){
        Integer score = 0;
        for (int i =0 ; i<reponses.size();i++){
            quizz.getQuestions().get(i).ValidateQuestion(reponses.get(i));
            score++;
        }
        return score;
    }




}