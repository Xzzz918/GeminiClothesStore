<%--
  Created by IntelliJ IDEA.
  User: 88414
  Date: 2021/5/16
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    .lease-li {
        text-align: center;
    }
</style>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item lease-li"><a href="${pageContext.request.contextPath}/admin/index">我的订单</a></li>
            <li class="layui-nav-item lease-li"><a href="${pageContext.request.contextPath}/admin/index">我的服装</a></li>
            <li class="layui-nav-item lease-li"><a href="${pageContext.request.contextPath}/admin/myCustomer">我的顾客</a></li>
            <li class="layui-nav-item lease-li"><a href="${pageContext.request.contextPath}/admin/toUpdatePwd">修改密码</a></li>
        </ul>
    </div>
</div>
