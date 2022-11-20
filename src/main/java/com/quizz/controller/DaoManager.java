package com.quizz.controller;
import java.util.ArrayList;
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

    public List<Pays> sendRq(String rq){
        Session session = this.sessionFactory.getCurrentSession();
        Query<Pays> query= session.createQuery(rq);
        query.setMaxResults(3) ;
        return query.getResultList();
    }

    //Pays
    public Pays createPays(String name){
        Pays pays=new Pays();
        pays.setNom(name);

        Session session = this.sessionFactory.getCurrentSession();
        Query query= session.createQuery(String.format("From Pays where Nom  = '%s'",name));
        Pays p =(Pays) query.getResultList().get(0);
        pays.setCapitale(p.getCapitale());
        pays.setCode_alpha(p.getCode_alpha());
        pays.setContinent(p.getContinent());
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
            sql=  String.format("From Pays where NOT (Code_alpha  = '%s') ORDER BY RAND()",pays.getCode_alpha());
        }else{
            sql=  String.format("From Pays where NOT (Code_alpha  = '%s') AND Continent='%s' ORDER BY RAND()",pays.getCode_alpha(),continent);

        }

        Query query= session.createQuery(sql);
        query.setMaxResults(3); //
        List <Pays> autres_pays = query.getResultList();

        //Bonne réponse
        Option good_answer = new Option();
        good_answer.setOptionText(pays.getCapitale());

        //Ajout des propositions a la liste des propositions
        Set<Option> options =new HashSet<Option>();
        options.add(good_answer);
        for( Pays p : autres_pays) {
            Option opt = new Option();
            opt.setOptionText(p.getCapitale());
            options.add(opt);
        }
        res.setOptions(options);

        return res;
    }


}
