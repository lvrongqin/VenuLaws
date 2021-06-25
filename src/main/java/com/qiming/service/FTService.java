package com.qiming.service;

import com.qiming.domain.Fqt;

import java.util.List;

public interface FTService {
    int addFqt(Fqt fqt);
    List<Fqt> fqtAll();
}
