<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/17
  Time: 17:26
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
<body class="layui-layout-body" style="background-image: url(${pageContext.request.contextPath}/gemini/images/bg.jpg); background-size: cover">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="header.jsp" flush="true"/>
    <jsp:include page="left.jsp" flush="true"/>
    <!--主体部分-->
    <div class="layui-body">
        <div class="margin10" style="text-align: center; margin-top: 30px;">
            <h1 style="font-size: 30px"><i class="layui-icon layui-icon-username" style="font-size: 30px"></i> 客户列表</h1>
        </div>
        <table class="layui-table" lay-skin="nob" lay-even>
            <thead>
            <tr>
                <th>客户姓名</th>
                <th>客户电话</th>
                <th>客户密码</th>
                <th>客户地址</th>
                <th>入会时间</th>
                <th>设置</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${requestScope.get('customers')}">
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.telephone}</td>
                    <td>${customer.password}</td>
                    <td>${customer.address}</td>
                    <td>${customer.create_date}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">更改</a> |
                        <a href="${pageContext.request.contextPath}/book/del/${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="layui-footer">© 2021 GEMINI</div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
