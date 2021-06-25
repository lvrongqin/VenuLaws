<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/PuFaJiaoYu.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/font/iconfont.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_2391674_va3u7bf0o5n.css">
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>


	<script src="${pageContext.request.contextPath }/js/adapter.js"></script>
	<!--rem适配js-->

	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/base.css">
	<!--初始化文件-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/menu.css">
	<!--主样式-->

	<title>启明普法教育平台-普法教育-法治文化</title>
	<style>
		#menu a{
			display: block;
			color: #fff;
		}
		.pages a {
			font-weight: bold;
		}

		.pages a:hover {
			background-color: #5F4B36 !important;
			color: #ffffff !important;
		}
	</style>
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
				<div id="lunbo1">
					<a href="javascript:;">
						<img src="${pageContext.request.contextPath }/image/law/5.png" alt="启明普法教育平台" />
					</a>
				</div>
				<ul id="head_nav">
					<li><a href="${pageContext.request.contextPath }/index" title="首页">首页</a></li>
					<li>
						<a href="${pageContext.request.contextPath }/FLZXXinWenDongTai" title="团队动态">团队动态</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/YiAnShiFa" title="以案释法">以案释法</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" title="普法教育">普法教育</a>
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
			<div class="content">
				<div style="text-align:center;clear:both">
					<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
					<script src="/follow.js" type="text/javascript"></script>
				</div>
				<div id="menu">

					<!--显示菜单-->
					<div id="open">
						<div class="navH">
							普法教育分类
						</div>
						<div class="navBox">
							<ul>
								<li>
									<h2 class="obtain">法治文化<i></i></h2>
									<div class="secondary" id="one">
										<h3 id="hqfz">环球法治</h3>
										<h3 id="fzls">法治历史</h3>
										<h3 id="mrmy">名人名言</h3>
									</div>
								</li>

								<li>
									<h2 class="obtain">线上教育<i></i></h2>
									<div class="secondary" id="one1">
										<ul class="navBOx1">
											<li>
												<h2 class="obtain" id="other">普法教育资源<i></i></h2>
												<div class="secondary" id="two">
													<h3 id="flxzs">法律小知识</h3>
													<h3><a href="#">课件资源</a></h3>
													<h3><a href="#">其他资源</a></h3>
												</div>
											</li>
											<li>
												<h2 class="obtain" id="other1">漫画视频资源<i></i></h2>
												<div class="secondary" id="two1">
													<h3><a href="#">微电影</a></h3>
													<h3><a href="#">漫画</a></h3>
													<h3><a href="#">微视频</a></h3>
												</div>
											</li>
										</ul>

									</div>
								</li>

								<li>
									<h2 class="obtain">线下活动<i></i></h2>
									<div class="secondary" id="one2">
										<h3 id="xfr">124宪法日</h3>
										<h3 id="xxxc">线下宪法宣传</h3>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<script src="${pageContext.request.contextPath }/js/menu.js"></script>
				<!--控制js-->
			</div>

			<div id="main_img">
				<div class="nytitle">
					<b></b>
					<div class="ch">
						环球法制
					</div>
					<div class="en">
						global
					</div>
				</div>

				<div class="nyrecruit">
					<ul id="law_list">
						<li>
							<a>
								<span class="word"> 阿富汗颁布《儿童权益保护法》</span>
								<i class="time">2019-05-07</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word"> 澳新州即将实行严格新规 所有酒驾司机当场暂停驾照</span>
								<i class="time">2019-05-09</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">德国犯罪率降至20多年来最低水平</span>
								<i class="time">2019-04-04</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">德国犯罪率降至20多年来最低水平</span>
								<i class="time">2019-04-04</i>
							</a>
						</li>
					</ul>
				</div>

				<div class="pages">
					<a id="first">首页</a>
					<a id="pre">上一页</a>
					<a id="cur">当前:<span style="margin: 0 5px;">5</span>页</a>
					<a id="tot">共<span style="margin: 0 5px;">5</span>页</a>
					<a id="next">下一页</a>
					<a id="last">尾页</a>
				</div>
			</div>
		</div>
		<div id="footer">
			<div class="main_wrap">
				<div class="ulink">
					<div class="tlink">
						<div class="txtwrap">
							<h2>常用链接</h2>
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
<script>
	$(function () {
		//各页面当前页数和总数
		var hqfzCur = null;
		var hqfzTot = null;
		var fzlsCur = null;
		var fzlsTot = null;
		var mrmyCur = null;
		var mrmyTot = null;
		var flxzsCur = null;
		var flxzsTot = null;
		var xfrCur = null;
		var xfrTot = null;
		var xxxcCur = null;
		var xxxcTot = null;
		function judgeTitle(str1, str2) {
			if (str1 == str2)
				return true;
			else
				return false;

		}

		//json数据长度
		var JsonLength = 0;

		//获取页面的信息个数
		var msgLen = $("#law_list li").length;

		//获取要修改的目标
		var target = $("#law_list li a");

		//获取json数据的长度
		function getJsonLength(obj) {
			for (var item in obj)
				JsonLength++;
			var length = JsonLength;
			JsonLength = 0;
			return length;
		}

		//子新闻发送请求
		function newsAjax(targetId, urlStr, hrefStr) {
			$.ajax({
				url: urlStr,
				type: "get",
				data: { "id": targetId },
				dataType: "json",
				success: function (resp) {
					window.location.href = hrefStr;
				},
				error: function () { alert("请求错误") }
			});
		}

		//判断发送请求
		function sendAjax(targetId) {
			if ($(".ch").text() == '环球法治')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/whqFindById", "${pageContext.request.contextPath }/whqFindById");
			else if ($(".ch").text() == '法治历史')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/wlsFindById", "${pageContext.request.contextPath }/wlsFindById");
			else if ($(".ch").text() == '名人名言')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/wmyFindById", "${pageContext.request.contextPath }/wmyFindById");
			else if ($(".ch").text() == '法律小知识')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/wzsFindById", "${pageContext.request.contextPath }/wzsFindById");
			else if ($(".ch").text() == '124宪法日')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/wxfFindById", "${pageContext.request.contextPath }/wxfFindById");
			else if ($(".ch").text() == '线下宪法宣传')
				newsAjax(targetId,"${pageContext.request.contextPath }/wh/wxcFindById", "${pageContext.request.contextPath }/wxcFindById");
		}

		//封装js修改页面内容
		function ALTERContent(resp, page) {
			for (let i = 0; i < msgLen; i++) {
				target[i].children[0].innerHTML = "";
				target[i].children[1].innerHTML = "";
			}
			//如果消息数可以整除
			if (getJsonLength(resp.data) % msgLen == 0) {
				//修改列表信息
				for (let i = 0; i < msgLen; i++) {
					target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
					target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
					target[i].children[0].setAttribute("id", target[i].index);
					if (target[i].children[1])
						target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
					$(target[i]).click(function () {
						sendAjax(target[i].index.toString());
					})
				}
			}
			//如果消息数不能整除
			else if (getJsonLength(resp.data) % msgLen != 0) {
				//如果不是最后一页
				if (parseInt(page) < Math.ceil(getJsonLength(resp.data) / msgLen)) {
					for (let i = 0; i < msgLen; i++) {
						target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
						target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
						target[i].children[0].setAttribute("id", target[i].index);
						if (target[i].children[1])
							target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
						$(target[i]).click(function () {
							sendAjax(target[i].index.toString());
						})
					}
				}
				//如果是最后一页
				else if (parseInt(page) == Math.ceil(getJsonLength(resp.data) / msgLen)) {
					for (let i = 0; i < getJsonLength(resp.data) % msgLen; i++) {
						target[i].index = parseInt(page) * msgLen - (msgLen - 1) + i;
						target[i].children[0].innerHTML = resp.data[target[i].index - 1].title;
						target[i].children[0].setAttribute("id", target[i].index);
						if (target[i].children[1])
							target[i].children[1].innerHTML = resp.data[target[i].index - 1].time;
						$(target[i]).click(function () {
							sendAjax(target[i].index.toString());
						})
					}
				}
			}

		}

		//封装请求
		function HQFZ(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/whqGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("环球法治");
					$(".en").text("Global");

					hqfzCur = page;
					hqfzTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(hqfzCur);
					//修改总页码
					$("#tot span").text(hqfzTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}
		function FZLS(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wlsGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("法治历史");
					$(".en").text("History");

					fzlsCur = page;
					fzlsTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(fzlsCur);
					//修改总页码
					$("#tot span").text(fzlsTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}
		function MRMY(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wmyGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("名人名言");
					$(".en").text("Quotes");

					mrmyCur = page;
					mrmyTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(mrmyCur);
					//修改总页码
					$("#tot span").text(mrmyTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}
		function FLXZS(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wzsGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("法律小知识");
					$(".en").text("Knowledge");

					flxzsCur = page;
					flxzsTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(flxzsCur);
					//修改总页码
					$("#tot span").text(flxzsTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}
		function XFR(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wxfGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("124宪法日");
					$(".en").text("Constitution");

					xfrCur = page;
					xfrTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(xfrCur);
					//修改总页码
					$("#tot span").text(xfrTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}
		function XXXC(page) {
			$.ajax({
				url: "${pageContext.request.contextPath }/wh/wxcGetPageData",
				type: "get",
				data: { "curr": page },
				dataType: "json",
				success: function (resp) {
					var titleTxt = $(".ch").text();
					$(".ch").text("线下宪法宣传");
					$(".en").text("Offline publicity");
					
					xxxcCur = page;
					xxxcTot = resp.pb.totalPage.toString();
					//修改当前页码
					$("#cur span").text(xxxcCur);
					//修改总页码
					$("#tot span").text(xxxcTot);
					ALTERContent(resp, page);
				},
				error: function () { alert("请求错误") }
			})
		}

		HQFZ(1 + "");

		$("#hqfz").click(function () {
			HQFZ(1 + "");
		});
		$("#fzls").click(function () {
			FZLS(1 + "");
		});
		$("#mrmy").click(function () {
			MRMY(1 + "");
		});
		$("#flxzs").click(function () {
			FLXZS(1 + "");
		});
		$("#xfr").click(function () {
			XFR(1 + "");
		});
		$("#xxxc").click(function () {
			XXXC(1 + "");
		});






		//分页按钮部分

		function btnJudge(obj,fn) {
			//如果点的是第一页，则请求第一页
			if (obj.prop("id") == 'first')
				fn(1 + "");//传递第一页
			//如果点的是上一页
			else if (obj.prop("id") == 'pre') {
				//如果当前页是第一页，那么就继续发送第一页请求
				if ($("#cur span").text() == '1')
					fn(1 + "");//传递第一页
				else {//如果不是，则发送当前页数减1
					fn($("#cur span").text() - 1);
				}
			}
			//如果点的是下一页
			else if (obj.prop("id") == 'next') {
				//如果当前页是最后页，那么就继续发送最一页的请求
				if ($("#cur span").text() == $("#tot span").toString())
					fn($("#tot span") + "");
				else {//如果不是，则发送当前页数加1
					fn((parseInt($("#cur span").text()) + 1) + "");
				}
			}
			//如果点的是尾页
			else if (obj.prop("id") == 'last') {
				fn($("#tot span").text() + "");//传递最后一页
			}
		}

		$(".pages a").click(function () {
			//如果当前页面是环球法治
			if ($(".ch").text() == '环球法治')
				btnJudge($(this),HQFZ)
			else if($(".ch").text() =='法治历史')
				btnJudge($(this),FZLS)
			else if($(".ch").text() =='名人名言')
				btnJudge($(this),MRMY)
			else if($(".ch").text() =='法律小知识')
				btnJudge($(this),FLXZS)
			else if($(".ch").text() =='124宪法日')
				btnJudge($(this),XFR)
			else if($(".ch").text() =='线下宪法宣传')
				btnJudge($(this),XXXC)
		})
	})
</script>
</html>