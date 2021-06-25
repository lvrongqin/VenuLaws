package com.qiming.domain;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Fqt {
    private Integer id;
    private String filename;
    private String url;

    public Fqt(String filename, String url) {
        this.filename = filename;
        this.url = url;
    }
}
