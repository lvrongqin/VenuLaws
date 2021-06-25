package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Wmy {
    private Integer id;
    private String title;
    private String time;
    private String Content;

    public Wmy(String title, String time, String content) {
        this.title = title;
        this.time = time;
        Content = content;
    }
}
