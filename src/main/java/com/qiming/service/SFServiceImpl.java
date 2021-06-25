package com.qiming.service;

import com.qiming.dao.SFDao;
import com.qiming.domain.Sfx;
import com.qiming.domain.Sjd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SFServiceImpl implements SFService{
    @Autowired
    private SFDao sfDao;
    public int addSfx(Sfx sfx) {
        return sfDao.addSfx(sfx);
    }

    public List<Sfx> sfxAll() {
        return sfDao.sfxAll();
    }

    public Sfx sfxFindById(Integer id) {
        return sfDao.sfxFindById(id);
    }

    public int addSjd(Sjd sjd) {
        return sfDao.addSjd(sjd);
    }

    public List<Sjd> sjdAll() {
        return sfDao.sjdAll();
    }

    public Sjd sjdFindById(Integer id) {
        return sfDao.sjdFindById(id);
    }
}
