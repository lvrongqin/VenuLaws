<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/txt.css">

    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
    <script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
    <title>普法漫画</title>
</head>
<style>
    body {
        -moz-user-select: none;
        /* Firefox */
        -webkit-user-select: none;
        /* WebKit */
        -ms-user-select: none;
        /* IE */
        -khtml-user-select: none;
        /* KHTML */
        -o-user-select: none;
        /* Opera */
        user-select: none;
        /* CSS3属性 */
    }

    .container_txt ul,
    li,
    img {
        padding: 0;
        margin: 0;
        list-style: none;
        vertical-align: top;
    }

    .container_txt {
        position: relative;
        width: 900px;
        height: 650px;
        margin: 0 auto;
        margin-top: 50px;
    }

    .container_txt li {
        width: 900px;
        height: 650px;
    }

    .container_txt li img {
        width: 900px;
        height: 650px;
    }

    .container_txt .btnMod span {
        position: absolute;
        width: 50px;
        height: 50px;
        line-height: 40px;
        font-size: 52px;
        font-weight: bolder;
        background-color: rgba(146, 120, 2, 0.966);
        color: #fff;
        text-align: center;
        cursor: pointer;
        border-radius: 50%;
    }

    .container_txt .btnMod .leftBtn {
        top: 50%;
        left: -70px;
        transform: translateY(-50%);
    }

    .container_txt .btnMod .rightBtn {
        top: 50%;
        right: -70px;
        transform: translateY(-50%);
    }

    .imgMod {
        position: relative;
        width: 900px;
        height: 650px;
        overflow: hidden;
        border: 2px #999 solid;
    }

    .imgMod ul {
        position: absolute;
        top: 0;
        left: 0;
        width: 16000px;
        z-index: -2;
    }

    .imgMod ul li {
        float: left;
    }
</style>

<body>
    <div id="container">

        <div id="header">
            <div class="login_wrapper">
                <a href="${pageContext.request.contextPath }/denglu.jsp" id="header_top1">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><span>|</span>
                <a href="${pageContext.request.contextPath }/zhuce.jsp" id="header_top2">&nbsp;&nbsp;注册</a>
            </div>
            <a class="search-back">
                <div class="search-box">
                    <a href="javascript:;"></a>
                    <a class="search-btn" href="javascript:;">
                        <img class="search-icon" src="${pageContext.request.contextPath }/image/6.png" alt="搜索" />
                    </a>
                    <span class="iconfont icon-search"></span>
                    <input class="search-text" type="text" name="" placeholder="Search" maxlength="40">
                </div>
            </a>

            <a class="msg_wrapper" href="${pageContext.request.contextPath }/WoDeXinXi">
                <div class="msg_people">
                    <img id="img1" src="${pageContext.request.contextPath }/image/person.png" alt="我的信息" title="我的信息" />
                </div>
                <div class="msg_text">我的信息</div>
            </a>

            <div id="word1">启明普法教育平台</div>
            <div id="main_nav">
                <img id="main_nav_img" src="${pageContext.request.contextPath }/image/logo.png" alt="启明普法教育平台" />

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
                        <a href="${pageContext.request.contextPath }/TSHDMoNiFaTing.jsp">活动报名</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath }/TSHDMoNiFaTing">模拟法庭</a></li>
                            <li><a href="${pageContext.request.contextPath }/TSHDQiMingQingTing" title="启明倾听">启明倾听</a></li>
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
        <div class="container_txt">
            <div class="btnMod">
                <span class="leftBtn">&lt;</span>
                <span class="rightBtn">&gt;</span>
            </div>
            <div class="imgMod">
                <ul class="imgList">
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/1.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/2.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/3.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/4.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/5.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/6.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/7.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/8.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/9.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/10.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/11.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/12.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/13.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/14.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/15.jpg" alt=""></li>
                    <li><img src="${pageContext.request.contextPath }/image/Cartoon/16.jpg" alt=""></li>
                </ul>
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
                                <img src="${pageContext.request.contextPath }/image/index/SY2.png" />
                            </a>
                        </li>
                        <li><a href="javascript:;" title="">
                                <img src="${pageContext.request.contextPath }/image/fo2.png" alt="法治的力量" />
                            </a>
                        </li>
                        <li><a href="javascript:;" title="">
                                <img src="${pageContext.request.contextPath }/image/fo3.png" alt="12.4国家宪法日" />
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="copy">
                    <div class="mainWrap">
                        <div class="qrCode">
                            <a href="javascript:;" title=""><img src="${pageContext.request.contextPath }/image/qrCode.png" alt=""></a>
                        </div>

                        <div class="contact">
                            <img src="${pageContext.request.contextPath }/image/logo1.png" alt="湖北师范大学" />
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
    <script>
        $(function () {
            var num = 0;//当前页数
            var flag = true;//节流阀
            var imgWidth = $('.imgMod')[0].clientWidth;
            console.log(imgWidth);
            //动态复制第一章图片并将其放在最后面
            var first = $('.imgList li')[0].cloneNode(true);
            $('.imgList')[0].appendChild(first);
            $(".leftBtn").click(function () {
                if (flag) {
                    flag = false;
                    if (num == 0) {
                        num = $('.imgList')[0].children.length - 1;
                        $('.imgList').css('left', -num * imgWidth + 'px');
                    }
                    num--;
                    $('.imgList').animate({
                        left: -num * imgWidth
                    }, 500, 'swing', function () {
                        flag = true;
                    })
                }
            })
            $(".rightBtn").click(function () {
                if (flag) {
                    flag = false;
                    if (num == $('.imgList')[0].children.length - 1) {
                        $('.imgList').css('left', 0);
                        num = 0;
                    }
                    num++;
                    $('.imgList').animate({
                        left: -num * imgWidth
                    }, 500, 'swing', function () {
                        flag = true;
                    })
                }
            })
        })
    </script>
</body>

</html>