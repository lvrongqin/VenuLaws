package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Wls {
    private Integer id;
    private String title;
    private String time;
    private String Content;

    public Wls(String title, String time, String content) {
        this.title = title;
        this.time = time;
        Content = content;
    }
}
