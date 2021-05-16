<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/16
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>GEMINI:Clothes Store</title>
    <!--页面图标-->
    <link rel="short icon" href="${pageContext.request.contextPath}/gemini/images/gemini.ico">
    <!--layui框架的核心样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="customer/header.jsp" flush="true"/>
    <jsp:include page="customer/left.jsp" flush="true"/>
    <div class="layui-body" style="background-image: url(${pageContext.request.contextPath}/gemini/images/bg2.jpg)">
        <div style="text-align: center; margin-top: 270px; font-size: 50px; color: lightcoral">
            Welcome, My Lord.</div>
    </div>
    <div class="layui-footer">© 2021 GEMINI</div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
