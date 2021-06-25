package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Sfx {
    private Integer id;
    private String title;
    private String content;

    public Sfx(String title, String content) {
        this.title = title;
        this.content = content;
    }
}
