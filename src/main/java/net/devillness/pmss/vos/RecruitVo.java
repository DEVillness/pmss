package net.devillness.pmss.vos;

import net.devillness.pmss.entities.OperatorEntity;

import java.util.ArrayList;
import java.util.HashMap;

public class RecruitVo {
    private String position;
    private String place;
    private String rank;
    private String tag;
    private HashMap<ArrayList<String>, OperatorEntity[]> operators = new HashMap<>();

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public HashMap<ArrayList<String>, OperatorEntity[]> getOperators() {
        return operators;
    }

    public void setOperators(HashMap<ArrayList<String>, OperatorEntity[]> operators) {
        this.operators = operators;
    }

    public void appendOperators(ArrayList<String> tagArray, OperatorEntity[] operators) {
        this.operators.put(tagArray, operators);
    }
}