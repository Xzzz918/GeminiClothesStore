<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/19
  Time: 8:53
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
    <style>
        #table {
            width: 500px;
            height: 40px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            border-radius: 4px;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="header.jsp" flush="true"/>
    <jsp:include page="left.jsp" flush="true"/>
    <div class="layui-body" style="background-image: url(${pageContext.request.contextPath}/statics/images/bg.jpg)">
        <div class="margin10" style="text-align: center; margin-top: 30px;">
            <h1 style="font-size: 30px;text-align: center"><i class="layui-icon layui-icon-username" style="font-size: 30px"></i> 个人信息</h1>
        </div>
        <table class="layui-table" id="table" lay-even lay-skin="nob" style="text-align: center">
            <tbody>
            <tr>
                <td>我的ID</td>
                <td>${customer.id}</td>
            </tr>
            <tr>
                <td>我的昵称</td>
                <td>${customer.name}</td>
            </tr>
            <tr>
                <td>我的电话</td>
                <td>${customer.telephone}</td>
            </tr>
            <tr>
                <td>我的密码</td>
                <td>${customer.password}</td>
            </tr>
            <tr>
                <td>我的地址</td>
                <td>${customer.address}</td>
            </tr>
            <tr>
                <td>我的生日</td>
                <td>${customer.create_date}</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="layui-footer">© 2021 GEMINI</div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
