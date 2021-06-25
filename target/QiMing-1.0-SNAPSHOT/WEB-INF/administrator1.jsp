<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <link rel="stylesheet" href="http:////at.alicdn.com/t/font_2422366_l20hgby3l6.css">
    <title>后台管理页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/html/styles/administrator.css">
</head>

<body>
    <div class="bgMod"></div>
    <div id="container">
        <!-- <div id="header"> <img src="../image/2.png"><img src="../image/3.png"> -->
        <div id="header"> <img src="${pageContext.request.contextPath }/image/logo1.png">
            <div id="word1">启明普法教育平台管理页面</div>
            <div id="word2">管理员：${admin.username}</div>
        </div>
        <div class="wrapper ">
            <div class="leftMod">
                <ul>
                    <li class="wjgl_btn"><a href="${pageContext.request.contextPath }/administrator">文件管理</a></li>
                    <li><a href="${pageContext.request.contextPath }/administrator1"  class="active">文件上传</a></li>
                    <li><a href="${pageContext.request.contextPath }/hd/hjlAll">评论交流</a></li>
                </ul>
            </div>
            <div class="rightMod">
                <section id="wjsc" class="blank">
                    <form action="${pageContext.request.contextPath }/ft/upload" enctype="multipart/form-data" method="post">
                        <div class="wjsc_title">
                            启明倾听：请上传文件
                        </div>
                        <input type="file" name="file" id="file">
                        <input type="submit" align="center" value="提交">
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>

</html>