package com.quizz.controller;

import com.quizz.models.Pays;
import com.quizz.models.Question;
import com.quizz.models.Quizz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.quizz.controller.DaoManager;

import java.util.ArrayList;
import java.util.List;

@RestController

public class Controller {
    @Autowired
    private DaoManager daoM;
    //test, chaque methode doit avoir un request mapping ou ca pè
    @RequestMapping(value="/home",method=RequestMethod.GET)
    public String home(){

        Quizz qu= daoM.createQuizz("Europe");
        String res=qu.toJson();
        return res;
    }

    @RequestMapping(value="/home2",method=RequestMethod.GET)
    public String home2(){
        String str ="From Pays where NOT (Code_alpha  = 'FRA') AND Continent='Europe' ORDER BY RAND()" ;
        List <Pays> u = daoM.sendRq(str);
        ArrayList<String> res= new ArrayList<String>();
        for (Pays p:u){
            res.add(p.getNom());
        }
        String res0 = String.join(",    ",res);
        return res0;
    }

    @RequestMapping(value="/home3",method=RequestMethod.GET)
    public String home3(){

        //une question
        String res="";
        Pays fr= daoM.createPays("France");
        Question qu= daoM.createQuestion(fr,"Europe");
        System.out.println("avant toJson");
        System.err.println("avant toJson");
        res= qu.toJson();
        System.out.println("aprestojson");
        return res;
    }




}