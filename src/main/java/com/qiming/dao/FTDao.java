package com.qiming.dao;

import com.qiming.domain.Fqt;

import java.util.List;

public interface FTDao {
    int addFqt(Fqt fqt);
    List<Fqt> fqtAll();
}
