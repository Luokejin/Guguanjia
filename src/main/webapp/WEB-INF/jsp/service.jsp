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
    <title>首页</title>
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
				首页已经燃烧我的卡路里了，所以内容嘛，给我杨超越个面子
			</p> <small>著名歌唱家 <cite>杨超越</cite></small>
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
                <li class="active"><a href="<%=appPath%>/user/service">首页</a></li>
                <li><a href="<%=appPath%>/company/list">公司列表</a></li>
                <li><a href="<%=appPath%>/order/list">订单列表</a></li>
               <!--  <li class="disabled"><a href="#">信息</a></li> -->
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column" style="margin-top:2rem">
	       	<!-- 轮播图容器 -->  
	     <div style="width:80%;margin:0 auto;">  	
	        <div id="carousel-example-generic" class="carousel slide">  
	            <!-- 轮播图上的圆圈链接 -->  
	            <ol class="carousel-indicators radiou">  
	                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>  
	                <li data-target="#carousel-example-generic" data-slide-to="1"></li>  
	                <li data-target="#carousel-example-generic" data-slide-to="2"></li>  
	            </ol>  
	            <!-- 轮播图具体内容 -->  
	            <div class="carousel-inner">  
	                <div class="item active">  
	                	<img src="../img/timg.jpg"/>
	                    <!-- 图上文字 -->  
	                    <div class="carousel-caption">  
	                        <h4>
								系统介绍
							</h4>
							<p>
								本次系统主要功能是为产废方处理危害品，能够在线填写危害品相关信息并下单，代下单完成后生成一份工单让产废方清楚处理危害品公司相关信息与了解危害品处理情况。
							</p> 
	                    </div>  
	                </div>  
	                <div class="item"> 
	                <img src="../img/timg.jpg"/> 
	                    <!-- 图上文字 -->  
	                    <div class="carousel-caption">  
	                        <h4>
								系统介绍
							</h4>
							<p>
								本次系统主要功能是为产废方处理危害品，能够在线填写危害品相关信息并下单，代下单完成后生成一份工单让产废方清楚处理危害品公司相关信息与了解危害品处理情况。
							</p> 
	                    </div>  
	                </div>  
	                <div class="item">  
	                <img src="../img/timg.jpg"/>
	                    <!-- 图上文字 -->  
	                    <div class="carousel-caption">  
	                        <h4>
								系统介绍
							</h4>
							<p>
								本次系统主要功能是为产废方处理危害品，能够在线填写危害品相关信息并下单，代下单完成后生成一份工单让产废方清楚处理危害品公司相关信息与了解危害品处理情况。
							</p> 
	                    </div>  
	                </div>  
	            </div>  
	            <!-- 轮播图上的向前一图切换链接 -->  
	            <a href="#carousel-example-generic" data-slide="prev" class="left carousel-control">  
	                
	            </a>  
	            <!-- 轮播图上的向后一图切换链接 -->  
	            <a href="#carousel-example-generic" data-slide="next" class="right carousel-control">  
	                
	            </a>  
	        </div> 
	      </div> 
    </div>  
    
        	
			
            
   
    
    </div>
</div>
<!-- 引入jquery与bootstrap的js文件 -->  
    <script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>  
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
    <script>  
        $(".carousel").carousel({  
            interval:5000 //每隔两秒自动轮播  
        })  
    </script>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>