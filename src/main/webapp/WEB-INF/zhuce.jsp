<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
  <title>启明普法教育平台-注册</title>
  <link href="${pageContext.request.contextPath }/css/002.css" type="text/css" rel="stylesheet" />
  <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
  <style>
    .clarify {
      width: 200px !important;
      height: 43px !important;
    }

    #reg_form_two {
      display: none;
    }

    .second {
      position: relative;
    }

    .right {
      position: relative;
    }

    .tips {
      content: '';
      display: none;
      position: absolute;
      top: 70px;
      left: 90px;
      width: 500px;
      height: 30px;
      text-align: left;
      color: rgb(168, 26, 21);
      letter-spacing: 2px;

    }
  </style>
</head>

<body>
<div id="container">
  <!-- <div id="header"> <img src="../image/2.png"><img src="../image/3.png"> -->
  <div id="header"> <img src="${pageContext.request.contextPath }/image/logo1.png">
    <div id="word1">启明普法教育平台</div>
  </div>
  <div id="content">
    <div id="box">
      <div class="selectMod">
        <span>普通注册</span>
      </div>
      <form action="${pageContext.request.contextPath }/register" id="reg_form_one" method="post" onsubmit="return submitAction()">
        <table class="regist1">
          <tr class="verifyName">
            <td class="right">真实姓名<div class="tips">请输入中文</div>
            </td>
            <td class="second">
              <input id="name" type="text" name="truename">
            </td>
            <td class="size">请输入真实姓名，其他用户不可见，平台将严格保密</td>
          </tr>
          <tr class="verifyId">
            <td class="right">身份证号<div class="tips">请输入正确的身份证号</div>
            </td>
            <td class="second">
              <input id="card" type="text" name="id_card">
            </td>
            <td class="size">将进行身份验证，其他用户不可见，平台将严格保密</td>
          </tr>
          <tr class="verifyUserName">
            <td class="right">用户名<div class="tips">用户名长度应在2到6之间</div>
            </td>
            <td class="second">
              <input id="username" type="text" name="username">
            </td>
            <td class="size">长度为2到6之间，将公开显示</td>
          </tr>
          <tr class="verifyPW">
            <td class="right">密码<div class="tips">密码格式不正确，请重新填写</div>
            </td>
            <td class="second">
              <input id="pwd" type="password" name="password">
            </td>
            <td class="size">长度在6到10之间，可包含数字，大写或小写字母</td>
          </tr>
          <tr class="verifyRPW">
            <td class="right">确认密码<div class="tips">与之前输入的密码不一致</div>
            </td>
            <td class="second">
              <input id="pwd2" type="password">
            </td>
            <td class="size">请再次输入密码</td>
          </tr>
        </table>
        <span id="submitBtn"><input class="submit" name="smBtn" type="submit" value="立即注册"></span>
        <a href="${pageContext.request.contextPath }/index.jsp"> <input class="reset" type="button" value="返回首页"></a>
      </form>

    </div>
  </div>
</div>
<script>
  //正则表达式验证
  var verify = 1;
  //姓名
  $(".regist1 .verifyName input").change(function () {
    var reg = /[\u4e00-\u9fa5]/;
    if (!reg.test($(this).val())) {
      $(".regist1 .verifyName .tips").css({
        "display": "block",
        "visibility": "visible",
      });

      $(this).val('');
    } else {
      $(".regist1 .verifyName .tips").css({
        "display": "none",
        "visibility": "hidden",
      });

    }
  })
  //身份证号
  $(".regist1 .verifyId input").change(function () {
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if (!reg.test($(this).val())) {
      $(".regist1 .verifyId .tips").css({
        "display": "block",
        "visibility": "visible",
      });
      $(this).val('');
    } else {
      $(".regist1 .verifyId .tips").css({
        "display": "none",
        "visibility": "hidden",
      });

    }
  })
  //用户名
  $(".regist1 .verifyUserName input").change(function () {
    var reg = /^.{2,6}$/;
    if (!reg.test($(this).val())) {
      $(".regist1 .verifyUserName .tips").css({
        "display": "block",
        "visibility": "visible",
      });

      $(this).val('');
    } else {
      $(".regist1 .verifyUserName .tips").css({
        "display": "none",
        "visibility": "hidden",
      });

    }
  })
  //密码
  $(".regist1 .verifyPW input").change(function () {
    var reg = /^[A-Za-z0-9]{6,10}$/;
    if (!reg.test($(this).val())) {
      $(".regist1 .verifyPW .tips").css({
        "display": "block",
        "visibility": "visible",
      });
     $(this).val('');
    } else {
      $(".regist1 .verifyPW .tips").css({
        "display": "none",
        "visibility": "hidden",
      });

    }
  })

  function submitAction() {
    if($(".verifyPW input").val()!=$(".verifyRPW input").val()){
      alert("两次输入密码不一致");
      return false;
    }else{
      return true;
    }
  }
</script>
</body>

</html>