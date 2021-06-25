<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
    <title>启明普法教育平台-登录</title>
    <link href="${pageContext.request.contextPath }/css/denglu.css" type="text/css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
    <style>
        .selectMod {
            width: 500px;
            padding-bottom: 10px;
            margin: 0 auto;
            text-align: center;
            margin-top: -15px;
        }

        .selectMod span {
            padding: 5px 10px;
            font-size: 18px;
            cursor: pointer;
        }

        .active {
            border-top: 5px solid #94070a;
            color: #94070a;
        }

        .two {
            display: none;
        }

        .right {
            position: relative;
        }

        .tips {
            content: '';
            display: none;
            position: absolute;
            top: 60px;
            left: 80px;
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
    <img src="${pageContext.request.contextPath }/image/2.png" alt="">
    <p class="title">启明普法教育平台</p>

    <div class="box">
        <div class="selectMod">
            <span class="active">普通登录</span>&emsp;<span>管理登录</span>
        </div>
        <form action="${pageContext.request.contextPath }/login" id="" class="one" method="post">
            <table class="regist1">
                <tr class="verifyUserName">
                    <td class="right">用户名：
                        <div class="tips">用户名长度应在2到6之间</div>
                    </td>
                    <td><input class="input" type="text" name="username" value="" />
                    </td>
                </tr>
                <tr class="verifyPW">
                    <td class="right">密码：
                        <div class="tips">长度在6到10之间，且必须包含数字，大写或小写字母</div>
                    </td>
                    <td><input class="input" type="password" name="password" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input class="check" type="checkbox">
                        <p class="text">记住登录状态</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input class="submit" type="submit" value="登录">
                        <a class="submittwo" href="${pageContext.request.contextPath }/zhuce.jsp">立即注册</a>
                    </td>
                </tr>
            </table>
        </form>
        <form action="${pageContext.request.contextPath }/alogin" id="" class="two" method="post" >
            <table class="regist2">
                <tr class="verifyUserName">
                    <td class="right">用户名：
                        <div class="tips">用户名长度应在2到6之间</div>
                    </td>
                    <td><input class="input" type="text" name="username" value="" />
                    </td>
                </tr>
                <tr class="verifyPW">
                    <td class="right">密码：
                        <div class="tips">长度在6到10之间，且必须包含数字，大写或小写字母</div>
                    </td>
                    <td><input class="input" type="password" name="password" value="" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input class="check" type="checkbox">
                        <p class="text" style="color: blue;">记住登录状态</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input class="submit" type="submit" value="登录">
                        <a class="submittwo" href="${pageContext.request.contextPath }/zhuce.jsp">立即注册</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        $(function () {
            $(".selectMod span").click(function () {
                //排他
                $(".selectMod span").removeClass("active");
                $(".box form").css("display", "none");
                //自己
                $(this).addClass("active");
                var index = $(this).index();
                $(".box form")[index].style.display = "block";
            })
        })


    </script>
</div>
</body>

</html>