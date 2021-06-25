<%--
  Created by IntelliJ IDEA.
  User: 秦绿荣
  Date: 2021/5/28
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>denglu</title>
</head>
<body>
<%
    request.getRequestDispatcher("/WEB-INF/denglu.jsp").forward(request, response);
%>
</body>
</html>
