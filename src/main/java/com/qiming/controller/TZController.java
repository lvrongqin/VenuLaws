package com.qiming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TZController {
    @RequestMapping("WoDeXinXi")
    public String WoDe(){
        return "WoDeXinXi";
    }
    @RequestMapping("index")
    public String Index(){
        return "index";
    }

    @RequestMapping("FLZXXinWenDongTai")
    public String FLZXXinWenDongTai(){
        return "FLZXXinWenDongTai";
    }
    @RequestMapping("YiAnShiFa")
    public String YiAnShiFa(){
        return "YiAnShiFa";
    }
    @RequestMapping("PFJYFaZhiWenHua")
    public String PFJYFaZhiWenHua(){
        return "PFJYFaZhiWenHua";
    }
    @RequestMapping("TSHDMoNiFaTing")
    public String TSHDMoNiFaTing(){
        return "TSHDMoNiFaTing";
    }
    @RequestMapping("WoYaoBaoMing")
    public String WoYaoBaoMing(){
        return "WoYaoBaoMing";
    }


    @RequestMapping("GuanYuWoMen")
    public String GuanYuWoMen(){
        return "GuanYuWoMen";
    }
    @RequestMapping("administrator")
    public String administrator(){
        return "administrator";
    }
    @RequestMapping("administrator1")
    public String administrator1(){
        return "administrator1";
    }
    @RequestMapping("/XiuGaiZiLiao")
    public String XiuGaiZiLiao(){
        return "XiuGaiZiLiao";
    }
    @RequestMapping("/djsFindById")
    public String djsFindById(){
        return "djsFindById";
    }
    @RequestMapping("/djxFindById")
    public String djxFindById(){
        return "djxFindById";
    }
    @RequestMapping("/dzxFindById")
    public String dzxFindById(){
        return "dzxFindById";
    }
    @RequestMapping("/whqFindById")
    public String whqFindById(){
        return "whqFindById";
    }
    @RequestMapping("/wlsFindById")
    public String wlsFindById(){
        return "wlsFindById";
    }
    @RequestMapping("/wmyFindById")
    public String wmyFindById(){
        return "wmyFindById";
    }
    @RequestMapping("/wxcFindById")
    public String wxcFindById(){
        return "wxcFindById";
    }
    @RequestMapping("/wxfFindById")
    public String wxfFindById(){
        return "wxfFindById";
    }
    @RequestMapping("/wzsFindById")
    public String wzsFindById(){
        return "wzsFindById";
    }
    @RequestMapping("/sfxFindById")
    public String sfxFindById(){
        return "sfxFindById";
    }
    @RequestMapping("/sjdFindById")
    public String sjdFindById(){
        return "sjdFindById";
    }

}
