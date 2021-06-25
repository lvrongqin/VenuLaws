package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Hjl {
    private Integer id;
    private String username;
    private String title;
    private String content;
    private String time;
    private String reply;
    private String img;

    public Hjl(String username,String title, String content, String time,String img) {
        this.username=username;
        this.title = title;
        this.content = content;
        this.time = time;
        this.img=img;
    }
}
