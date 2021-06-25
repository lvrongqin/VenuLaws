package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Wzs {
    private Integer id;
    private String title;
    private String time;
    private String Content;

    public Wzs(String title, String time, String content) {
        this.title = title;
        this.time = time;
        Content = content;
    }
}
