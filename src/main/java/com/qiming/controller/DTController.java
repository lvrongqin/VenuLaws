package com.qiming.controller;
import com.qiming.domain.Djs;
import com.qiming.domain.Djx;
import com.qiming.domain.Dzx;
import com.qiming.domain.PageBean;
import com.qiming.service.DTService;
import com.qiming.utils.MessageConstant;
import com.qiming.utils.ResponseMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/dt")
public class DTController {
    @Autowired
    private DTService dtService;

    @RequestMapping("/djsGetPageData")
    @ResponseBody
    public ResponseMessage djsGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Djs> djss = dtService.djsAll();
        session.setAttribute("djss",djss);
        PageBean pb = dtService.getPageBean1(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.DJX_SEARCH_SUCCESS,djss,pb);
    }
    @RequestMapping("/djsGetPageData1")
    @ResponseBody
    public ResponseMessage djsGetPageData1(HttpSession session) {
        List<Djs> djss = dtService.djsAll();
        return new ResponseMessage(true, MessageConstant.DJX_SEARCH_SUCCESS,djss);
    }

    @RequestMapping(value = "/djsFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage djsFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Djs djs = dtService.djsFindById(i);
        session.setAttribute("djs", djs);
        if (djs != null) {
            return new ResponseMessage(true, MessageConstant.DJS_FIND_SUCCESS, djs);
        } else {
            return new ResponseMessage(false, MessageConstant.DJS_FIND_FAIL);
        }
    }

    @RequestMapping("/djxGetPageData")
    @ResponseBody
    public ResponseMessage djxGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Djx> djxx = dtService.djxAll();
        PageBean pb = dtService.getPageBean2(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.DJX_SEARCH_SUCCESS,djxx,pb);
    }
    @RequestMapping("/djxGetPageData1")
    @ResponseBody
    public ResponseMessage djxGetPageData1(HttpSession session) {
        List<Djx> djxx = dtService.djxAll();
        return new ResponseMessage(true, MessageConstant.DJX_SEARCH_SUCCESS,djxx);
    }

    @RequestMapping(value = "/djxFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage djxFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Djx djx = dtService.djxFindById(i);
        session.setAttribute("djx", djx);
        if (djx != null) {
            return new ResponseMessage(true, MessageConstant.DJX_FIND_SUCCESS, djx);
        } else {
            return new ResponseMessage(false, MessageConstant.DJX_FIND_FAIL);
        }
    }
    @RequestMapping("/dzxGetPageData")
    @ResponseBody
    public ResponseMessage dzxGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Dzx> dzxx = dtService.dzxAll();
        session.setAttribute("dzxx",dzxx);
        PageBean pb = dtService.getPageBean3(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.DZX_SEARCH_SUCCESS,dzxx,pb);
    }
    @RequestMapping("/dzxGetPageData1")
    @ResponseBody
    public ResponseMessage dzxGetPageData1(HttpSession session) {
        List<Dzx> dzxx = dtService.dzxAll();
        return new ResponseMessage(true, MessageConstant.DZX_SEARCH_SUCCESS,dzxx);
    }

    @RequestMapping(value = "/dzxFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage dzxFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Dzx dzx = dtService.dzxFindById(i);
        session.setAttribute("dzx", dzx);
        if (dzx != null) {
            return new ResponseMessage(true, MessageConstant.DZX_FIND_SUCCESS, dzx);
        } else {
            return new ResponseMessage(false, MessageConstant.DZX_FIND_FAIL);
        }
    }
}
