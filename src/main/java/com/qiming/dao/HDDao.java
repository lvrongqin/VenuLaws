package com.qiming.dao;

import com.qiming.domain.Hjl;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HDDao {
    int addHjl(Hjl hjl);
    List<Hjl> hjlAllByName(String username);
    int hjlGetCount();
    List<Hjl> hjlAll();
    List<Hjl> hjlGetPageData(@Param("index")int index,int pageCount);
    int addComment(@Param("id")Integer id,@Param("reply")String reply);
}
