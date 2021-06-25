<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>三秒之后自动跳转</title>
    <style>
        div{
            font-size: 16px;
            background-color: coral;
            height: 50px;
            width: 300px;
            text-align: center;
            line-height: 50px;
            margin: auto ;
            margin-top: 250px;
        }
    </style>
</head>
<body>
<div>

</div>
<script>
    var div = document.querySelector('div');
    var t = 3;
    fn();
    setInterval(fn, 1000);
    function fn() {
        if (t === 0){
            location.href = "${pageContext.request.contextPath }/html/administrator.jsp";
        }
        div.innerHTML = '新闻添加成功，您将在'+t+'秒后跳转至新闻添加页!!';
        t--;
    }
</script>
</body>
</html>

