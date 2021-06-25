<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />

	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/XiuGaiZiLiao.css">

	<title>我的信息-修改资料</title>
</head>

<body>
	<div id="container">
		<div id="header">
			<span class="word">
				修改资料
			</span>
			<a href="${pageContext.request.contextPath }/WoDeXinXi">
				返回
			</a>
		</div>
		<div id="content">
			<form enctype="multipart/form-data" method="post">
				<div class="left">
					<img src="${pageContext.request.contextPath }/image/TX.png" alt="" /><br>
					<button>上传照片</button>
					<input type="file" name="file" class="file" id="img"><br>
				</div>
			</form>
			<form>
				<div class="right">
					<div class="nameWrapper">
						<span class="attr">昵称：</span>
						<div class="iptName">
							<input type="text" id="username" value="${user1.username}" style="padding-left: 5px;">
						</div>
					</div>
					<div class="sexWrapper">
						<span class="attr">性别：</span>
						<div class="selectSex" id="gender">
							<input type="radio" name="gender" value="男" style="zoom: 120%;">&nbsp;男
							<input type="radio" name="gender" value="女" style="zoom: 120%;">&nbsp;女
						</div>
					</div>
					<div class="birthday">
						<span class="attr">生日：</span>
						<input type="date" id="birth">
					</div>

					<div class="slogan">
						<span class="attr">宣言：</span>
						<div class="writeSlogan">
							<textarea cols="60" rows="3" name="declar" id="declar" style="padding: 5px;"></textarea>
						</div>
					</div>
					<button type="button" id="btn">完成</button>
				</div>
			</form>
			<script>
				$(function () {
					$(".birthday input").change(function () {
						console.log($(".birthday input").val());
					})
					$(".right button").click(function () {
						if ($(".right input").val() == '' || $(".right textarea").val() == '') {
							alert("请填完相关信息");
							return;
						}
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
	<script type="text/javascript">
		function imgUpload() {
			let formData = new FormData();
			formData.append('file', $(".file")[0].files[0])
			$.ajax({
				url: "${pageContext.request.contextPath }/imgUpload",
				method: "post",
				data: formData,
				processData: false,
				contentType: false,
				dataType: "json",
				async: false,
				success: function (resp) {
					console.log("success!!")
				}
			})
		}
		$(function () {
			$("#btn").click(function () {
				imgUpload();
				$.ajax({
					url: "${pageContext.request.contextPath }/updateUser",
					type: "post",
					data: {
						"username": $("#username").val(),
						"gender": $('input:radio:checked').val(),
						"birth": $("#birth").val(),
						"declar": $("#declar").val(),
					},
					dataType: "json",
					success: function (response) {
							window.location.href = "${pageContext.request.contextPath }/WoDeXinXi";
					},
					error:function(){
						alert("请求错误")
					}
				});
			});
		})
	</script>
</body>

</html>