<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>jQuery导航图片全屏滚动代码 - 站长素材</title>

<!--默认样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">

<!--响应式框架-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css">

<!--css3动画库-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css">

<!--banner大图基础样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/slick.css">

<!--页面滚动基础样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery.fullPage.css" />

<!--导航样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/head.css" />

<!--图片和滚屏样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">

</head>
<body>
<!-- 导航 -->
<header class="header"> 
	<div class="container clearfix"> 
		<div class="fr nav"> 
			<ul class="navbar_nav" data-in="fadeInDown" data-out="fadeOutUp">
				<li class="active">
					<a href="javascript:void(0)">首页</a>					</li>
				<li class="dropdown">
					<a href="javascript:void(0)">
						业务体系						</a>
					<div class="dropdown_menu">
						<a href="#">Custom Menu</a>
						<a href="#">Custom Menu</a>
						<a href="#">Custom Menu</a>						</div>
				</li>
				<li class="dropdown">
					<a href="javascript:void(0)">直营园</a>
					<div class="dropdown_menu">
						<a href="#">Custom Menu</a>
						<a href="#">Custom Menu</a>
						<a href="#">Custom Menu</a>						</div>
				</li>
				<li>
					<a href="javascript:void(0)">行知资讯</a>					</li>
				<li>
					<a href="javascript:void(0)">关于我们</a>					</li>
				<li>
					<a href="javascript:void(0)">联系合作</a>					</li>
			</ul>
		</div>
		<a href="javascript:void(0)" id="navToggle">
			<span></span>
		</a>
	</div>
</header>
<!--移动端的导航-->
<div class="m_nav">
	<div class="top clearfix">
		<img src="image/closed.png" alt="" class="closed" />
	</div>
	<div class="logo">
		<img src="image/logo2.jpg" alt="" />
	</div>
	<ul class="ul" data-in="fadeInDown" data-out="fadeOutUp">
		<li class="active">
			<a href="javascript:void(0)">首页</a>
		</li>
		<li class="dropdown">
			<a href="javascript:void(0)">
				业务体系
			</a>
			<div class="dropdown_menu">
				<a href="#">Custom Menu</a>
				<a href="#">Custom Menu</a>
				<a href="#">Custom Menu</a>
			</div>
		</li>
		<li class="dropdown">
			<a href="javascript:void(0)">直营园</a>
			<div class="dropdown_menu">
				<a href="#">Custom Menu</a>
				<a href="#">Custom Menu</a>
				<a href="#">Custom Menu</a>
			</div>
		</li>
		<li>
			<a href="javascript:void(0)">行知资讯</a>
		</li>
		<li>
			<a href="javascript:void(0)">关于我们</a>
		</li>
		<li>
			<a href="javascript:void(0)">联系合作</a>
		</li>
	</ul>
</div>
<!-- 内容 -->
<div id="index_main" class="index_main">
	<!--导航-->
	<div class="section section1">
		<div class="index_banner">
		 <c:forEach  items="${pics}" var="pic" >
			<div class="item">
				<div class="items scaleBg" style="background-image: url(${pic.paddress});></div>
				<div class="inner">
					<div class="block_txt">
						<h4> Goodliness,to be continued</h4>
						<h2>让<span>美好持续</span>发生</h2>
						<h3>
							<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
							</div>
						</h3>                            
					</div>
				</div>
			</div>
			</c:forEach>
			<!-- <div class="item">
				<div class="items scaleBg" style="background-image: url(static/image/2.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> Goodliness,to be continued</h4>
						<h2>让<span>美好持续</span>发生</h2>
						<h3>我们有让美好持续发生的愿望，更有让美好持续发生的能力</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(static/image/banner2.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> </h4>
						<h2><span>0-12岁</span><br>可持续发展教育体系</h2>
						<h3>0-3岁早教  |  3-6岁幼儿园  |  5-12岁成长衔接  |  6-12岁小学</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(static/image/banner3.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4> </h4>
						<h2>幼儿园园所整体解决方案</h2>
						<h3>全程支持  |  个性服务</h3>                            
					</div>
				</div>
			</div>
			<div class="item">
				<div class="items scaleBg" style="background-image: url(static/image/banner4.jpg);"></div>
				<div class="inner">
					<div class="block_txt">
						<h4>  </h4>
						<h2>成长管理发展测评</h2>
						<h3>科学量表  |  全面评估  |  教育指导</h3>                            
					</div>
				</div>
			</div>  -->           
		</div>
		<div class="left slick_txt">
			<div class="prev slick_arrow"></div>
		</div>
		<div class="right slick_txt">
			<div class="next slick_arrow"></div>
		</div>
		<div class="number">
			<div class="inner clearfix">
				<span class="active">01</span>
				<span >02</span>
				<span >03</span>
				<span >04</span>
				<span >05</span>
			</div>
		</div>
	</div>
	<div class="section section2">
		<div class="container">
			<h3>第二页</h3>
		</div>
	</div>
	<div class="section section3">
		<div class="container">
			<h3>第三页</h3>
		</div>
	</div>
	<div class="section section4">
		<div class="container">
			<h3>第四页</h3>
		</div>
	</div>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.fullPage.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/index_slick.js"></script>
<script src="${pageContext.request.contextPath}/static/js/index.js"></script>

</body>
</html>