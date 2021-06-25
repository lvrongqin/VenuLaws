<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="shortcut icon"
          href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico"
          type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/HuDongJiaoLiu1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
    <title>启明普法教育平台-互动交流</title>
    <style>
        .main ul {
            padding: 0;
            margin: 0;
            margin: 0 auto;
        }

        .main ul li {
            margin: 0;
            margin-bottom: 20px;
        }

        .personMsg {
            padding-bottom: 5px;
            margin-bottom: 15px;
            border-bottom: 1px solid #fff;
        }

        .personMsg > div {
            float: left;
        }

        .personMsg .photo {
            width: 30px;
            height: 30px;
            margin-right: 10px;
            border-radius: 50%;
            overflow: hidden;
            box-shadow: 5px 2px 5px rgba(0, 0, 0, .2);
        }

        .personMsg .photo img {
            width: 30px;
            transform: scale(1.5);
        }

        .personMsg .Uname {
            margin-top: 10px;
        }

        .personMsg .Uname a {
            color: #a2e7cd;
            font-weight: 700;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        .c_box {
            overflow: hidden;
        }

        .c_box span {
            letter-spacing: 5px;
            font-size: 18px;
        }

        .timeMod {
            position: absolute;
            right: 20px;
            bottom: 10px;
        }

        .c_box p {
            text-indent: 30px;
            height: 100px;
            overflow-y: auto;
        }

        li .personMsg {
            border: none;
        }

        .msg .personMsg {
            float: left;
            width: 200px;
        }

        .msg .personMsg a {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            /* color: rgba(157, 255, 28, 0.781); */
            color: #EDE9D0;
            font-weight: 500;
        }

        .pages {
            font: 14px "microsoft yahei";
            color: #000;
            box-sizing: border-box;
            margin-top: 40px;
            text-align: center;
            font-size: 14px;
        }

        .pages a {
            font: 14px "microsoft yahei";
            text-align: center;
            font-size: 14px;
            box-sizing: border-box;
            background-color: transparent;
            text-decoration: none;
            display: inline-block;
            height: 30px;
            line-height: 30px;
            color: #5F4B36;
            border: 1px solid #D1C0A5;
            margin: 0 5px;
            vertical-align: middle;
            padding: 0 10px;
            cursor: pointer;
        }

        .pageActive {
            background-color: #5F4B36 !important;
            color: #ffffff !important;
        }

        #law_list li {
            cursor: pointer;
        }

    </style>
</head>

<body>
<div id="container">
    <div id="header">
        <div class="login_wrapper">
            <a href="${pageContext.request.contextPath }/denglu.jsp"
               id="header_top1">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><span>|</span>
            <a href="${pageContext.request.contextPath }/zhuce.jsp" id="header_top2">&nbsp;&nbsp;注册</a>
        </div>
        <a class="search-back">
            <div class="search-box">
                <a href="javascript:;"></a>
                <a class="search-btn" href="javascript:;">
                    <img class="search-icon" src="${pageContext.request.contextPath }/image/6.png" alt="搜索"/>
                </a>
                <span class="iconfont icon-search"></span>
                <input class="search-text" type="text" name="" placeholder="Search" maxlength="40">
            </div>
        </a>

        <a class="msg_wrapper" href="${pageContext.request.contextPath }/WoDeXinXi">
            <div class="msg_people">
                <img id="img1" src="${pageContext.request.contextPath }/image/person.png" alt="我的信息" title="我的信息"/>
            </div>
            <div class="msg_text">我的信息</div>
        </a>

        <div id="word1">启明普法教育平台</div>
        <div id="main_nav">
            <img id="main_nav_img" src="${pageContext.request.contextPath }/image/logo.png" alt="启明普法教育平台"/>

            <ul id="head_nav">
                <li><a href="${pageContext.request.contextPath }/index" title="首页">首页</a></li>
                <li>
                    <a href="${pageContext.request.contextPath }/FLZXXinWenDongTai" title="团队动态">团队动态</a>
                </li>
                <li><a href="${pageContext.request.contextPath }/YiAnShiFa" title="以案释法">以案释法</a>
                </li>
                <li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">普法教育</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">线上教育</a></li>
                        <li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">线下活动</a></li>
                        <li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">法治文化</a></li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/TSHDMoNiFaTing">活动报名</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/TSHDMoNiFaTing">模拟法庭</a></li>
                        <li><a href="${pageContext.request.contextPath }/ft/fqtAll" title="启明倾听">启明倾听</a></li>
                        <li><a href="${pageContext.request.contextPath }/WoYaoBaoMing">我要报名</a></li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/hd/hjlPageData?curr=1">互动交流</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/GuanYuWoMen">关于我们</a>
                </li>
            </ul>
        </div>
    </div>
    <div id="content">
        <div class="main">
            <ul>
                <c:forEach items="${pb.hjls}" var="h">
                    <li>
                        <div class="c_box"><span>${h.title}</span>
                            <p>${h.content}</p>
                        </div>
                        <div class="msg clearfix">
                            <div class="personMsg clearfix">
                                <div class="photo">
                                    <img src="${h.img}" alt="">
                                </div>
                                <div class="Uname">
                                    <a href="javascript:;"> ${h.username}</a>
                                </div>
                            </div>
                            <div class="timeMod"><span style=" color: #EDE9D0;">${h.time}</span></div>
                        </div>
                        <div>
                            <span style="margin-left: 10px;">管理员：</span>
                            <span>${h.reply}</span></span>
                        </div>
                    </li>
                </c:forEach>
            </ul>
            <div class="pages">
                <a class="pageActive" id="first" href="${pageContext.request.contextPath }/hd/hjlPageData?curr=1">首页</a>
                <c:forEach begin="1" end="${pb.totalPage}" var="i">
                    <c:if test="${pb.currentPage==i}">
                        <a class="pageActive"
                           href="${pageContext.request.contextPath }/hd/hjlPageData?curr=${i}">${i}</a>
                    </c:if>
                    <c:if test="${pb.currentPage!=i}">
                        <a href="${pageContext.request.contextPath }/hd/hjlPageData?curr=${i}">${i}</a>
                    </c:if>
                </c:forEach>
                <a id="last" href="${pageContext.request.contextPath }/hd/hjlPageData?curr=${pb.totalPage}">尾页</a>
            </div>


            <div class="write">
                <form>
                    <div class="personMsg clearfix">
                        <div class="photo">
                            <img src="${Uuser.img}" alt="">
                        </div>
                        <div class="Uname">
                            <a href="javascript:;"> ${user1.username}</a>
                        </div>
                    </div>
                    <p class="w_title"><span>话题：</span>
                        <textarea cols="30" maxlength="15" rows="1" placeholder="最多可输入15字" required="required"
                                  name="title" id="title"></textarea>
                    </p>
                    <!-- <p class="w_des"> <span>描述：</span>
                        <textarea cols="110" maxlength="50" rows="1" placeholder="最多可输入50字" required="required"
                            name="cdescribe"></textarea>
                    </p> -->
                    <p class="w_content"><span>内容：</span>
                        <textarea cols="110" rows="10" placeholder="添加内容" name="content" id="content1"></textarea>
                    </p>
					<span class="imgSub" style="position: relative;z-index: -999">
						<img src="../image/add.png"> <span class="add">
						<input type="file" name="file" class="input_file" id="img" style="width: 0;">添加图片</span>
					</span>
                        <button type="button" id="sub">发 帖</button>
                </form>
            </div>
            <script>

                $(function () {
                    $('.pages a').click(function () {
                        $(".pages a").removeClass('pageActive');
                        $(this).addClass('pageActive');
                    })
                    $(".imgSub img").click(function () {
                        $(".imgSub input").click();
                    });
                    $("#sub").click(function () {
                        $.ajax({
                            url: "${pageContext.request.contextPath }/hd/addHjl",
                            method: "post",
                            data: {
                                "title": $("#title").val(),
                                "content": $("#content1").val(),
                            },
                            success: function (resp) {
                                alert("发帖成功!")
                                $.ajax({
                                    url: "${pageContext.request.contextPath }/hd/hjlPageData",
                                    type: "get",
                                    data: {"curr": "1"},
                                    dataType: "json",
                                })
                            }
                        })
                    })
                })

            </script>
        </div>
    </div>
</div>
<div id="footer">
    <div class="main_wrap">
        <div class="ulink">
            <div class="tlink">
                <div class="txtwrap">
                    <h2>其它普法平台</h2>
                    <ul>
                        <li><a href="http://qspfw.moe.gov.cn/index.html">教育部全国青少年普法网</a></li>
                        <li><a href="http://www.court.gov.cn/">中华人民共和国最高法院</a></li>
                        <li><a href="http://www.legalinfo.gov.cn/pub/sfbzhfx/index.html">智慧普法平台</a></li>
                        <li><a href="https://www.spp.gov.cn/">中华人民共和国最高人民检察院</a></li>
                    </ul>
                </div>
            </div>
            <ul class="stu_inform">
                <li><a href="javascript:;" title="">
                    <img src="${pageContext.request.contextPath }/image/index/SY2.png"/>
                </a>
                </li>
                <li><a href="javascript:;" title="">
                    <img src="${pageContext.request.contextPath }/image/fo2.png" alt="法治的力量"/>
                </a>
                </li>
                <li><a href="javascript:;" title="">
                    <img src="${pageContext.request.contextPath }/image/fo3.png" alt="12.4国家宪法日"/>
                </a>
                </li>
            </ul>

        </div>
        <div class="copy">
            <div class="mainWrap">
                <div class="qrCode">
                    <a href="javascript:;" title=""><img src="${pageContext.request.contextPath }/image/qrCode.png"
                                                         alt=""></a>
                </div>

                <div class="contact">
                    <img src="${pageContext.request.contextPath }/image/logo1.png" alt="湖北师范大学"/>
                    <div class="txtwrapper">
                        <em class="icon-phone">0714-6572179</em> 　
                        <span><em class="icon-mail">ehall.hbnu.edu.cn</em> </span>
                        <br>
                        <em class="icon-location">黄石市湖北省黄石市磁湖·11号 </em>
                    </div>
                </div>
                <div class="copyrights">
                    <p>版权所有 © 启明普法教育平台 &nbsp;&nbsp;&nbsp;&nbsp;鄂ICP备
                        <a href="http://beian.miit.gov.cn" style="color:#fff;">05003319号-1</a>
                        号
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>

</html>