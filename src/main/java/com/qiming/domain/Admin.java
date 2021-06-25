package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Admin {
    private Integer id;
    private String truename;
    private String card_id;
    private String username;
    private String password;

    public Admin(String truename, String card_id, String username, String password) {
        this.truename = truename;
        this.card_id = card_id;
        this.username = username;
        this.password = password;
    }

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }
}
