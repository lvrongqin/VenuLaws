package com.qiming.service;

import com.qiming.dao.HDDao;
import com.qiming.domain.Hjl;
import com.qiming.domain.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HDServiceImpl implements HDService {
    @Autowired
    private HDDao hDDao;
    public int addHjl(Hjl hjl) {
        return hDDao.addHjl(hjl);
    }

    public List<Hjl> hjlAllByName(String username) {
        return hDDao.hjlAllByName(username);
    }

    public PageBean getPageBean(int currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = hDDao.hjlGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        Integer index=(pb.getCurrentPage()-1)*pageCount;
        List<Hjl> hjls = hDDao.hjlGetPageData(index,pageCount);
        pb.setHjls(hjls);
        return pb;
    }

    public List<Hjl> hjlAll() {
        return hDDao.hjlAll();
    }

    public int addComment(Integer id, String reply) {
        return hDDao.addComment(id, reply);
    }

}
