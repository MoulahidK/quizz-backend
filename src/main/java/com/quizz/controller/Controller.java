package com.quizz.controller;

import com.quizz.models.Pays;
import com.quizz.models.Question;
import com.quizz.models.Quizz;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController

public class Controller {
    @Autowired
    private DaoManager daoM;
    private Quizz current_quizz;


    @RequestMapping(value="/test_quiz",method=RequestMethod.GET)
    public String test_quiz(){
        Quizz qu= daoM.createQuizz("Europe");
        return qu.toJson();
    }

    @RequestMapping(value="/test_question",method=RequestMethod.GET)
    public String test_question(){
        //une question
        Pays fr= daoM.createPays("France");
        Question qu= daoM.createQuestion(fr,"Europe");
        return  qu.toJson();

    }

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String home(){
        return "Hello!!!!!!!!!!!!!!!!";
    }

    @RequestMapping(value = "/quizz/",method = RequestMethod.GET) //url temporaire hein
    public String InstanceQuizz(){
        this.current_quizz=daoM.createQuizz("monde");
        return "Quizz généré";
    }
    /*
    @RequestMapping(value = "/quizz/{i}",method = RequestMethod.GET) //url temporaire hein
    public String getQuestion(@PathVariable int i){
        try{
            return this.current_quizz.getQuestions().get(i).toJson();
        }catch(Exception e ){
            return "Il n'y a pas autant de questions dans le quizz!";
        }
    } */

    @PostMapping(value = "/quizz")
    public String getQuestion(@RequestBody int i){
        if (this.current_quizz == null){
            this.InstanceQuizz();
        }

        try{
            return this.current_quizz.getQuestions().get(i).toJson();
        }catch(Exception e ){
            return "Il n'y a pas autant de questions dans le quizz!";
        }
    }





/*
    public Integer QuizzResults(Quizz quizz){
        Integer score = 0;
        for (int i =0 ; i<quizz.getReponses().size();i++){
            quizz.getQuestions().get(i).ValidateQuestion(quizz.getReponses().get(i));
            score++;
        }
        return score;
    }
*/



}