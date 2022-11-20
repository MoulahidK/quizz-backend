package com.quizz.controller;
import com.quizz.models.Pays;
import com.quizz.models.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Controller {

    @Autowired
    private DaoManager daoManager;
    @RequestMapping(value="/home", method=RequestMethod.GET)
    public String home() {
        return "Hello";
    }

    public Question createQuestion(Pays pays){
        return daoManager.createQuestion(pays);

    }

}
