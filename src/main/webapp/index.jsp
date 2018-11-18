<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta charset="utf-8">
   <link href="css/bootstrap.min.css" rel="stylesheet">
   <title>登录页面</title>
</head>
<body>
<div class="container" style="margin-top: 5%">
		<blockquote style="margin-bottom:2rem;">
			<p>
				来了就要登录，毕竟我也不是什么恶魔
			</p> <small>著名政治家 <cite>特朗普</cite></small>
		</blockquote>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="jumbotron">
				<h1 style="width:50%;margin:0 auto;margin-top:2rem;">
					固管家系统平台
				</h1>
				
				
				<form action="${pageContext.request.contextPath }/user/login" method="post" style="width:50%;margin:0 auto;margin-top:4rem;">
				
				 <!--  <div class="form-group">
				    <label for="book_id">图书编号</label>
				    <input type="text" class="form-control" name="book_id" id="book_id" placeholder="图书编号">
				  </div> -->
				  <div class="form-group">
				    <label for="name">用户名</label>
				    <input type="text" class="form-control" name="userid" id="userid" placeholder="用户名">
				  </div> 
				  <div class="form-group">
				    <label for="number">密码</label>
				    <input type="password" class="form-control"  name="password" id="password" placeholder="密码">
				  </div>
				  
				  <br><br>
				 <a class="btn btn-primary btn-large" href="<%=appPath%>/user/addUser">没有账号？前往注册</a>
				 <br>
				<br>
				  <button type="submit" class="btn btn-default">登录</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
</body>
</html>
