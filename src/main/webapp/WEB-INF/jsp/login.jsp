<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/14
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>GEMINI:Clothes Store</title>
    <!--页面图标-->
    <link rel="short icon" href="${pageContext.request.contextPath}/gemini/images/gemini.ico">
    <!--layui框架的核心样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <!--layuiadmin模板的样式文件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/css/login.css">
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <!--登录主体-->
    <div class="layadmin-user-login-main">
        <!--标题-->
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>GEMINI's Clothes Store</h2>
            <p>Login To View My World</p>
        </div>
        <!--登录表单-->
        <form class="layadmin-user-login-box layadmin-user-login-body layui-form" lay-filter="lease-login-form-filter">
            <!--手机号-->
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-telephone"></label>
                <input type="text" name="telephone" id="LAY-user-login-telephone"
                       lay-verify="required|lease_telephone_input_verify"
                       placeholder="telephone" class="layui-input">
            </div>
            <!--密码-->
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <!--密码输入框-->
                <input type="password" name="password" id="LAY-user-login-password"
                       lay-verify="required|lease_password_input_verify"
                       placeholder="password" class="layui-input">
            </div>
            <!--忘记密码-->
            <div class="layui-form-item" style="margin-bottom: 20px;">
                <input type="checkbox" name="remember" lay-skin="primary" title="remember" disabled="disabled">
                <a id="id-forget-password" class="layadmin-user-jump-change layadmin-link"
                   style="margin-top: 7px;">forget your password?</a>
            </div>
            <!--登录按钮-->
            <div class="layui-form-item">
                <button id="lease-login-btn-id" class="layui-btn layui-btn-fluid" lay-submit
                        lay-filter="LAY-user-login-submit">
                    Login In
                </button>
            </div>
            <!--注册-->
            <div class="layadmin-user-login-other">
                <a id="a-id-register" class="layadmin-user-jump-change layadmin-link">Login Up</a>
            </div>
        </form>
    </div>

    <!--页脚-->
    <div class="layui-trans layadmin-user-login-footer">
        <p>© 2021 <a href="" target="_blank">GEMINI's Clothes Store</a></p>
        <p>
            <span><a href="https://github.com/wowpH/Lease" target="_blank">GitHub</a></span>
            <span><a href="https://blog.csdn.net/pfdvnah" target="_blank">CSDN</a></span>
            <span><a href="https://www.layui.com" target="_blank">Layui</a></span>
            <span><a href="https://www.layui.com/admin/pro" target="_blank">LayuiAdmin</a></span>
        </p>
    </div>
</div>

<!--layui框架的基础核心库-->
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!--lease项目自定义的登录js文件-->
<script src="${pageContext.request.contextPath}/gemini/js/login.js" charset="UTF-8"></script>

</body>
</html>
