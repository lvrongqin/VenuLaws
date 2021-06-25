package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Djx {
    private Integer id;
    private String title;
    private String time;
    private String content;

    public Djx(String title, String time, String content) {
        this.title = title;
        this.time = time;
        this.content = content;
    }
}
