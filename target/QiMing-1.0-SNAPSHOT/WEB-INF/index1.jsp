<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<link rel="shortcut icon"
		  href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico"
		  type="image/x-icon" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_2422366_p5lvd6pqsm.css">
	<title>启明普法教育平台</title>
	<!-- <link rel="stylesheet" href="./js/jquery-accordion-menu.js"> -->
	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
	<script>
		function fn() {
			alert("请登录后查看！");
			return;
		}
	</script>
</head>

<body>
<div id="container">
	<div id="header">
		<div class="login_wrapper" style="display: block">
			<a href="${pageContext.request.contextPath }/denglu.jsp"
			   id="header_top1">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><span>|</span>
			<a href="${pageContext.request.contextPath }/zhuce.jsp" id="header_top2">&nbsp;&nbsp;注册</a>
		</div>
		<a class="search-back">
			<div class="search-box">
				<a href="javascript:fn()"></a>
				<a class="search-btn" href="javascript:fn()">
					<img class="search-icon" src="${pageContext.request.contextPath }/image/6.png" alt="搜索" />
				</a>
				<span class="iconfont icon-search"></span>
				<input class="search-text" type="text" name="" placeholder="Search" maxlength="40">
				<script>
					$(".search-text").focus(function () {
						alert("请登录后查看！");
						$(".search-text").blur();
					})
				</script>
			</div>
		</a>

		<div id="word1">启明普法教育平台</div>
		<ul id="head_nav">
			<li><a href="javascript:fn()">首页</a></li>
			<li>
				<a href="javascript:fn()">团队动态</a>
			</li>
			<li><a href="javascript:fn()">以案释法</a>
			</li>
			<li><a href="javascript:fn()">普法教育</a>
				<ul>
					<li><a href="javascript:fn()">线上教育</a></li>
					<li><a href="javascript:fn()">线下活动</a></li>
					<li><a href="javascript:fn()">法治文化</a></li>
				</ul>
			</li>
			<li>
				<a href="javascript:fn()">活动报名</a>
				<ul>
					<li><a href="javascript:fn()">模拟法庭</a></li>
					<li><a href="javascript:fn()">启明倾听</a></li>
					<li><a href="javascript:fn()">我要报名</a></li>
				</ul>
			</li>
			<li>
				<a href="javascript:fn()">互动交流</a>
			</li>
			<li>
				<a href="javascript:fn()">关于我们</a>
			</li>
		</ul>
	</div>
	<img id="main_nav_img" src="${pageContext.request.contextPath }/image/logo1.png" alt="启明普法教育平台"
		 style="width: 100px;top: 60px;left:50px" />
	<div id="lunboWrapper" class="clearfix">
		<div id="lunbo1">
			<ul>
				<li>
					<a href="javascript:fn()">
						<img src="${pageContext.request.contextPath }/image/in-5.png" alt="启明普法教育平台" />
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<img src="${pageContext.request.contextPath }/image/in-1.png" alt="启明普法教育平台" />
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<img src="${pageContext.request.contextPath }/image/in-6.png" alt="启明普法教育平台" />
					</a>
				</li>

			</ul>
			<div class="arrow_left">&lt;</div>
			<div class="arrow_right">&gt;</div>
			<script>
				var num = 0;
				var timer = null;
				var flag = true;//节流阀
				var foc = document.querySelector('#lunbo1');
				var focusWidth = foc.offsetWidth;
				var first = $("#lunbo1 ul")[0].children[0].cloneNode(true);
				$("#lunbo1 ul")[0].appendChild(first);

				$(function () {
					//鼠标移入时图片停止轮播，并且左右按钮显示
					$("#lunbo1").mouseover(function () {
						$(".arrow_left").css("display", "block");
						$(".arrow_right").css("display", "block");
						clearInterval(timer);
						tiemr = null;
					});
					//鼠标离开时图片开启轮播，并且左右按钮隐藏
					$("#lunbo1").mouseout(function () {
						$(".arrow_left").css("display", "none");
						$(".arrow_right").css("display", "none");
						clearInterval(timer);
						tiemr = null;
						timer = setInterval(function () {
							//自动播放相当于直接调用点击事件
							$(".arrow_right").click();//手动调用点击事件
						}, 3000);
					})
					//鼠标点击右边按钮时，图片向右
					$(".arrow_right").click(function () {
						if (flag == true) {
							flag = false;
							if (num == $("#lunbo1 ul")[0].children.length - 1) {
								$("#lunbo1 ul").css("left", "0px");
								num = 0;
							}
							num++;
							$("#lunbo1 ul").animate({
								left: -focusWidth * num
							}, 500, function () {
								flag = true;
							})
						}
					})
					//鼠标点击左边按钮时，图片向左
					$(".arrow_left").click(function () {
						if (flag == true) {
							flag = false;
							if (num == 0) {
								num = $("#lunbo1 ul")[0].children.length - 1;
								$("#lunbo1 ul").css("left", -num * focusWidth + 'px');
							}

							num--;
							$("#lunbo1 ul").animate({
								left: -focusWidth * num
							}, 500, function () {
								flag = true;
							})
						}
					})
					setTimeout(function () {
						$(".arrow_right").click();
					}, 500)
					timer = setInterval(function () {
						$(".arrow_right").click();
					}, 3000)
				})
			</script>
		</div>
	</div>
	<div class="main">
		<div class="newsWrapper">
			<ul class="clearfix">
				<li>
					<div><i class="icon iconfont icon-group"></i>团队动态</div>
					<ul class="newsMod1">
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
					</ul>
				</li>
				<li>
					<div><i class="icon iconfont icon-huodong1"></i>法律活动</div>
					<ul class="newsMod2">
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
					</ul>
				</li>
				<li>
					<div><i class="icon iconfont icon-iconfontdongtai"></i>普法资料</div>
					<ul class="newsMod3">
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
					</ul>
				</li>
				<li>
					<div><i class="icon iconfont icon-zhishi"></i>法律资讯</div>
					<ul class="newsMod4">
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
						<li><a href="javascript:fn()"><i
								class="icon iconfont icon-jiantouyou"></i><span>启明普法教育团队2.25会议圆满结束</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="newsWrapper1 clearfix">
			<div class="leftMod">
				<div class="newsTitle">
					<i class="icon iconfont icon-daohanghaiwaigou"></i>专题信息
				</div>
				<img src="${pageContext.request.contextPath }/image/left1.png" alt="" style="width: 150px;">
				<img src="${pageContext.request.contextPath }/image/left2.png" alt="" style="width: 150px;">
				<img src="${pageContext.request.contextPath }/image/left3.png" alt="" style="width: 150px;">
				<ul class="newsMod5 clearfix">
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队</span></a><span class="timeTxt">2021-04-17</span></li>
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队2.25会议圆满结束</span></a><span class="timeTxt">2021-04-17</span></li>
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队2.25会议圆满结束</span></a><span class="timeTxt">2021-04-17</span></li>
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队2.25会议圆满结束</span></a><span class="timeTxt">2021-04-17</span></li>
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队2.25会议圆满结束</span></a><span class="timeTxt">2021-04-17</span></li>
					<li><a href="javascript:fn()"><span style="float: left;">【启明普法】</span><span
							class="contentTxt">启明普法教育团队2.25会议圆满结束</span></a><span class="timeTxt">2021-04-17</span></li>
				</ul>
			</div>
			<div class="rightMod clearfix">
				<div class="photo1">
					<img src="${pageContext.request.contextPath }/image/index/SYhdhg.png" alt="">
					<div class="rightMod_text">揭幕式结束</div>
				</div>
				<div class="photo2">
					<img src="${pageContext.request.contextPath }/image/in-2.png" alt="">
					<div class="rightMod_text">启明在行动</div>
				</div>
				<div class="photo1">
					<img src="${pageContext.request.contextPath }/image/in-3.png" alt="">
					<div class="rightMod_text">交流与讨论</div>
				</div>
				<div class="photo2">
					<img src="${pageContext.request.contextPath }/image/in-4.png" alt="">
					<div class="rightMod_text">获取小知识</div>
				</div>
			</div>
		</div>
		<div class="funWrapper">
			<ul class="clearfix">
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-xuexizhongxin"></i>
						<div>学习法律知识</div>
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-haiwai"></i>
						<div>获取法律资源</div>
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-wenti"></i>
						<div>提出法律问题</div>
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-anli"></i>
						<div>讲解法律案例</div>
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-huodong3"></i>
						<div>参与法律活动</div>
					</a>
				</li>
				<li>
					<a href="javascript:fn()">
						<i class="icon iconfont icon-tuandui"></i>
						<div>了解团队信息</div>
					</a>
				</li>
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
					<li><a href="javascript:fn()" title="">
						<img src="${pageContext.request.contextPath }/image/index/SY2.png" />
					</a>
					</li>
					<li><a href="javascript:fn()" title="">
						<img src="${pageContext.request.contextPath }/image/fo2.png" />
					</a>
					</li>
					<li><a href="javascript:fn()" title="">
						<img src="${pageContext.request.contextPath }/image/index/SY3.png" />
					</a>
					</li>
				</ul>
			</div>
			<div class="copy">
				<div class="mainWrap">
					<div class="qrCode">
						<a href="javascript:fn()" title=""><img src="${pageContext.request.contextPath }/image/qrCode.png"
																alt=""></a>
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
<div class="qrCodeWrapper">
	<a href="javascript:fn()" title=""><img src="${pageContext.request.contextPath }/image/qrCode.png" alt=""></a>
	<div class="qrMore">微信公众号</div>
</div>
<script>
	document.addEventListener("scroll", function () {
		if (window.pageYOffset >= 1400) {
			document.querySelector(".qrCodeWrapper").style.display = "none";
		} else {
			document.querySelector(".qrCodeWrapper").style.display = "block";
		}
	})

	$(function () {
		//子新闻发送请求
		function newsAjax(targetId, urlStr, hrefStr) {
			$.ajax({
				url: urlStr,
				type: "get",
				data: {},
				dataType: "json",
				success: function (resp) {
				},
				error: function () { console.log("请求错误") }
			});
		}

		function mod1() {
			$.ajax({
				url: "${pageContext.request.contextPath }/dt/djsGetPageData1",
				type: "get",
				data: { 'newsCount': 5 },
				dataType: "json",
				success: function (resp) {
					for (let i = 0; i < $('.newsMod1 li').length; i++) {
						$('.newsMod1 li span')[i].index = i + 1;
						$('.newsMod1 li span')[i].innerText = resp.data[i].title;
						$('.newsMod1 li').click(function () {
							newsAjax($('.newsMod1 li span')[i].index, "${pageContext.request.contextPath }/dt/djsFindById", "${pageContext.request.contextPath }/djsFindById");
						})
					}
				},
				error: function () { console.log("请求错误") }
			})
		}
		function mod2() {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/whqGetPageData1",
				type: "get",
				data: { 'newsCount': 5 },
				dataType: "json",
				success: function (resp) {
					for (let i = 0; i < $('.newsMod2 li').length; i++) {
						$('.newsMod2 li span')[i].index = i + 1;
						$('.newsMod2 li span')[i].innerText = resp.data[i].title;
						$('.newsMod2 li').click(function () {
							newsAjax($('.newsMod2 li span')[i].index, "${pageContext.request.contextPath }/wh/whqFindById", "${pageContext.request.contextPath }/whqFindById");
						})
					}
				},
				error: function () { console.log("请求错误") }
			})
		}
		function mod3() {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wxcGetPageData1",
				type: "get",
				data: { 'newsCount': 5 },
				dataType: "json",
				success: function (resp) {
					for (let i = 0; i < $('.newsMod3 li').length; i++) {
						$('.newsMod3 li span')[i].index = i + 1;
						$('.newsMod3 li span')[i].innerText = resp.data[i].title;
						$('.newsMod3 li').click(function () {
							newsAjax($('.newsMod3 li span')[i].index, "${pageContext.request.contextPath }/wh/wxcFindById", "${pageContext.request.contextPath }/wxcFindById");
						})
					}
				},
				error: function () { console.log("请求错误") }
			})
		}
		function mod4() {
			$.ajax({
				url: "${pageContext.request.contextPath }/dt/dzxGetPageData1",
				type: "get",
				data: { 'newsCount': 5 },
				dataType: "json",
				success: function (resp) {
					for (let i = 0; i < $('.newsMod4 li').length; i++) {
						$('.newsMod4 li span')[i].index = i + 1;
						$('.newsMod4 li span')[i].innerText = resp.data[i].title;
						$('.newsMod4 li').click(function () {
							newsAjax($('.newsMod4 li span')[i].index, "${pageContext.request.contextPath }/dt/dzxFindById", "${pageContext.request.contextPath }/dzxFindById");
						})
					}
				},
				error: function () { console.log("请求错误") }
			})
		}
		function mod5() {
			$.ajax({
				url: "${pageContext.request.contextPath }/dt/djxGetPageData1",
				type: "get",
				data: { 'newsCount': 6 },
				dataType: "json",
				success: function (resp) {
					for (let i = 0; i < $('.newsMod5 li').length; i++) {
						$('.newsMod5 li span')[i].index = i + 1;
						$('.newsMod5 li .contentTxt')[i].innerText = resp.data[i].title;
						$('.newsMod5 li .timeTxt')[i].innerText = resp.data[i].time;
						$('.newsMod5 li').click(function () {
							newsAjax($('.newsMod5 li span')[i].index, "${pageContext.request.contextPath }/dt/djxFindById", "${pageContext.request.contextPath }/djxFindById");
						})
					}
				},
				error: function () { console.log("请求错误") }
			})
		}
		mod1();
		mod2();
		mod3();
		mod4();
		mod5();



	})
</script>
</body>

</html>