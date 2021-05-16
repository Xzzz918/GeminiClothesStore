<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/16
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="layui-header">
  <div class="layui-logo" style="font-size: 30px;">
    <i class="layui-icon layui-icon-home" style="font-size: 30px;"></i> GEMINI
  </div>
  <!--头部右侧-->
  <ul class="layui-nav layui-layout-right">
    <li class="layui-nav-item">
      <!--头像-->
      <img src="${pageContext.request.contextPath}/gemini/images/gemini.jpg" class="layui-nav-img" alt="admin-head">
      <%=(String) session.getAttribute("user")%>
    </li>
    <!--退出系统-->
    <li class="layui-nav-item">
      <a href="${pageContext.request.contextPath}/login/toLogin" style="font-size: 15px">
        <i class="layui-icon layui-icon-logout" style="font-size: 15px"></i> EXIT
      </a>
    </li>
  </ul>
</div>