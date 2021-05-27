<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/14
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>GEMINI:Clothes Store</title>
    <!--页面图标-->
    <link rel="short icon" href="${pageContext.request.contextPath}/statics/images/gemini.ico">
    <!--layui框架的核心样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <jsp:include page="admin/header.jsp" flush="true"/>
        <jsp:include page="admin/left.jsp" flush="true"/>
        <div class="layui-body" style="background-image: url(${pageContext.request.contextPath}/statics/images/bg4.jpg)">
            <div style="text-align: center; margin-top: 270px; font-size: 50px;">WELCOME, ADMIN.</div>
        </div>
        <div class="layui-footer">© 2021 GEMINI</div>
    </div>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
