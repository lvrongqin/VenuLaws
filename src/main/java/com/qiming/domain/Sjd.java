package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Sjd {
    private Integer id;
    private String title;
    private String content;

    public Sjd(String title, String content) {
        this.title = title;
        this.content = content;
    }
}
