package com.company;

public class User {
    private String username;
    private String userpass;
    private String name;
    private double weight;

    public User() {
        username = "Sekoku";
        userpass = "123";
        name = "Serikzhan";
        weight = 65;
    }

    public String getUsername() {
        return username;
    }
    public String getPass() { return userpass; }
    public String getName() { return name; }
    public double getWeight() { return weight; }

    public void setWeight(double kg) {
        this.weight = kg;
    }

    public void incWeight(double kg) {
        this.weight+=kg;
    }

    public void decWeight(double kg) {
        this.weight-=kg;
    }

    public void chWeight(double kg) {
        if(kg <= 0) {
            decWeight( (-1*kg) );
        } else {
            incWeight(kg);
        }
    }

}
