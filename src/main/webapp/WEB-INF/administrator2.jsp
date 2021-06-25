<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="shortcut icon"
          href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico"
          type="image/x-icon"/>
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <link rel="stylesheet" href="http:////at.alicdn.com/t/font_2422366_l20hgby3l6.css">

    <title>后台管理页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/html/styles/administrator.css">
    <style>
        .rightMod {
            padding: 0;
            border: none;
        }

        .paging {
            display: inline-block;
            margin-top: 20px;
            border-radius: 5px;
        }

        .paging a span {
            display: inline-block;
            padding: 5px 10px;
            border: 1px #94070a solid;
            color: #94070a;
            text-align: center;
        }

        .pageLeft:hover,
        .pageRight:hover {
            background-color: #da9500;
            color: #fff !important;
        }
    </style>

<body>
<div class="bgMod"></div>
<div id="container">
    <!-- <div id="header"> <img src="../image/2.png"><img src="../image/3.png"> -->
    <div id="header"><img src="${pageContext.request.contextPath }/image/logo1.png">
        <div id="word1">启明普法教育平台管理页面</div>
        <div id="word2">管理员：${admin.username}</div>
    </div>
    <div class="wrapper ">
        <div class="leftMod">
            <ul>
                <li class="wjgl_btn"><a href="${pageContext.request.contextPath }/administrator">文件管理</a></li>
                <li><a href="${pageContext.request.contextPath }/administrator1">文件上传</a></li>
                <li><a href="${pageContext.request.contextPath }/hd/hjlAll" class="active">评论交流</a></li>
            </ul>
        </div>
        <div class="rightMod">
            <section id="plgl">
                <ul class="plglSort clearfix">
                    <li class="userName">用户名</li>
                    <li class="time">时间</li>
                    <li class="title">标题</li>
                    <li class="comment">评论</li>
                    <li class="refer">回复</li>
                </ul>
                <div class="msgWrapper">
                    <c:forEach items="${pb.hjls}" var="j">
                        <ul class="plgldemo clearfix">
                            <li class="userName">${j.username}</li>
                            <li class="time">${j.time}</li>
                            <li class="title">${j.title}</li>
                            <li class="comment">${j.content}</li>
                            <li class="refer">
                                <a href="javascript:;">
                                    <span id="${j.id}">回复</span>
                                </a>
                            </li>
                        </ul>
                        <div class="referBox" id="referBox_${j.id}">
                            <form action="${pageContext.request.contextPath}/hd/addComment">
                                <input type="hidden" class="id" name="id" value="${j.id}">
                                <div class="txtTitle">请输入回复内容：</div>
                                <div class="referTxt">
                                    <textarea name="reply" id="" cols="30" rows="10"></textarea>
                                </div>
                                <span class="closeBtn">X</span>
                                <div><input type="submit" value="确认提交" style="background-color: #94070a; color: #fff;padding: 5px;">
                                </div>
                            </form>
                        </div>
                    </c:forEach>

                    <div style="text-align: center;">
                        <div class="paging">
                            <%--<a href="${pageContext.request.contextPath }/hd/hjlAll?curr=${pb.currentPage==1?1:pb.currentPage-1}"><span
                                    class="pageLeft">&lt;</span></a><span>
                                    <a href="${pageContext.request.contextPath }/hd/hjlAll?curr=1"><span class="active1">1</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=2"><span>2</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=3"><span>3</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=4"><span>4</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=5"><span>5</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=6"><span>6</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=7"><span>7</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=8"><span>8</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=9"><span>9</span></a><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=10"><span>10</span></a></span><a
                                href="${pageContext.request.contextPath }/hd/hjlAll?curr=${pb.currentPage+1}"><span
                                class="pageRight">&gt;</span></a>--%>
                                <a href="${pageContext.request.contextPath }/hd/hjlAll?curr=${pb.currentPage==1?1:pb.currentPage-1}"><span
                                        class="pageLeft">&lt;</span></a>
                                <span>
                                 <c:forEach begin="1" end="${pb.totalPage}" var="i">
                                     <c:if test="${pb.currentPage==i}">
                                         <a href="${pageContext.request.contextPath }/hd/hjlAll?curr=${i}"><span class="active1">${i}</span></a>
                                     </c:if>
                                     <c:if test="${pb.currentPage!=i}">
                                         <a href="${pageContext.request.contextPath }/hd/hjlAll?curr=${i}"><span>${i}</span></a>
                                     </c:if>
                                 </c:forEach>
                            </span>
                                <a href="${pageContext.request.contextPath }/hd/hjlAll?curr=${pb.currentPage+1}"><span
                                        class="pageRight">&gt;</span></a>
                        </div>
                    </div>
                </div>

            </section>
        </div>

        <script>
            $(function () {
                //点击回复弹出输入框
                $('.refer span').click(function () {
                    var bgHeight = document.documentElement.clientHeight || document.body.clientHeight;
                    $('.bgMod').css('height', bgHeight);
                    $('body').css('overflowY', 'hidden');
                    let referBox_id='referBox_'+$(this).attr('id');
                    $('#'+referBox_id).css('display','block');
                })
                $('.closeBtn').click(function () {
                    $('.bgMod').css('height', '0');
                    $('body').css('overflowY', 'auto');
                    $('.referBox').css('display', 'none');
                })
            })
        </script>
    </div>
</div>
</body>

</html>