package com.qiming.service;

import com.qiming.domain.Djs;
import com.qiming.domain.Djx;
import com.qiming.domain.Dzx;
import com.qiming.domain.PageBean;

import java.util.List;

public interface DTService {
    PageBean getPageBean1(Integer currentPage);
    int addDjs(Djs djs);
    List<Djs> djsAll();
    Djs djsFindById(Integer id);

    PageBean getPageBean2(Integer currentPage);
    int addDjx(Djx djx);
    List<Djx> djxAll();
    Djx djxFindById(Integer id);

    PageBean getPageBean3(Integer currentPage);
    int addDzx(Dzx dzx);
    List<Dzx> dzxAll();
    Dzx dzxFindById(Integer id);
}
