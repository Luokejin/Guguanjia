<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>添加书本</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="margin-top:5%">
	
		<blockquote >
			<p>
				订单创建成功，你就是我的人了
			</p> <small>著名数学家 <cite>拉格朗日</cite></small>
		</blockquote>
	
	
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="" >
                <h1 style="margin:0 auto;text-align:center">
                  	订单详情
                </h1>
            </div>
        </div>
    </div>
    
    <div class="row clearfix">
        <div class="col-md-12 column">
           <div style="margin:0 auto;text-align:center">
                <h3>订单号: <small>${order.orderId}</small></h3>
                <h3>订单创建时间: <small>${order.orderCreateTime}</small></h3>
                <h3>创建订单账号: <small>${order.userId}</small></h3>
                <h3>处置方公司编码: <small>${order.disposalId}</small></h3>
                <c:if test="${order.carNum != null }">
                	<h3>安排车辆车牌: <small>${order.carNum}</small></h3>
                </c:if>
                <c:if test="${order.carNum == null}">
                	<h3>安排车辆车牌: <small>待安排</small></h3>
                </c:if>
                <h3>订单状态: <small>${order.orderStatus}</small></h3>
                <c:if test="${order.orderEndTime != null }">
                	<h3>订单结束时间: <small>${order.orderEndTime}</small></h3>
                 </c:if>
                 <c:if test="${order.orderEndTime == null }">
                	<h3>订单结束时间: <small>订单处理中</small></h3>
                 </c:if>
                 	
                  <p style="margin:0 auto;text-align:center;margin-top:4rem;,margin-bottom:2rem;">
					<a class="btn btn-primary btn-large" href="<%=appPath%>/order/list">更多订单</a>
				 </p>
            </div>
            
           
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="../js/jquery.min.js"></script>
</body>
</html>

