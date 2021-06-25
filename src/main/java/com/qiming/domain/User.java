package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class User {
    private Integer id;
    private String truename;
    private String card_id;
    private String username;
    private String password;
    private String gender;
    private String birth;
    private String declar;
    private String img;

    public User(String truename, String card_id, String username, String password) {
        this.truename = truename;
        this.card_id = card_id;
        this.username = username;
        this.password = password;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String gender, String birth, String declar, String img) {
        this.username = username;
        this.gender = gender;
        this.birth = birth;
        this.declar = declar;
        this.img = img;
    }
}
