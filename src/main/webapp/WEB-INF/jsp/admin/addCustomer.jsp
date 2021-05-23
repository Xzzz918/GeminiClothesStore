<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/23
  Time: 11:58
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
    <!-- 中间主体部分 -->
    <div class="layui-body margin10">
        <!--标题-->
        <div class="margin10" style="text-align: left">
            <h1 style="font-size: 30px"><i class="layui-icon layui-icon-username" style="font-size: 30px"></i> 添加客户</h1>
        </div>
        <!-- 内容主体区域 -->
        <form class="layui-form layui-col-md3" action="${pageContext.request.contextPath}/admin/add" method="post" style="margin-top: 30px;text-align: center">
            <div class="layui-form-item">
                <label class="layui-form-label"><i>客户昵称：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="name" value="${customer.name}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>客户电话：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="telephone" value="${customer.telephone}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>客户密码：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="password" value="${customer.password}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>客户地址：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="address" value="${customer.address}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit >添加</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
    <div class="layui-footer">© 2021 GEMINI</div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
