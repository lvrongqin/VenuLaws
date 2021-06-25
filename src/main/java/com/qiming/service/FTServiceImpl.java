package com.qiming.service;

import com.qiming.dao.FTDao;
import com.qiming.domain.Fqt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FTServiceImpl implements FTService{
    @Autowired
    private FTDao ftDao;
    public int addFqt(Fqt fqt) {
        return ftDao.addFqt(fqt);
    }

    public List<Fqt> fqtAll() {
        return ftDao.fqtAll();
    }
}
