<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/FaLvZiXun.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
	<title>启明普法教育平台-团队动态-普法进行时</title>
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
							<li><a href="${pageContext.request.contextPath }/ft/fqtAll">启明倾听</a></li>
							<li><a href="#" title="我要报名">我要报名</a></li>
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
			<div id="sub_nav">
				<h3>团队动态</h3>
				<ul id="sub">
					<li id="pfjxs"><a>普法进行时</a></li>
					<li id="tdnjs"><a>团队内建设</a></li>
					<li id="xnwzx"><a>校内外资讯</a></li>
				</ul>
			</div>

			<div id="main_img">
				<div class="nytitle">
					<b></b>
					<div class="ch">
						普法进行时
					</div>
					<div class="en">
						POPULARIZE LAW
					</div>
				</div>
				<div class="nyrecruit">
					<ul id="law_list">
						<!-- //这个地方是一个列表。这里后台接口给出类似data.json文件的数据，95行的script代码里表示可以获取接口给出的数据，然后展示列表。列表的css已经写好了。 -->
						<li>
							<a>
								<span class="word">通过！刑法修正案(十一):12至14周岁未成年人故意杀人等犯罪要负刑责</span>
								<i class="time">2020-12-26</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">民法典施行在即，开启妇儿权益保护新时代</span>
								<i class="time">2020-12-29</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">新《未成年人保护法》，促进未成年人保护综合治理</span>
								<i class="time">2020-12-29</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">新《未成年人保护法》，促进未成年人保护综合治理</span>
								<i class="time">2020-12-29</i>
							</a>
						</li>
						<li>
							<a>
								<span class="word">新《未成年人保护法》，促进未成年人保护综合治理</span>
								<i class="time">2020-12-29</i>
							</a>
						</li>
					</ul>

				</div>

				<div class="pages">
					<a class="pageActive" id="first">首页</a>
					<a id="pre">上一页</a>
					<a id="cur">当前:<span style="margin: 0 5px;">5</span>页</a>
					<a id="tot">共<span style="margin: 0 5px;">5</span>页</a>
					<a id="next">下一页</a>
					<a id="last">尾页</a>
				</div>
			</div>

			<script>

				$(function () {
					//左侧按钮点击变色
					$($("#sub_nav ul li a")[0]).addClass('subActive');
					$("#sub_nav ul li a").click(function () {
						$("#sub_nav ul li a").removeClass('subActive');
						$(this).addClass('subActive');
					})

					//各页面当前页数和总数
					var pfjxsCur = null;
					var pfjxsot = null;
					var tdnjsCur = null;
					var tdnjsTot = null;
					var xnwzxCur = null;
					var xnwzxTot = null;

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
						if ($(".ch").text() == '普法进行时')
							newsAjax(targetId,"${pageContext.request.contextPath }/dt/djxFindById","${pageContext.request.contextPath }/djxFindById");
						else if ($(".ch").text() == '团队内建设')
							newsAjax(targetId,"${pageContext.request.contextPath }/dt/djsFindById","${pageContext.request.contextPath }/djsFindById");
						else if ($(".ch").text() == '校内外资讯')
							newsAjax(targetId,"${pageContext.request.contextPath }/dt/dzxFindById","${pageContext.request.contextPath }/dzxFindById");
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
					function PFJXS(page) {
						$.ajax({
							url: "${pageContext.request.contextPath }/dt/djxGetPageData",
							type: "get",
							data: { "curr": page },
							dataType: "json",
							success: function (resp) {
								$(".ch").text("普法进行时");
								$(".en").text("Popularize Law ");
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
					function TDNJS(page) {
						$.ajax({
							url: "${pageContext.request.contextPath }/dt/djsGetPageData",
							type: "get",
							data: { "curr": page },
							dataType: "json",
							success: function (resp) {
								$(".ch").text("团队内建设");
								$(".en").text("Team Building");
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
					function XNWZX(page) {
						$.ajax({
							url: "${pageContext.request.contextPath }/dt/dzxGetPageData",
							type: "get",
							data: { "curr": page },
							dataType: "json",
							success: function (resp) {
								$(".ch").text("校内外资讯");
								$(".en").text("Campus Information");
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


					PFJXS(1 + "");
					$("#pfjxs").click(function () {
						PFJXS(1 + "");
					});
					$("#tdnjs").click(function () {
						TDNJS(1 + "");
					});
					$("#xnwzx").click(function () {
						XNWZX(1 + "");
					});



					//分页按钮部分

					//分页按钮排他加样式
					function exclusive(obj) {
						$(".pages a").removeClass("pageActive");
						//如果是当前页和总页则不显示
						if (obj.prop("id") == 'cur' || obj.prop("id") == 'tot')
							obj.removeClass("pageActive");
						else
							obj.addClass("pageActive")
					}

					function btnJudge(obj, fn) {
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
						exclusive($(this));
						//如果当前页面是环球法治
						if ($(".ch").text() == '普法进行时')
							btnJudge($(this), PFJXS)
						else if ($(".ch").text() == '团队内建设')
							btnJudge($(this), TDNJS)
						else if ($(".ch").text() == '校内外资讯')
							btnJudge($(this), XNWZX)
					})
				})


			</script>

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