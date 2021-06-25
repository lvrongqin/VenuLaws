package com.qiming.service;

import com.qiming.dao.WHDao;
import com.qiming.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WHServiceImpl implements WHService{
    @Autowired
    private WHDao whDao;
    public PageBean getPageBean1(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.whqGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWhq(Whq whq) {
        return whDao.addWhq(whq);
    }

    public List<Whq> whqAll() {
        return whDao.whqAll();
    }

    public Whq whqFindById(Integer id) {
        return whDao.whqFindById(id);
    }

    public PageBean getPageBean2(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.wlsGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWls(Wls wls) {
        return whDao.addWls(wls);
    }

    public List<Wls> wlsAll() {
        return whDao.wlsAll();
    }

    public Wls wlsFindById(Integer id) {
        return whDao.wlsFindById(id);
    }

    public PageBean getPageBean3(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.wmyGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWmy(Wmy wmy) {
        return whDao.addWmy(wmy);
    }

    public List<Wmy> wmyAll() {
        return whDao.wmyAll();
    }

    public Wmy wmyFindById(Integer id) {
        return whDao.wmyFindById(id);
    }

    public PageBean getPageBean4(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.wzsGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWzs(Wzs wzs) {
        return whDao.addWzs(wzs);
    }

    public List<Wzs> wzsAll() {
        return whDao.wzsAll();
    }

    public Wzs wzsFindById(Integer id) {
        return whDao.wzsFindById(id);
    }

    public PageBean getPageBean5(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.wxfGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWxf(Wxf wxf) {
        return whDao.addWxf(wxf);
    }

    public List<Wxf> wxfAll() {
        return whDao.wxfAll();
    }

    public Wxf wxfFindById(Integer id) {
        return whDao.wxfFindById(id);
    }

    public PageBean getPageBean6(Integer currentPage) {
        PageBean pb=new PageBean();
        pb.setCurrentPage(currentPage);
        int count = whDao.wxcGetCount();
        int pageCount=5;
        double total = Math.ceil(1.0 * count / pageCount);
        int pageTotal=(int) total;
        pb.setTotalPage(pageTotal);
        return pb;
    }

    public int addWxc(Wxc wxc) {
        return whDao.addWxc(wxc);
    }

    public List<Wxc> wxcAll() {
        return whDao.wxcAll();
    }

    public Wxc wxcFindById(Integer id) {
        return whDao.wxcFindById(id);
    }
}
