package com.qiming.service;

import com.qiming.domain.Sfx;
import com.qiming.domain.Sjd;

import java.util.List;

public interface SFService {
    int addSfx(Sfx sfx);
    List<Sfx> sfxAll();
    Sfx sfxFindById(Integer id);

    int addSjd(Sjd sjd);
    List<Sjd> sjdAll();
    Sjd sjdFindById(Integer id);
}
