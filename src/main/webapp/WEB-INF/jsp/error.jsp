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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
<html>
<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
<title>错误页面</title>
<style>
	.main{
    text-align: center; /*让div内部文字居中*/
    background-color: #fff;
    border-radius: 20px;
    width: 300px;
    height: 350px;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}
</style>
</head>
<body>
	<div class="container" style="margin-top: 5%">
	<blockquote style="margin-top:2rem;">
		<p>
			显然，作为错误页面，我也是全身权术的
		</p> <small>著名舞蹈家 <cite>广场大妈</cite></small>
	</blockquote>
	<div class="main">
        <h1>${message}</h1>
    </div>
	</div>
	<script src="../js/jquery.min.js"></script>
	<script>
		setTimeout(function(){
			location.href="<%=appPath%>/";
		},5000);  
		
	</script>
</body>

</html>