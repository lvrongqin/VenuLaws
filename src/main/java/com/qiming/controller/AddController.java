package com.qiming.controller;
import com.qiming.domain.*;
import com.qiming.service.DTService;
import com.qiming.service.SFService;
import com.qiming.service.WHService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class AddController {
    @Autowired
    private DTService dtService;
    @Autowired
    private SFService sfService;
    @Autowired
    private WHService whService;
    @RequestMapping(value = "/selectBy")
    public String selectBy(HttpServletRequest request, String title, String content){
        String a="pfjxs";
        String b="tdnjs";
        String c="xnwzx";
        String d="yasfalfx";
        String e="yasffljd";
        String f="hqfz";
        String g="fzls";
        String h="mrmy";
        String i="xzs";
        String j="xfr";
        String k="xxxc";
        String category = request.getParameter("category");
        if (category.equals(a)){
            addDjx(title,content);
            return "success";
        }
        if (category.equals(b)){
            addDjs(title,content);
            return "success";
        }
        if (category.equals(c)){
            addDzx(title,content);
            return "success";
        }
        if (category.equals(d)){
            addSfx(title,content);
            return "success";
        }
        if (category.equals(e)){
            addSjd(title,content);
            return "success";
        }
        if (category.equals(f)){
            addWhq(title,content);
            return "success";
        }
        if (category.equals(g)){
            addWls(title,content);
            return "success";
        }
        if (category.equals(h)){
            addWmy(title,content);
            return "success";
        }
        if (category.equals(i)){
            addWzs(title,content);
            return "success";
        }
        if (category.equals(j)){
            addWxf(title,content);
            return "success";
        }
        if (category.equals(k)){
            addWxc(title,content);
            return "success";
        }
        return "error";
    }
    public void addDjs(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Djs djs=new Djs(title,format.format(date),content);
        dtService.addDjs(djs);
    }
    public void addDjx(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Djx djx=new Djx(title,format.format(date),content);
        dtService.addDjx(djx);
    }
    public void addDzx(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Dzx dzx=new Dzx(title,format.format(date),content);
        dtService.addDzx(dzx);
    }
    public void addSfx(String title,String content){
        Sfx sfx=new Sfx(title,content);
        sfService.addSfx(sfx);
    }
    public void addSjd(String title,String content){
        Sjd sjd=new Sjd(title,content);
        sfService.addSjd(sjd);
    }
    public void addWhq(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Whq whq=new Whq(title,format.format(date),content);
        whService.addWhq(whq);
    }
    public void addWmy(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Wmy wmy=new Wmy(title,format.format(date),content);
        whService.addWmy(wmy);
    }
    public void addWls(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Wls wls=new Wls(title,format.format(date),content);
        whService.addWls(wls);
    }
    public void addWzs(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Wzs wzs=new Wzs(title,format.format(date),content);
        whService.addWzs(wzs);
    }
    public void addWxf(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Wxf wxf=new Wxf(title,format.format(date),content);
        whService.addWxf(wxf);
    }
    public void addWxc(String title,String content){
        Date date=new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Wxc wxc=new Wxc(title,format.format(date),content);
        whService.addWxc(wxc);
    }
}
