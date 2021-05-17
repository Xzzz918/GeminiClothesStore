<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/17
  Time: 8:50
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
    <div class="margin10" style="text-align: center; margin-top: 270px;">
      <h1 style="font-size: 30px"><i class="layui-icon layui-icon-key" style="font-size: 30px"></i> 修改密码</h1>
    </div>
    <!-- 内容主体区域 -->
    <form class="layui-form margin10" lay-filter="gemini-change-pwd-form-filter" style="text-align: start; margin-top: 30px; margin-left: 675px">
      <div class="layui-form-item">
        <div class="layui-inline">
          <label class="layui-form-label">验证原密码</label>
          <div class="layui-input-inline">
            <label for="gemini-old-pwd-input-id"></label>
            <input id="gemini-old-pwd-input-id" name="gemini-old-pwd-input-name" class="layui-input"
                   type="password" required lay-verify="required" autocomplete="off">
          </div>
          <div class="layui-form-mid layui-word-aux" id="gemini-old-pwd-tips-div-id"></div>
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-inline">
          <label class="layui-form-label">输入新密码</label>
          <div class="layui-input-inline">
            <label for="gemini-new-pwd-input-id"></label>
            <input id="gemini-new-pwd-input-id" class="layui-input" name="gemini-new-pwd-input-name"
                   type="password" required lay-verify="required" autocomplete="off">
          </div>
          <div id="gemini-new-pwd-tips-div-id" class="layui-form-mid layui-word-aux"></div>
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-inline">
          <label class="layui-form-label">确认新密码</label>
          <div class="layui-input-inline">
            <label for="gemini-confirm-pwd-input-id"></label>
            <input id="gemini-confirm-pwd-input-id" name="gemini-confirm-pwd-input-name" type="password"
                   class="layui-input" required lay-verify="required" autocomplete="off">
          </div>
          <div class="layui-form-mid layui-word-aux" id="gemini-confirm-pwd-tips-div-id"></div>
        </div>
      </div>
      <div class="layui-form-item">
        <div class="layui-input-block">
          <button class="layui-btn" lay-submit lay-filter="gemini-save-btn-filter">确认修改</button>
          <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
      </div>
    </form>
  </div>
  <div class="layui-footer">© 2021 GEMINI</div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/gemini/js/admin/updatePwd.js"></script>
</body>
</html>
