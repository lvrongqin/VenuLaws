package com.qiming.controller;
import com.qiming.domain.Hjl;
import com.qiming.domain.PageBean;
import com.qiming.domain.User;
import com.qiming.service.HDService;
import com.qiming.utils.OssUtils;
import com.qiming.utils.XmlUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/hd")
public class HDController {
    String url;
    @Autowired
    private HDService hDService;
    //上传图片
    @RequestMapping("/imgUpload")
    @ResponseBody
    public void upload(@RequestParam("file") MultipartFile file)throws Exception{
        String bucketName = "venu";
        String endpoint="http://oss-cn-beijing.aliyuncs.com";
        String fileAllName = file.getOriginalFilename();
        String fileType = fileAllName.substring(fileAllName.lastIndexOf(".") + 1);
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        String filePath = fileAllName + "/" +uuid +"."+fileType;
        url=endpoint.replaceFirst("http://","http://"+bucketName +".")+"/"+filePath;
        String contentType = OssUtils.getContentType(fileAllName);
        //保存本地
        File file1=null;
        try {
            file1= XmlUtil.ossUpload(file);
            //上传oss
            OssUtils.ossUpload(filePath, file1,contentType);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("上传失败");
        }
        //删除本地文件
        XmlUtil.deleteFile(file1);
        System.out.println("url: "+url);
    }
    //交流发表
    @RequestMapping("/addHjl")
    public String addHjl(String title,String content,HttpSession session){
        String title1="#"+title;
        Date date=new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        User user1 = (User)session.getAttribute("user1");
        Hjl hjl = new Hjl(user1.getUsername(),title1, content, dateFormat.format(date), user1.getImg());
        hDService.addHjl(hjl);
        System.out.println(hjl.toString());
        return "HuDongJiaoLiu";
    }
    //前端评论分页展示
    @RequestMapping("/hjlPageData")
    public String hjlPageData(String curr,HttpSession session){
        if (curr==null){
            curr="1";
        }
        int currentPage = Integer.parseInt(curr);
        PageBean pb= hDService.getPageBean(currentPage);
        session.setAttribute("pb",pb);
        List<Hjl> hjls = hDService.hjlAll();
        System.out.println(hjls);
        session.setAttribute("hjls",hjls);
        return "HuDongJiaoLiu";
    }
    //后台评论展示
    @RequestMapping("/hjlAll")
    public String hjlAll(String curr,HttpSession session){
        if (curr==null){
            curr="1";
        }
        int currentPage = Integer.parseInt(curr);
        PageBean pb= hDService.getPageBean(currentPage);
        session.setAttribute("pb",pb);
        List<Hjl> hjls = hDService.hjlAll();
        System.out.println(hjls);
        session.setAttribute("hjls",hjls);
        return "administrator2";
    }
    //个人发帖
    @RequestMapping("/hjlSearch")
    public String hjlSearch(HttpSession session){
        User user1 = (User)session.getAttribute("user1");
        List<Hjl> hjlss = hDService.hjlAllByName(user1.getUsername());
        session.setAttribute("hjlss",hjlss);
        return "WoDeFaTie";
    }
    //管理员回复
    @RequestMapping("/addComment")
    public String addComment(@Param("id") Integer id, @Param("reply") String reply){
        int i = hDService.addComment(id, reply);
        return "administrator2";
    }
}
