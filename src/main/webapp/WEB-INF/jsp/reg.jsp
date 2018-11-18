<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
<title>注册页面</title>
</head>
<body>
<div class="container" style="margin-top: 5%">
		<blockquote style="margin-bottom:2rem;">
			<p>
				千山万水总是情，注册一个行不行
			</p> <small>著名科学家 <cite>卢本伟</cite></small>
		</blockquote>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron" style="background:#fff;width:50%;margin:0 auto;">
				<div class="row clearfix">
			        <div class="col-md-12 column">
			            <div class="page-header">
			                <h1 style="margin:0 auto;text-algin:center;">
			               		<small>固管家系统平台注册</small>
			                </h1>
			            </div>
			        </div>
			    </div>
				<form action="${pageContext.request.contextPath }/user/addUser" method="post" style="margin:0 auto;margin-top:4rem">
				  <div class="form-group">
				    <label for="userid">用户名</label>
				    <input type="text" class="form-control" name="userid" id="userid" placeholder="用户名">
				  </div>
				  <!-- <div class="form-group">
				    <label for="company">公司名</label>
				    <input type="text" class="form-control" name="companyid" id="companyid" placeholder="公司名">
				  </div> -->
				  <div class="form-group">
				    <label for="password">密码</label>
				    <input type="password" class="form-control"  name="password" id="password" placeholder="密码">
				  </div>
				  <div class="form-group">
				    <label for="name">姓名</label>
				    <input type="text" class="form-control"  name="username" id="username" placeholder="姓名">
				  </div>
				  
				  <button type="submit" class="btn btn-default" style="margin-top:2rem">注册</button>
				</form>
				</div>
			</div>
		</div>
	</div>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="../js/jquery.min.js"></script>
</body>
</html>