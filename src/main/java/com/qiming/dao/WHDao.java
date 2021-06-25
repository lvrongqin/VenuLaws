package com.qiming.dao;

import com.qiming.domain.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WHDao {
    int addWhq(Whq whq);
    List<Whq> whqAll();
    int whqGetCount();
    List<Whq> whqGetPageData(@Param("index") Integer index, Integer pageCount);
    Whq whqFindById(Integer id);

    int addWls(Wls wls);
    List<Wls> wlsAll();
    int wlsGetCount();
    List<Wls> wlsGetPageData(@Param("index") Integer index, Integer pageCount);
    Wls wlsFindById(Integer id);

    int addWmy(Wmy wmy);
    List<Wmy> wmyAll();
    int wmyGetCount();
    List<Wmy> wmyGetPageData(@Param("index") Integer index, Integer pageCount);
    Wmy wmyFindById(Integer id);

    int addWzs(Wzs wzs);
    List<Wzs> wzsAll();
    int wzsGetCount();
    List<Wzs> wzsGetPageData(@Param("index") Integer index, Integer pageCount);
    Wzs wzsFindById(Integer id);

    int addWxf(Wxf wxf);
    List<Wxf> wxfAll();
    int wxfGetCount();
    List<Wxf> wxfGetPageData(@Param("index") Integer index, Integer pageCount);
    Wxf wxfFindById(Integer id);

    int addWxc(Wxc wxc);
    List<Wxc> wxcAll();
    int wxcGetCount();
    List<Wxc> wxcGetPageData(@Param("index") Integer index, Integer pageCount);
    Wxc wxcFindById(Integer id);
}
