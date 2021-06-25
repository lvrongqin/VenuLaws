package com.qiming.service;

import com.qiming.domain.*;

import java.util.List;

public interface WHService {
    PageBean getPageBean1(Integer currentPage);
    int addWhq(Whq whq);
    List<Whq> whqAll();
    Whq whqFindById(Integer id);

    PageBean getPageBean2(Integer currentPage);
    int addWls(Wls wls);
    List<Wls> wlsAll();
    Wls wlsFindById(Integer id);

    PageBean getPageBean3(Integer currentPage);
    int addWmy(Wmy wmy);
    List<Wmy> wmyAll();
    Wmy wmyFindById(Integer id);

    PageBean getPageBean4(Integer currentPage);
    int addWzs(Wzs wzs);
    List<Wzs> wzsAll();
    Wzs wzsFindById(Integer id);

    PageBean getPageBean5(Integer currentPage);
    int addWxf(Wxf wxf);
    List<Wxf> wxfAll();
    Wxf wxfFindById(Integer id);

    PageBean getPageBean6(Integer currentPage);
    int addWxc(Wxc wxc);
    List<Wxc> wxcAll();
    Wxc wxcFindById(Integer id);
}
