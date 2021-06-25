package com.qiming.utils;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class SendEmail {
    public static void send(String title,String content){
        //创建一个Properties对象
        Properties pro=new Properties();
        //设置主机
        pro.setProperty("mail.host","smtp.qq.com");
        //设置传输协议
        pro.setProperty("mail.transport.protocol","smtp");
        //设置允许邮箱授权认证
        pro.setProperty("mail.smtp.auth","true");
        //创建认证器类对象
        Auth auth = new Auth();
        Session session=Session.getDefaultInstance(pro,auth);
        try {
            Transport ts = session.getTransport();
            ts.connect("smtp.qq.com", "1066596230@qq.com", "dlhjogwcixfzbcja");
            //创建邮件对象
            MimeMessage message = new MimeMessage(session);
            //设置发件地址
            message.setFrom(new InternetAddress("1066596230@qq.com"));
            //设置收件人地址
            message.setRecipient(Message.RecipientType.TO,new InternetAddress("1016327756@qq.com"));
            //设置邮件标题
            message.setSubject(title);
            //设置邮件内容
            message.setContent(content,"text/html;charset=utf-8");
            ts.sendMessage(message,message.getAllRecipients());
            ts.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
