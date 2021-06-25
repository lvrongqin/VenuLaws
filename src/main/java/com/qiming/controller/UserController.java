package com.qiming.controller;

import com.qiming.domain.Admin;
import com.qiming.domain.Result;
import com.qiming.domain.User;
import com.qiming.service.UserService;
import com.qiming.utils.MessageConstant;
import com.qiming.utils.OssUtils;
import com.qiming.utils.ResponseMessage;
import com.qiming.utils.XmlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.UUID;

@Controller
public class UserController {
    String url=null;
    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session){
        User user=new User(username,password);
        User user1 = userService.login(user);
        session.setAttribute("user1",user1);
        if (user1!=null){
            return "index";
        }else {
            return "denglu";
        }

    }
    @RequestMapping("/register")
    public String register(String truename,String card_id,String username,String password){
        User u=new User(truename,card_id,username,password);
        userService.register(u);
        return "denglu";
    }
    @RequestMapping("/alogin")
    public String alogin(String username,String password,HttpSession session){
        Admin a=new Admin(username,password);
        Admin admin = userService.alogin(a);
        session.setAttribute("admin",admin);
        if (admin!=null){
            return "administrator";
        }else {
            return "denglu";
        }

    }
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
    }
    //修改用户个人信息
    @RequestMapping("/updateUser")
    @ResponseBody
    public ResponseMessage updateUser(String username, String gender, String birth, String declar,HttpSession session){
        //System.out.println("获取到的birth为:"+birth);
        String img=url;
        User Uuser=new User(username,gender,birth,declar,img);
        System.out.println("更新后的用户信息："+Uuser.toString());
        userService.updateUser(username,Uuser);
        session.setAttribute("Uuser",Uuser);
        return new ResponseMessage(true,MessageConstant.DJX_SEARCH_SUCCESS);
    }
    @RequestMapping("/upload")
    @ResponseBody
    public Result upload1(@RequestParam("file") MultipartFile file)throws Exception{
        String bucketName = "venu";
        String endpoint="http://oss-cn-beijing.aliyuncs.com";
        String fileAllName = file.getOriginalFilename();
        String fileType = fileAllName.substring(fileAllName.lastIndexOf(".") + 1);
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        String filePath = fileAllName + "/" +uuid +"."+fileType;
        String url=endpoint.replaceFirst("http://","http://"+bucketName +".")+"/"+filePath;
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
        return new Result(true,url,MessageConstant.IMG_UPLOAD_SUCCESS);
    }
}
