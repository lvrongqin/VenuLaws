package com.qiming.dao;

import com.qiming.domain.Djs;
import com.qiming.domain.Djx;
import com.qiming.domain.Dzx;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DTDao {
    int addDjs(Djs djs);
    List<Djs> djsAll();
    int djsGetCount();
    List<Djs> djsGetPageData(@Param("index") Integer index,Integer pageCount);
    Djs djsFindById(Integer id);

    int addDjx(Djx djx);
    List<Djx> djxAll();
    int djxGetCount();
    List<Djx> djxGetPageData(@Param("index") Integer index,Integer pageCount);
    Djx djxFindById(Integer id);

    int addDzx(Dzx dzx);
    List<Dzx> dzxAll();
    int dzxGetCount();
    List<Dzx> dzxGetPageData(@Param("index") Integer index,Integer pageCount);
    Dzx dzxFindById(Integer id);
}
