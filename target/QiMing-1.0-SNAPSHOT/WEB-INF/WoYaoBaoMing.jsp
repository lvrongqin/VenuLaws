<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
  <title>启明普法教育平台-注册</title>
  <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
  <style>
    * {
      margin: 0px;
      padding: 0px;
      list-style: none;
    }

    a {
      text-decoration: none;
      color: white;
    }

   .wrapper{
      font-family:'Courier New', Courier, monospace;
    }

    #header {
      width: 100%;
      height: 102px;
      background: #94070a;
      line-height: 102px;
    }

    #header img {
      float: left;
      width: 100px;
    }

    #header p {
      float: right;
    }

    #header a {
      color: #555555;
      text-decoration: none;
      margin-right: 50px;
    }

    #word1 {
      display: block;
      position: absolute;
      /* left:1250px; */
      right: 30px;
      top: 15px;
      z-index: 9999;
      font-size: 17px;
      color: #fff !important;
    }

    .wrapper {
      position: relative;
      width: 800px;
      padding-top: 50px;
      margin: 0 auto;
      font-size: 18px;
      padding: 100px 0;
    }
    .wrapper .back{
      display: block;
      position: absolute;
      top: 30px;
      left: -100px;
      height: 30px;
      line-height: 35px;
      padding: 2px 10px;
      font-weight: bold;
      color: #fff;
      background-color: #94070a;
      border-radius: 5px;
    }
    .wrapper form>div {
      margin-bottom: 20px;
    }

    input {
      width: 250px;
      height: 20px;
      padding-left: 5px;
      font-size: 16px;
    }

    textarea {
      width: 100%;
      padding: 5px;
      margin-top: 10px;
      box-sizing: border-box;
      resize: none;
    }

    select {
      height: 25px;
      font-size: 17px;
    }

    .signWrapper {
      padding-bottom: 20px;
      font-size: 20px;
      border-bottom: 2px solid #94070a;
      color: #94070a;
    }

    .signWrapper select {
      height: 30px;
      font-size: 17px;
    }

    .genderWrapper input {
      width: 15px;
      height: 15px;
      margin-top: 2px;
      margin-left: 5px;
      text-align: center;
    }

    .nationWrapper input {
      width: 100px;
    }

    .birthWrapper input {
      width: 135px;
    }

    .adressWrapper input {
      width: 60px;
      margin: 0 2px;
      
    }

    .careerWrapper {
      position: relative;
    }

    #career1,
    #career2,
    #career3 {
      position: absolute;
      top: 0;
      left: 250px;
      display: none;
    }

    .majorWrapper {
      display: none;
    }

    .photoWrapper input {
      height: 30px;
    }

    .submitWrapper {
      position: relative;
    }

    .submitWrapper span {
      position: absolute;
      left: 50%;
      transform: translateX(-50%);

    }

    .submitWrapper input {
      width: 200px;
      height: 40px;
      margin: 0 auto;
      border-radius: 10px;
      outline: none;
      border: none;
      background-color: #94070a;
      color: #fff;
      cursor: pointer;
    }
    .submitWrapper input:hover{
      background-color: #dd0206;
    }
  </style>
</head>

<body>
  <div id="header"> <img src="${pageContext.request.contextPath }/image/logo1.png">
    <div id="word1">启明普法教育平台</div>
  </div>
  <div class="wrapper">
    <a class="back" href="${pageContext.request.contextPath }/TSHDMoNiFaTing">&lt;返回</a>
    <form action="${pageContext.request.contextPath }/ft/apply" name="signForm" method="post">
      <div class="signWrapper">
        拟报活动：
        <select name="category">
          <option value="" id="no">请选择您报名的活动</option>
          <option value="模拟法庭">模拟法庭</option>
          <option value="启明倾听">启明倾听</option>
        </select>
      </div>
      <div class="nameWrapper">姓名：<input type="text" name="name"></div>
      <div class="genderWrapper">性别：男<input type="radio" name="gender" value="男"> 女<input type="radio" name="gender" value="女"></div>
      <div class="nationWrapper">民族：<input type="text"></div>
      <div class="birthWrapper">出生年月：<input type="date"></div>
      <div class="idWrapper">身份证号：<input type="text"></div>
      <div class="status">政治面貌：<input type="text"></div>
      <div class="telWrapper"> 联系电话：<input type="tel"></div>
      <div class="adressWrapper">所在地区：<input type="text">省<input type="text">市<input type="text">县/区</div>
      <div class="careerWrapper">
        职业情况：
        <select name="career" id="careerMod" onchange="change()">
          <option value="" id="no">--职业类别--</option>
          <option value="">法律工作者</option>
          <option value="">非法律工作者</option>
          <option value="">学生</option>
        </select>
        <select name="career1" id="career1">
          <option value="" id="no">--详细职业--</option>
          <option value="">在任法官</option>
          <option value="">在职律师</option>
          <option value="">其他法律工作者</option>
          <option value="">法律工作退(离)休人员</option>
        </select>
        <select name="career2" id="career2">
          <option value="" id="no">--详细职业--</option>
          <option value="">国家公务员</option>
          <option value="">专业技术人员</option>
          <option value="">职员</option>
          <option value="">企业管理人员</option>
          <option value="">工人</option>
          <option value="">农民</option>
          <option value="">个体经营者</option>
          <option value="">教师</option>
          <option value="">现役军人</option>
          <option value="">自由职业者</option>
          <option value="">无业人员</option>
          <option value="">退(离)休人员</option>
        </select>
        <select name="career3" id="career3">
          <option value="" id="no">--详细情况--</option>
          <option value="">博士研究生</option>
          <option value="">硕士研究生</option>
          <option value="">大学本科</option>
          <option value="">大学专科</option>
          <option value="">普通高中</option>
          <option value="">职业高中</option>
          <option value="">职工学校</option>
          <option value="">其他</option>
        </select>
      </div>
      <div class="majorWrapper">在校专业： <input type="text"></div>
      <div class="photoWrapper">个人照片(蓝底一寸) ：<input type="file" name="file"></div>
      <div class="experience">实践经历：<br /><textarea name="expe" id="" cols="30" rows="10"></textarea></div>
      <div class="remarkWrapper">备注：<br /><textarea name="" id="" cols="30" rows="10"></textarea></div>
      <div class="submitWrapper"><span><input type="submit" name="" id=""></span></div>
    </form>
    <script>
      $("select").change(function () {
        console.log(123);
        $(this).children("#no").remove();
      })
      function change() {
        $("#career1,#career2,#career3").css("display", "none");
        $(".majorWrapper").css("display", "none");
        var options = $("#careerMod option:selected");
        if (options.text() == '法律工作者') {
          $("#career1").css("display", "block");
        } else if (options.text() == '非法律工作者')
          $("#career2").css("display", "block");
        else if (options.text() == '学生') {
          $("#career3").css("display", "block");
          $(".majorWrapper").css("display", "block");
        }
      }
    </script>
  </div>

</body>

</html>