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
<body style="background-image: url(${pageContext.request.contextPath}/gemini/images/bg3.jpg); background-size: cover">

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <!--登录主体-->
    <div class="layadmin-user-login-main">
        <!--标题-->
        <div class="layadmin-user-login-box layadmin-user-login-header" style="color: #393D49; border-style: solid;border-radius: 20px">
            <h2>GEMINI's Clothes Store</h2>
            <p style="color: #0C0C0C;font-weight: bolder; font-size: 15px">Login To View My World</p>
        </div>
        <!--登录表单-->
        <form class="layadmin-user-login-box layadmin-user-login-body layui-form" lay-filter="gemini-login-form-filter">
            <!--手机号-->
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-telephone"></label>
                <input type="text" name="telephone" id="LAY-user-login-telephone"
                       lay-verify="required|gemini_telephone_input_verify"
                       placeholder="telephone" class="layui-input">
            </div>
            <!--密码-->
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <!--密码输入框-->
                <input type="password" name="password" id="LAY-user-login-password"
                       lay-verify="required|gemini_password_input_verify"
                       placeholder="password(not less than 6 codes)" class="layui-input">
            </div>
            <!--登录按钮-->
            <div class="layui-form-item">
                <button id="gemini-login-btn-id" class="layui-btn layui-btn-fluid" lay-submit
                        lay-filter="LAY-user-login-submit">
                    Login In
                </button>
            </div>
            <!--注册-->
            <div class="layadmin-user-login-other">
                <a id="a-id-register" class="layadmin-user-jump-change layadmin-link" style="color: #312f38">Sign Up</a>
            </div>
        </form>
    </div>

    <!--页脚-->
    <div class="layui-trans layadmin-user-login-footer">
        <p>© 2021 <a href="" target="_blank" style="color: #f1f2f0;font-weight: bolder">GEMINI's Clothes Store</a></p>
        <p>
            <span><a href="https://github.com/Xzzz918/GeminiClothesStore" target="_blank" style="color: #f1f2f0">GitHub</a></span>
            <span><a href="https://www.zhihu.com/people/shi-xing-62-50" target="_blank" style="color: #f1f2f0">ZHIHU</a></span>
            <span><a href="https://www.gemini.fit" target="_blank" style="color: #f1f2f0">Gemini</a></span>
            <span><a href="https://space.bilibili.com/119198836" target="_blank" style="color: #f1f2f0">Bilibili</a></span>
        </p>
    </div>
</div>

<!--layui框架的基础核心库-->
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!--项目自定义的登录js文件-->
<script src="${pageContext.request.contextPath}/gemini/js/login.js" charset="UTF-8"></script>

</body>
</html>
