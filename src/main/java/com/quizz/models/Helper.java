package com.quizz.models;
import com.google.gson.Gson;

public class Helper {
    private static Gson gson = new Gson();
    public static String toJsonConverter(Question question){
        return gson.toJson(question);
    }
}
