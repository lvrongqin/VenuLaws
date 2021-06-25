package com.qiming.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Result {
    private boolean success;
    private String file_path;
    private String msg;

}
