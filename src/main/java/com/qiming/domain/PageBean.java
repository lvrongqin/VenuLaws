package com.qiming.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageBean {
    private Integer currentPage;
    private Integer totalPage;
    private List<Djs> djs;
    private List<Djx> djx;
    private List<Dzx> dzx;
    private List<Hjl> hjls;
    public PageBean(Integer currentPage, Integer totalPage) {
        this.currentPage = currentPage;
        this.totalPage = totalPage;
    }
}
