package com.qiming.service;

import com.qiming.dao.DTDao;
import com.qiming.domain.Djs;
import com.qiming.domain.Djx;
import com.qiming.domain.Dzx;
import com.qiming.domain.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DTServiceImpl implements DTService{
    @Autowired
    private DTDao dtDao;
    public PageBean getPageBean1(Integer currentPage) {
        //把当前页存入pageBean对象
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        //获取总页数存入pageBean对象
        int count = dtDao.djsGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        //将数据根据条件分页展示
        Integer index=(pb.getCurrentPage()-1)*pageCount;
        List<Djs> djs = dtDao.djsGetPageData(index, pageCount);
        pb.setDjs(djs);
        return pb;
    }

    public int addDjs(Djs djs) {
        return dtDao.addDjs(djs);
    }

    public List<Djs> djsAll() {
        return dtDao.djsAll();
    }

    public Djs djsFindById(Integer id) {
        return dtDao.djsFindById(id);
    }

    public PageBean getPageBean2(Integer currentPage) {
        //把当前页存入pageBean对象
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        //获取总页数存入pageBean对象
        int count = dtDao.djxGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        //将数据根据条件分页展示
        Integer index=(pb.getCurrentPage()-1)*pageCount;
        List<Djx> djx = dtDao.djxGetPageData(index, pageCount);
        pb.setDjx(djx);
        return pb;
    }

    public int addDjx(Djx djx) {
        return dtDao.addDjx(djx);
    }

    public List<Djx> djxAll() {
        return dtDao.djxAll();
    }

    public Djx djxFindById(Integer id) {
        return dtDao.djxFindById(id);
    }


    public PageBean getPageBean3(Integer currentPage) {
        //把当前页存入pageBean对象
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        //获取总页数存入pageBean对象
        int count = dtDao.dzxGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        //将数据根据条件分页展示
        Integer index=(pb.getCurrentPage()-1)*pageCount;
        List<Dzx> dzx = dtDao.dzxGetPageData(index, pageCount);
        pb.setDzx(dzx);
        return pb;
    }

    public int addDzx(Dzx dzx) {
        return dtDao.addDzx(dzx);
    }

    public List<Dzx> dzxAll() {
        return dtDao.dzxAll();
    }

    public Dzx dzxFindById(Integer id) {
        return dtDao.dzxFindById(id);
    }
}
