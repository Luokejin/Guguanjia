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
    <title>图书列表</title>
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
				公司不在多，有钱则灵；内容不在丰富，人帅则行
			</p> <small>著名DNF玩家 <cite>冼鹏亮</cite></small>
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
                <li class="active"><a href="<%=appPath%>/company/list">公司列表</a></li>
                <li><a href="<%=appPath%>/order/list">订单列表</a></li>
               <!--  <li class="disabled"><a href="#">信息</a></li> -->
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>公司列表 <small>显示当前所有公司信息</small></h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>公司编号</th>
                    <th>处理资质</th>
                    <th>公司实力</th>
                    <th>公司介绍</th>
                    <th>联系方式</th>
                    <th>公司名</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="company" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${company.companyId}</td>
                        <td>${company.companyProcessAbility}</td>
                        <td>${company.companyPower}</td>
                        <td>${company.companyIntroduction}</td>
                        <td>${company.companyCallnum}</td>
                        <td>${company.companyName}</td>
                        <td>
                            <a href="<%=appPath%>/order/create/${company.companyId}">委托</a>
                        </td>

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