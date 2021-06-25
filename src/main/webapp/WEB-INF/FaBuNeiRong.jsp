<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
    <title>内容发布</title>
    <link href="${pageContext.request.contextPath }/css/FaBu.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
</head>

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
						<img class="search-icon" src="${pageContext.request.contextPath }/image/6.png" alt="搜索"/>
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
					<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >普法教育</a>
						<ul>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >线上教育</a></li>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >线下活动</a></li>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">法治文化</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/TSHDMoNiFaTing" >活动报名</a>
						<ul>
								<li><a href="${pageContext.request.contextPath }/TSHDMoNiFaTing" >模拟法庭</a></li>
								<li><a href="${pageContext.request.contextPath }/TSHDQiMingQingTing" title="启明倾听">启明倾听</a></li>
								<li><a href="${pageContext.request.contextPath }/WoYaoBaoMing" >我要报名</a></li>
							</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/HuDongJiaoLiu" >互动交流</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/GuanYuWoMen" >关于我们</a>
					</li>

				</ul>
			</div>
		</div>
        <div id="content">
            <div id="box">
                <h2>内部发布</h2>
                <p>请上传您想上传的内容（图片除外），点击下方选择框选择发布内容类别</p>
                <div class="chooseBtn">
                    <form action="">
                        <select name="" id="">
                            <option value="无">无</option>
                            <option value="团队动态新闻">团队动态之新闻</option>
                            <option value="团队动态之条目">团队动态之条目</option>
                            <option value="团队动态之变更">团队动态之变更</option>
                            <option value="以案释法解读">以案释法之解读</option>
                            <option value="普法教育线上">普法教育之线上</option>
                            <option value="普法教育线下">普法教育之线下</option>
                            <option value="普法教育法治">普法教育之法治</option>
                            <option value="活动报名法庭">活动报名之法庭</option>
                            <option value="活动报名倾听">活动报名之倾听</option>
                        </select>
                    </form>
                </div>

                <div class="sendMod">
                    <input class="text" type="file">
                    <input class="submit" type="submit" value="确认上传">
                </div>
            </div>
        </div>
    </div>
    <script>
        $(".chooseBtn select").change(function () {
            $(".sendMod").css("display", "block");
        })
    </script>
</body>

</html>