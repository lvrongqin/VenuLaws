package com.qiming.controller;

import com.qiming.domain.Sfx;
import com.qiming.domain.Sjd;
import com.qiming.service.SFService;
import com.qiming.utils.MessageConstant;
import com.qiming.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sf")
public class SFController {
    @Autowired
    private SFService sfService;
    @RequestMapping("/sfxAll")
    @ResponseBody
    public ResponseMessage sfxAll(HttpSession session){
        List<Sfx> sfxes = sfService.sfxAll();
        session.setAttribute("sfxes",sfxes);
        return new ResponseMessage(true,MessageConstant.DJX_SEARCH_SUCCESS,sfxes);
    }
    @RequestMapping("/sfxFindById")
    @ResponseBody
    public ResponseMessage sfxFindById(Integer id,HttpSession session){
        Sfx sfx = sfService.sfxFindById(id);
        session.setAttribute("sfx",sfx);
        return new ResponseMessage(true,MessageConstant.SFX_FIND_SUCCESS,sfx);
    }
    @RequestMapping("/sjdAll")
    @ResponseBody
    public ResponseMessage sjdAll(HttpSession session){
        List<Sjd> sjds = sfService.sjdAll();
        session.setAttribute("sjds",sjds);
        return new ResponseMessage(true, MessageConstant.SFX_SEARCH_SUCCESS,sjds);
    }
    @RequestMapping("/sjdFindById")
    @ResponseBody
    public ResponseMessage sjdFindById(Integer id,HttpSession session){
        Sjd sjd = sfService.sjdFindById(id);
        session.setAttribute("sjd",sjd);
        return new ResponseMessage(true,MessageConstant.SFX_FIND_SUCCESS,sjd);
    }
}
