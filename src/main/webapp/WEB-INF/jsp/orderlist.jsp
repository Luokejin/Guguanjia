<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/6
  Time: 20:10
  note: 使用bootstrap输出后台返回的requestScope对象
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>订单列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <!--  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">-->
   <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
    	<blockquote style="margin-top:2rem;">
			<p>
				订单嘛，调试调试就多了，淘宝刷单是不存在的
			</p> <small>著名企业家 <cite>王思聪</cite></small>
		</blockquote>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                ${username} <small>固管家系统平台</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li><a href="<%=appPath%>/user/service">首页</a></li>
                <li><a href="<%=appPath%>/company/list">公司列表</a></li>
                <li class="active"><a href="<%=appPath%>/company/list">订单列表</a></li>
               <!--  <li class="disabled"><a href="#">信息</a></li> -->
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>订单列表 <small>显示当前所有订单信息</small></h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>订单号</th>
                    <th>订单创建时间</th>
                    <th>处置方公司编码</th>
                    <th>安排车辆车牌</th>
                    <th>订单结束时间</th>
                    <th>订单状态</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="order" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${order.orderId}</td>
                        <td>${order.orderCreateTime}</td>
                        <td>${order.disposalId}</td>
                        <c:if test="${order.carNum != null }">
		                	<td> ${order.carNum}</td>
		                </c:if>
		                <c:if test="${order.carNum == null}">
		                	<td>待安排</td>
		                </c:if>
		                
                         <c:if test="${order.orderEndTime != null }">
		                	<td> order.orderEndTime</td>
		                </c:if>
		                <c:if test="${order.orderEndTime == null }">
		                	<td> 订单处理中</td>
		                 </c:if>
		                
                        <td>${order.orderStatus}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="../js/jquery.min.js"></script>
</body>
</html>