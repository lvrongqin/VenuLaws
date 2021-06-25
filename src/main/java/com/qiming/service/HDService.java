package com.qiming.service;

import com.qiming.domain.Hjl;
import com.qiming.domain.PageBean;

import java.util.List;

public interface HDService {
    int addHjl(Hjl hjl);
    List<Hjl> hjlAllByName(String username);
    PageBean getPageBean(int currentPage);
    List<Hjl> hjlAll();
    int addComment(Integer id,String reply);
}
