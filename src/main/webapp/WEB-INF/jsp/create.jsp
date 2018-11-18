<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
<title>发起工单</title>
</head>
<body>
	<div class="container" style="margin-top:5%">
		<blockquote >
			<p>
				提交订单前，要再三确认订单信息
			</p> <small>著名文学家 <cite>鲁迅</cite></small>
		</blockquote>
		
	<div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" >
                <h1 style="margin:0 auto;text-align:center">
                  	发起工单
                </h1>
            </div>
        </div>
    </div>
		<div class="row clearfix">
        <div class="col-md-12 column" style="margin-top:3rem";>
        	<div class="col-md-6 column">
        		<div style="margin:0 auto;text-align:center">
                <h3>公司编号: <small>${company.companyId}</small></h3>
                <h3>处理资质: <small>${company.companyProcessAbility}</small></h3>
                <h3>公司实力: <small>${company.companyPower}</small></h3>
                <h3>公司简介: <small>${company.companyIntroduction}</small></h3>
                <h3>联系方式: <small>${company.companyCallnum}</small></h3>
                <h3>公司名: <small>${company.companyName}</small></h3>
                 
                 
            </div>
			</div>
			<div class="col-md-6 column">
				<div style="width:80%;"><img src="../../img/timg.jpg" width="100%"></div>
			</div>
			
          	<form action="${pageContext.request.contextPath }/order/create" method="post">
				  <div class="form-group" style="display:none">
				    <label for="carNum">车牌</label>
				    <input type="text" class="form-control" name="carNum" id="carNum" value="待安排" >
				  </div>
				  <div class="form-group" style="display:none">
				    <label for="orderStatus">订单状态</label>
				    <input type="text" class="form-control" name="orderStatus" id="orderStatus" value="待安排" >
				  </div>
				  <div class="form-group" style="display:none">
				    <label for="orderCreateTime">订单创建时间</label>
				    <input type="text" class="form-control"  name="orderCreateTime" id="orderCreateTime"  >
				  </div>
				  <div class="form-group" style="display:none">
				    <label for="orderEndTime">订单结束时间</label>
				    <input type="text" class="form-control"  name="orderEndTime" id="orderEndTime" value="订单处理中" >
				  </div>
				  <div class="form-group" style="display:none">
				    <label for="userId">请输入发起订单用户账号</label>
				    <input type="text" class="form-control" name="userId" id="userId" placeholder="用户账号">
				  </div>
				  
				  <div class="form-group" style="display:none">
				    <label for="disposalId">处置方公司编号</label>
				    <input type="text" class="form-control" name="disposalId" id="disposalId" value="${companyId}">
				  </div>
				  
				  <button type="submit" class="btn btn-default" style="margin:0 auto;text-align:center;margin-top:4rem;,margin-bottom:2rem;">发起委托</button>
			</form>	
        </div>
    </div>
				
	</div>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="../../js/jquery.min.js"></script>
</body>
</html>