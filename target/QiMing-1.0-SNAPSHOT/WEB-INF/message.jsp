<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>三秒之后自动跳转</title>
    <style>
        div{
            font-size: 16px;
            text-align: left;
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
            location.href = "${pageContext.request.contextPath }/administrator1";
        }
        div.innerHTML = '文件上传成功，您将在'+t+'秒后跳转至文件上传页!!';
        t--;
    }
</script>
</body>
</html>

