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
    <link rel="short icon" href="${pageContext.request.contextPath}/statics/images/gemini.ico">
    <!--layui框架的核心样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style>
        #table {
            width: 1500px;
            height: 40px;
            margin: 50px auto;
            line-height: 38px;
            border-radius: 4px;
        }
    </style>
</head>
<body class="layui-layout-body" style="background-image: url(${pageContext.request.contextPath}/statics/images/bg.jpg); background-size: cover">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="header.jsp" flush="true"/>
    <jsp:include page="left.jsp" flush="true"/>
    <!--主体部分-->
    <div class="layui-body">
        <!--标题-->
        <div class="margin10" style="text-align: center; margin-top: 30px">
            <h1 style="font-size: 30px" class="layui-col-md4 layui-col-md-offset4">
                <a class="layui-icon layui-icon-username"
                   href="${pageContext.request.contextPath}/admin/myCustomer" style="font-size: 30px"> 客户列表</a></h1>
            <h1 style="font-size: 30px" class="layui-col-md4">
                <a class="layui-icon layui-icon-add-circle"
                   href="${pageContext.request.contextPath}/admin/toAdd" style="font-size: 30px"> Add</a></h1>
        </div>
        <!--查询区域-->
        <div class="layui-form margin10" style="margin-top: 30px">
            <form action="${pageContext.request.contextPath}/admin/query" method="post">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">查找客户</label>
                        <div class="layui-input-inline">
                            <label>
                            <input name="telephone" class="layui-input"
                                   type="text" required lay-verify="required" autocomplete="off">
                            </label>
                        </div>
                    </div>
                    <div class="layui-inline">
                        <button class="layui-btn" lay-submit>搜索</button>
                        <button type="reset" class="layui-btn layui-btn-primary">清除</button>
                    </div>
                </div>
            </form>
        </div>
        <!--表格区-->
        <table class="layui-table" lay-skin="nob" lay-even id="table">
            <thead>
            <tr>
                <th>客户ID</th>
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
                    <td>${customer.id}</td>
                    <td>${customer.name}</td>
                    <td>${customer.telephone}</td>
                    <td>${customer.password}</td>
                    <td>${customer.address}</td>
                    <td>${customer.create_date}</td>
                    <td>
<%--                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">更改</a> |--%>
                        <a href="${pageContext.request.contextPath}/admin/delete/${customer.telephone}">删除</a>
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
