<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/QiMingQingTing.css">

	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
	<link rel="stylesheet" href="https://at.alicdn.com/t/font_2391674_1q043u11a47.css">
	<title>活动报名-启明倾听</title>
	<style>
		.imgWrapper ul{
			padding-left: 70PX;
		}
		.imgWrapper ul li{
			display: inline-block;
			text-align: center;
		}
		.imgWrapper ul li img{
			width: 200px;
		}
	</style>
</head>
<body>
	<div class="container_txt">
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
								<li><a href="${pageContext.request.contextPath }/ft/fqtAll" title="启明倾听">启明倾听</a></li>
								<li><a href="${pageContext.request.contextPath }/WoYaoBaoMing" >我要报名</a></li>
							</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/hd/hjlPageData?curr=1" >互动交流</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/GuanYuWoMen" >关于我们</a>
					</li>

				</ul>
			</div>
		</div>
		<div id="top_text">
			<div id="main">
				<h1>
					启明倾听
				</h1>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法治兴则国兴，法治强则国强。为大力宣传党的十八届三中全会关于社会主义民主法治建设的重要思想，提高全民法律意识和法律素质、规范信访工作行为,根据普法办《关于开展2020年“法治宣传月”活动的通知》文件精神，湖北师范大学经济管理与法学院团学组织结合中心工作，积极宣传中国特色社会主义法律体系，深入开展“启明倾听”主题宣传活动，进一步推进“法律六进”，全面提升了法治文化建设，随着社会的进步，人民的生活水平不断地提高，在全新的未成年人保护法与预防未成年人犯罪法出台之际，经济管理与法学院计划对黄石社区及各大中小学学生开展志愿普法活动，提高黄石中小学生的法制意识。
				</p>
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、活动目的<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经济管理与法学院现计划开展以“讲好普法小故事”为主题的法制宣传活动。本活动既可以加强黄石市中小学生的法治意识，让学生懂得用法律武器来维护自身的合法权益，努力营造一个更加平安更加和谐的校园生活，同时，作为大学生的志愿者也能够在宣传过程中，了解基本法律知识，推进法制建设。<br>
				</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、活动时间<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寒假期间（2021年1月—2021年2月）每周三、六进行“普法小故事”宣讲，活动共持续四到六周。</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、参与对象<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;志愿者招募对象为经济管理与法学院全日制本科在读学生；
					普法对象为黄石市社区居民、黄石市各大中小学学生。<br></p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;四、准备工作<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.前期准备:<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）由经济管理与法学院文艺部撰写活动策划。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）经济管理与法学院青大队为活动招募20-25名志愿者，线上建群并为其分组（故事收集组、故事演绎组）。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）经济管理与法学院青大队根据分组制定出具体时间人员安排。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）经济管理与法学院团学组织联系校团委及社区居委会负责人。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.活动中期:<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）故事收集组的成员确定好本期主题，准备好故事电子档稿件，并提前发给演绎组的成员（每个活动周周一晚七点前完成）。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）演绎组成员根据故事制作简易PPT，结合个人特色给中小学生讲故事（每个活动周周二晚七点前完成）。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）经济管理与法学院新媒体进行活动照片收集（每次普法宣讲时，安排人员前去拍照、撰写通讯稿）。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.活动后期：<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）经济管理与法学院青大队根据实际情况录入志愿时长。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）经济管理与法学院新媒体在微信公众号推文本次活动。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）经济管理与法学院文艺部对普法对象进行活动意见收集，倾听并整理活动感受，做好活动总结。<br></p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;五、活动环节<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;环节（一）：根据小组宣传主题，播放日常生活中法律纠纷的视频；（时间控制在5-10分钟）。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;环节（二）：结合视频问学生的看法及解决措施，并为其普及相关法律法规。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;环节（三）：讲述主题法制故事。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;环节（四）：学生自由提问有关法律的知识。<br>
				</p>
				<div class="imgWrapper">
					<ul>
					
						<li><img src="${pageContext.request.contextPath }/image/listen/listen1.png" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/image/listen/listen4.png" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/image/listen/listen5.png" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/image/listen/listen.png" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/image/listen/listen2.png" alt=""></li>
						<li><img src="${pageContext.request.contextPath }/image/listen/listen3.png" alt=""></li>
					
					</ul>
				</div>
				<div id="main_img">
					<h2>内容介绍</h2>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过向当地中小学发放微信、QQ群号，志愿者在微信、QQ群内与中小学生进行语音聊天，讲述法律小故事的形式开展的青少年普法活动。
					</p>
					<h2>项目意义</h2>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过开展“启明倾听”不仅可以向青少年普及法律观念与法律知识，还可舒缓疫情期间孩子们的情绪，并已获得孩子们和家长的积极支持。
					</p>
					<h2>附件资源</h2>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过下载下方“启明倾听附件资源”可获得开展活动的相关课件资源（PPT、Word文档和录频资源），利于重复学习巩固知识。使用开放学习资源，助力教育公平化。
					</p>
					<%--<a href="${pageContext.request.contextPath }/ft/download?filename=${f.name}"><i style="color: rgba(105, 98, 0, 0.651);" class="icon iconfont icon-tongzhi"></i> 关于举办湖北师范大学经济管理与法学院“启明倾听”系列线上青少年志愿普法活动的通知</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(0, 122, 192, 0.651);" class="icon iconfont icon-wendang1"></i>湖北师范大学经济管理与法学院线上“启明倾听”普法活动策划</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第一组学习资源</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第二组学习资源</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第三组学习资源</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第四组学习资源</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第五组学习资源</a><br>
					<a href="${pageContext.request.contextPath }/ft/download"><i style="color: rgba(47, 0, 218, 0.651);" class="icon iconfont icon-yasuobao2"></i>第六组学习资源</a>
--%>
					<c:forEach items="${fqts}" var="f">
						<a href="${pageContext.request.contextPath }/ft/download?filename=${f.filename}">
							<i style="color: rgba(0, 122, 192, 0.651);" class="icon iconfont icon-wendang1"></i>${f.filename}</a><br>
					</c:forEach>

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
						<li><a href="javascript:;" title="" >
								<img src="${pageContext.request.contextPath }/image/index/SY2.png" />
							</a>
						</li>
						<li><a href="javascript:;" title="" >
								<img src="${pageContext.request.contextPath }/image/fo2.png" alt="法治的力量" />
							</a>
						</li>
						<li><a href="javascript:;" title="" >
								<img src="${pageContext.request.contextPath }/image/fo3.png" alt="12.4国家宪法日" />
							</a>
						</li>
					</ul>
				</div>
				<div class="copy">
					<div class="mainWrap">
						<div class="qrCode">
							<a href="javascript:;"  title=""><img src="${pageContext.request.contextPath }/image/qrCode.png" alt=""></a>
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
								<a href="http://beian.miit.gov.cn"  style="color:#fff;">05003319号-1</a>
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