package com.quizz.controller;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.quizz.models.Option;
import com.quizz.models.Pays;
import com.quizz.models.Question;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class DaoManager {
    @Autowired
    private SessionFactory sessionFactory;

    public List<String> sendRq(String rq){
        Session session = this.sessionFactory.getCurrentSession();
        Query query= session.createQuery(rq);
        List<String> res =  query.list(); //???
        return res;
    }

    //Pays
    public Pays createPays(String name){
        Pays pays=new Pays();
        pays.setNom(name);
        pays.setCapitale("");
        pays.setCode_alpha("");
        pays.setContinent("");
        return pays;
    }


    ///Questions
    public Question createQuestion(Pays pays, String continent){
        //Creation de la question et setting des paramètres
        Question res= new Question();
        res.setTitle(pays.getNom());
        res.setOptionCorrect(pays.getCapitale());

        //Récupération des 3 autres propositions possibles
        Session session = this.sessionFactory.getCurrentSession();
        String sql;
        if(continent.equalsIgnoreCase("monde")){
            sql=  String.format("SELECT Capitale from pays WHERE NOT (Code_alpha  = '%s') ORDER BY RAND() LIMIT 3;",pays.getCode_alpha());
        }else{
            sql=  String.format("SELECT Capitale from pays WHERE NOT (Code_alpha  = '%s') AND Continent='%s' ORDER BY RAND() LIMIT 3;",pays.getCode_alpha(),continent);

        }

        Query query= session.createQuery(sql);
        List<String> options_String =  query.list(); //???

        //Bonne réponse
        Option good_answer = new Option();
        good_answer.setOptionText(pays.getCapitale());

        //Ajout des propositions a la liste des propositions
        Set<Option> options =new HashSet<Option>();
        options.add(good_answer);
        for( String o : options_String) {
            Option opt = new Option();
            opt.setOptionText(o);
            options.add(opt);
        }
        res.setOptions(options);

        return res;
    }


}
