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
    <title>普法微视频</title>
</head>
<style>
    .container_txt {
        width: 800px;
        min-height: 200px;
        margin: 0 auto;
        margin-top: 100px;
    }

    .container_txt ul li {
        width: 100%;
        padding: 5px 0;
        border-bottom: 1px rgb(165, 0, 0) solid;
    }
    .container_txt ul li::after{
        clear: both;
        content: '';
        display: block;
    }
    .container_txt span {
        float: left;
        font-size: 22px;
        font-family: 'Courier New', Courier, monospace;
    }

    .container_txt a {
        float: right;
       line-height: 40px;
    }
    .bigTitle{
        font-size: 30px;
        text-align: center;
        margin-bottom: 50px;
        letter-spacing: 2px;
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

            <a class="msg_wrapper" href="WoDeXinXi.jsp">
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
                        <a href="${pageContext.request.contextPath }/TSHDMoNiFaTing">活动报名</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath }/TSHDMoNiFaTing">模拟法庭</a></li>
                            <li><a href="${pageContext.request.contextPath }/TSHDQiMingQingTing" title="启明倾听">启明倾听</a></li>
                            <li><a href="${pageContext.request.contextPath }/WoYaoBaoMing">我要报名</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/HuDongJiaoLiu">互动交流</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/GuanYuWoMen">关于我们</a>
                    </li>

                </ul>
            </div>
        </div>
        <div class="container_txt">
            <div class="bigTitle">普法微电影</div>
            <ul>
                <li>
                    <span>法庭上的烛光</span>
                    <a
                        href="http://pfdmedia.legalinfo.gov.cn/contribute/6/WDY-8271FY/20180726164854601.mp4">点击观看</a>
                </li>
                <li>
                    <span>警魂仁心</span>
                    <a
                        href="http://pfdmedia.legalinfo.gov.cn/contribute/6/WDY-8063IE/20180725165052149.mp4">点击观看</a>
                </li>
                <li>
                    <span>律师调解团</span>
                    <a
                        href="http://pfdmedia.legalinfo.gov.cn/contribute/6/WDY-1474UG/20180726165457143.mp4">点击观看</a>
                </li>
                <li>
                    <span>信守</span>
                    <a href="http://www.legalinfo.gov.cn/pub/sfbzhfx/zhfxzxxf/zxxfwdy/202008/W020200814591605447926.mp4">点击观看</a>
                </li>
                <li>
                    <span>走出阴霾</span>
                    <a href="http://mpvideo.qpic.cn/0bf2huaaqaaaceabgildgzpvapodba6qacaa.f10002.mp4?dis_k=e3b3050385abb1e2d2631069137510ae&dis_t=1609907780&vid=wxv_1522335549368369154&format_id=10002">点击观看</a>
                </li>
            </ul>
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
</body>

</html>