package com.qiming.controller;
import com.qiming.domain.*;
import com.qiming.service.WHService;
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
@RequestMapping("/wh")
public class WHController {
    @Autowired
    private WHService whService;
    @RequestMapping("/whqGetPageData")
    @ResponseBody
    public ResponseMessage whqGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Whq> whqs = whService.whqAll();
        session.setAttribute("whqs",whqs);
        PageBean pb = whService.getPageBean1(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WHQ_SEARCH_SUCCESS,whqs,pb);
    }
    @RequestMapping("/whqGetPageData1")
    @ResponseBody
    public ResponseMessage whqGetPageData1(HttpSession session) {
        List<Whq> whqq = whService.whqAll();
        return new ResponseMessage(true, MessageConstant.WHQ_SEARCH_SUCCESS,whqq);
    }

    @RequestMapping(value = "/whqFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage whqFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Whq whq = whService.whqFindById(i);
        session.setAttribute("whq", whq);
        if (whq != null) {
            return new ResponseMessage(true, MessageConstant.WHQ_FIND_SUCCESS, whq);
        } else {
            return new ResponseMessage(false, MessageConstant.WHQ_FIND_FAIL);
        }
    }

    @RequestMapping("/wlsGetPageData")
    @ResponseBody
    public ResponseMessage wlsGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Wls> wlss = whService.wlsAll();
        PageBean pb = whService.getPageBean2(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WLS_SEARCH_SUCCESS,wlss,pb);
    }

    @RequestMapping(value = "/wlsFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage wlsFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Wls wls = whService.wlsFindById(i);
        session.setAttribute("wls", wls);
        if (wls != null) {
            return new ResponseMessage(true, MessageConstant.WLS_FIND_SUCCESS, wls);
        } else {
            return new ResponseMessage(false, MessageConstant.WLS_FIND_FAIL);
        }
    }

    @RequestMapping("/wmyGetPageData")
    @ResponseBody
    public ResponseMessage wmyGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Wmy> wmys = whService.wmyAll();
        PageBean pb = whService.getPageBean3(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WMY_SEARCH_SUCCESS,wmys,pb);
    }

    @RequestMapping(value = "/wmyFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage wmyFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Wmy wmy = whService.wmyFindById(i);
        session.setAttribute("wmy", wmy);
        if (wmy != null) {
            return new ResponseMessage(true, MessageConstant.WMY_FIND_SUCCESS, wmy);
        } else {
            return new ResponseMessage(false, MessageConstant.WMY_FIND_FAIL);
        }
    }

    @RequestMapping("/wzsGetPageData")
    @ResponseBody
    public ResponseMessage wzsGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Wzs> wzss = whService.wzsAll();
        PageBean pb = whService.getPageBean4(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WZS_SEARCH_SUCCESS,wzss,pb);
    }

    @RequestMapping(value = "/wzsFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage wzsFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Wzs wzs = whService.wzsFindById(i);
        session.setAttribute("wzs", wzs);
        if (wzs != null) {
            return new ResponseMessage(true, MessageConstant.WZS_FIND_SUCCESS, wzs);
        } else {
            return new ResponseMessage(false, MessageConstant.WZS_FIND_FAIL);
        }
    }

    @RequestMapping("/wxfGetPageData")
    @ResponseBody
    public ResponseMessage wxfGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Wxf> wxfs = whService.wxfAll();
        PageBean pb = whService.getPageBean5(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WXF_SEARCH_SUCCESS,wxfs,pb);
    }

    @RequestMapping(value = "/wxfFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage wxfFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Wxf wxf = whService.wxfFindById(i);
        session.setAttribute("wxf", wxf);
        if (wxf != null) {
            return new ResponseMessage(true, MessageConstant.WXF_FIND_SUCCESS, wxf);
        } else {
            return new ResponseMessage(false, MessageConstant.WXF_FIND_FAIL);
        }
    }

    @RequestMapping("/wxcGetPageData")
    @ResponseBody
    public ResponseMessage wxcGetPageData(String curr, HttpSession session) {
        int currentPage = Integer.parseInt(curr);
        List<Wxc> wxcs = whService.wxcAll();
        System.out.println("wxcs: "+wxcs);
        PageBean pb = whService.getPageBean6(currentPage);
        session.setAttribute("pb", pb);
        return new ResponseMessage(true, MessageConstant.WXC_SEARCH_SUCCESS,wxcs,pb);
    }
    @RequestMapping("/wxcGetPageData1")
    @ResponseBody
    public ResponseMessage wxcGetPageData1(HttpSession session) {
        List<Wxc> wxcc = whService.wxcAll();
        return new ResponseMessage(true, MessageConstant.WXC_SEARCH_SUCCESS,wxcc);
    }

    @RequestMapping(value = "/wxcFindById", method = RequestMethod.GET)
    @ResponseBody
    public ResponseMessage wxcFindById(@RequestParam("id") String id, HttpSession session) {
        int i = Integer.parseInt(id);
        Wxc wxc = whService.wxcFindById(i);
        session.setAttribute("wxc", wxc);
        if (wxc != null) {
            return new ResponseMessage(true, MessageConstant.WXC_FIND_SUCCESS, wxc);
        } else {
            return new ResponseMessage(false, MessageConstant.WXC_FIND_FAIL);
        }
    }
}
