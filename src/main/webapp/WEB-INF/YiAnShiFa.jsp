<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/YiAnShiFa.css">
	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
	<title>启明普法教育平台-以案释法</title>
	<style>
		* {
			outline: none;
		}

		.btnActive {
			background-color: #389eac !important;
			color: #ffffff !important;
		}
        .content_3t a{
            font-size: 18px !important;
        }
        .content_3t a p{
            margin-top: 0 !important;
            margin-bottom: 0 !important;
        }
		.c{
            display: block;
            width: 100%;
            height: 24px;
            overflow: hidden !important;
            white-space: nowrap !important;
			text-overflow: ellipsis !important;
		}
		.c>:first-child{
			display: none;
		}
        .ignore{
            height: 32px;
            width: 100%;
            overflow: hidden !important;
            white-space: nowrap !important;
            text-overflow: ellipsis !important;
			color: #000;
			font-style: normal;
        }
		#main_img ul li>div{
			float: left;
		}
		#main_img li .leftTitle{
			margin-right: 0;
		}
		.content_3t{
			width: 350px;
			padding-left: 10px;
		}
	</style>
</head>

<body>
<div id="container">
	<div id="header">
		<div class="login_wrapper">
			<a href="${pageContext.request.contextPath }/html/denglu.jsp" id="header_top1">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><span>|</span>
			<a href="${pageContext.request.contextPath }/html/zhuce.jsp" id="header_top2">&nbsp;&nbsp;注册</a>
		</div>
		<a class="search-back">
			<div class="search-box">
				<a class="search-btn" href="javaxript:;">
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
	<div id="lunbo1">
		<div id="sub">
			<script src="${pageContext.request.contextPath }/js/history.js"></script>
			<div id="focus_Box">
				<button class="prev">&lt;</button>
				<button class="next">&gt;</button>
				<ul>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf1.jpg" /></a>
						<p>
							<span>条文从72条增加到132条</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf2.jpg" /></a>
						<p>
							<span>增设发现未成年人权益受侵害时强制报告制度</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf3.jpg" /></a>
						<p>
							<span>增设密切接触未成年人行业人员准入资格制度</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf4.jpg" /></a>
						<p>
							<span>建立学生欺凌防控工作制度</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf5.jpg" /></a>
						<p>
							<span>对性侵害性骚扰未成年人行为校方需及时告知</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf6.jpg" /></a>
						<p>
							<span>保护未成年的合法权益</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf7.jpg" /></a>
						<p>
							<span>完善留守儿童委托照顾制度</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf8.jpg" /></a>
						<p>
							<span>明确国家监护制度为未成年人保护兜底</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
					<li>
						<a href="javascript:;"><img width="445" height="308" src="${pageContext.request.contextPath }/image/wcnrbhf9.jpg" /></a>
						<p>
							<span>加强未成年人入住酒店登记管理</span>
							<a href="javascript:;" class="imgs-scroll-btn">分享</a>
						</p>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="content">
		<div class="widget-channel-links">
			<a href="javascript:;" class="" title="案例分析">案例分析</a>
			<a href="javascript:;" class="" title="法律解读">法律解读</a>
		</div>
		<img src="${pageContext.request.contextPath }/image/57.PNG" alt="" />
		<div id="main_img">
			<ul id="msgList">

			</ul>
		</div>
	</div>
	<script>
		$(function () {
			var JsonLength=	0;	//获取json数据的长度
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

			//子新闻绑定事件
			function binding(urlStr, hrefStr){
				for(let i =0;i<$("#msgList li").length;i++){
					$("#msgList li")[i].index = i;
					$("#msgList li")[i].addEventListener('click',function(){
						newsAjax($("#msgList li")[i].index+1,urlStr,hrefStr)
					})
				}
			}

			//将默认显示的请求封装
			function show() {
				$.ajax({
					url: "${pageContext.request.contextPath }/sf/sfxAll",
					type: "get",
					dataType: "json",
					success: function (resp) {
						$("#msgList").empty();
						for (let i = 0; i < getJsonLength(resp.data); i++) {
							$("#msgList")[0].insertAdjacentHTML('beforeEnd', '<li><div class="leftTitle"><p>法律<span>解读</span></p></div><div class="content_3t"><a>' + '<i class="ignore">'+resp.data[i].title+'</i>' + '<span class="c">' + resp.data[i].content + '</span></a></div></li>');
						}
						binding("${pageContext.request.contextPath }/sf/sfxFindById","${pageContext.request.contextPath }/sfxFindById");
					},
					error: function () { alert("请求错误") }
				})
			}

			//初始化页面
			$(".widget-channel-links a:first").addClass('btnActive');
			$("#msgList").empty();
			show();

			//左边按钮添加点击事件
			$(".widget-channel-links a:last").click(function () {
				$(".widget-channel-links a").removeClass('btnActive');
				$(this).addClass('btnActive');
				$.ajax({
					url: "${pageContext.request.contextPath }/sf/sjdAll",
					type: "get",
					dataType: "json",
					success: function (resp) {
						$("#msgList").empty();
						for (let i = 0; i < getJsonLength(resp.data); i++) {
							$("#msgList")[0].insertAdjacentHTML('beforeEnd', '<li><div class="leftTitle"><p>法律<span>解读</span></p></div><div class="content_3t"><a>' + '<i class="ignore">'+resp.data[i].title+'</i>' + '<span class="c">' + resp.data[i].content + '</span></a></div></li>');
						}
						binding("${pageContext.request.contextPath }/sf/sjdFindById","${pageContext.request.contextPath }/sjdFindById");
					},
					error: function () { alert("请求错误") }
				})
			})

			$(".widget-channel-links a:first").click(function () {
				$(".widget-channel-links a").removeClass('btnActive');
				$(this).addClass('btnActive');
				show();
			})
		})

	</script>
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