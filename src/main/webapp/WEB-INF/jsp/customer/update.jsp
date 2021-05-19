<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/17
  Time: 20:24
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
    <style>
        form{
            width: 500px;
            height: 40px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            border-radius: 4px;
        }
        i{
            font-weight: bold;
        }
    </style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="header.jsp" flush="true"/>
    <jsp:include page="left.jsp" flush="true"/>
    <div class="layui-body" style="background-image: url(${pageContext.request.contextPath}/gemini/images/bg.jpg)">
        <div class="margin10" style="text-align: center; margin-top: 30px;">
            <h1 style="font-size: 30px;text-align: center"><i class="layui-icon layui-icon-release" style="font-size: 30px"></i> 修改信息</h1>
        </div>
        <form class="layui-form" action="${pageContext.request.contextPath}/customer/updateCustomer" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label"><i>修改昵称：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="name" value="${customer.name}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>我的电话：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="telephone" readonly value="${customer.telephone}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>修改密码：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="password" value="${customer.password}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><i>修改地址：</i></label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="address" value="${customer.address}" required  lay-verify="required" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit >立即修改</button>
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
