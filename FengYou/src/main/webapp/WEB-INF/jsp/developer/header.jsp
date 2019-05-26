<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="renderer" content="webkit">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>跟团游_跟团游线路_预订_报价_风游</title>
<meta name="keywords" content="跟团游,团队游">
<meta name="description"
	content="风游为您提供最新的跟团游报价，国内热门跟团游线路——三亚、云南、桂林、北京，出境热门跟团游线路——港澳、日韩、泰国、澳新、欧洲、美国，旅游就选港中旅旗下风游。">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-mobile-web-app-capable" content="yes">
<link type="image/x-icon" rel="shortcut icon"
	href="http://webres.mangocity.com/web/public/skin/img/favicon.ico">
<!--
		<link href="${pageContext.request.contextPath }/statics/css/vendors.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="static/css/header.css">-->
<style type="text/css">
.hr_warp, .hr_warp .hr_topnav {
	background-color: #fff
}

.hr_warp .hr_topnav {
	z-index: 109;
	position: relative;
	height: 30px;
	border-bottom: 1px solid #ddd;
	line-height: 30px
}

.hr_warp .hr_topnav a, .hr_warp .hr_topnav a:active, .hr_warp .hr_topnav a:link,
	.hr_warp .hr_topnav a:visited {
	color: #666;
	text-decoration: none
}

.hr_warp .hr_topnav a:hover {
	color: #f60;
	text-decoration: none
}

.hr_warp .hr_topnav .hr_topnav_container {
	clear: both;
	*zoom: 1;
	width: 1240px;
	margin: 0 auto
}

.hr_warp .hr_topnav .hr_topnav_container:after {
	display: block;
	content: "\200B";
	clear: both;
	height: 0
}

.hr_warp .hr_topnav .hr_topnav_login, .hr_warp .hr_topnav .hr_topnav_login li
	{
	float: left
}

.hr_warp .hr_topnav .hr_topnav_login li:first-child:after {
	content: "|";
	font-size: 12px;
	color: #ddd;
	margin: 0 15px 0 13px
}

.hr_warp .hr_topnav .hr_topnav_list {
	float: right
}

.hr_warp .hr_topnav .hr_topnav_list li {
	float: left
}

.hr_warp .hr_topnav .hr_topnav_list li:before {
	content: "|";
	font-size: 12px;
	color: #ddd;
	margin: 0 15px 0 13px
}

.hr_warp .hr_topnav .hr_topnav_list li:first-child:before {
	margin: 0;
	content: ""
}

.hr_warp .hr_topnav .hr_topnav_list li .icon-dianhua {
	margin-right: 5px;
	color: #f60
}

.hr_warp .hr_container {
	clear: both;
	*zoom: 1;
	width: 1240px;
	margin: 0 auto;
}

.hr_warp .hr_container:after {
	display: block;
	content: "\200B";
	clear: both;
	height: 0
}

.hr_warp .hr_container .hr_container_logo {
	float: left;
}

.hr_warp .hr_container .hr_container_logo h1 {
	overflow: hidden;
	text-indent: -999px;
	width: 1px;
	height: 1px
}

.hr_warp .hr_container .hr_city {
	position: relative;
	z-index: 199;
	float: left;
	width: 100px;
	margin: 31px 20px 0;
	color: #333
}

.hr_warp .hr_container .hr_search {
	position: relative;
	z-index: 99;
	float: left;
	width: 568px;
	height: 32px;
	margin-top: 31px;
	border: 2px solid #3FC4FC;
	font-size: 14px;
}

/* 酒店所在省份 */
.hr_warp .hr_container .hr_search .hr_search_classify:hover .iconfont {
	-webkit-animation: rotateIn .5s .2s ease both;
	-moz-animation: rotateIn .5s .2s ease both
}

.hr_warp .hr_container .hr_search .hr_search_input {
	float: left;
	width: 366px;
	height: 22px;
	margin-top: 5px;
	padding: 0 10px;
	border: 0;
	line-height: 22px
}

/*搜索*/
.hr_warp .hr_container .hr_search .hr_search_btn {
	float: right;
	color: #fff;
	display: inline-block;
	width: 78px;
	background-color: #3FC4FC;
	text-align: center;
	height: 32px;
	line-height: 32px
}
</style>
</head>

<body>
	<%-- 	<link href="${pageContext.request.contextPath }/statics/css/vendors.css" rel="stylesheet">
	 --%>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath }/statics/css/header.css">
	<header class="com-header"> <!-- 导航条开始 -->
	<div class="header-bar">
		<div class="header-content clearfix">
			<nav class="header-bar-nav">
			<ul class="header-nav-first">
			<c:if test="${loginUser.name !=null }">
			<li class="has-child"><a href="nofollow" href=""
					target="_blank">您好：${loginUser.name }</a></li>
					<li class="has-child"><a href="UserInfo?id=${loginUser.id}" >会员中心</a></li>
				</c:if>
				<c:if test="${loginUser.name==null }">
				<li class="has-child"><a href="http://localhost:8080/FengYou/login.jsp" target="_blank">请登录</a></li>
				<li class="has-child"><a href="http://localhost:8080/FengYou/register.jsp" target="_blank">快速注册</a></li>
				<li class="has-child"><a href="http://localhost:8080/FengYou/login.jsp" >会员中心</a></li>
				</c:if>	
				<li class="has-child"><a href="" target="_blank">帮助中心</a></li>
			</ul>
			</nav>
		</div>
	</div>
	<!-- 导航条结束 --> </header>
	<!-- 顶导航 -->

	<div id="header" class="hr_warp">
		<!-- logo和搜索栏开始-->
		<div class="hr_container">
			<div class="hr_container_logo">
				<a href=""><img
					src="${pageContext.request.contextPath }/statics/images/logo/mg_logo1.png"
					alt="风游"></a>
				<h1>风游</h1>
			</div>
			<!--logo和搜索栏之间的空格开始-->
			<div class="hr_city">
				<div class="hr_city_change" style="display: none;">
					<span class="hr_city_site" id="citysite"></span> <i
						class="icon iconfont icon-xiajiantou"></i>
				</div>
				<div class="hr_city_sub" id="hr_city_sub"></div>
			</div>
			<!--logo和搜索栏之间的空格结束-->
			<div class="hr_search" id="search">
				<input type="text" placeholder="酒店所在省份" class="hr_search_input"
					id="hr_search_input" data-url="" /> <a id="hr_search_btn"
					class="hr_search_btn" href="javascript:void(0)">搜索</a>
			</div>
		</div>
		<!-- logo和搜索栏结束-->
		<!-- 主要内容 ]]-->
		<!-- 主导航 [[-->
		<!-- 	<div id="mainnav" class="hr_mainnav_warp">
				<div class="hr_mainnav">
					<ul class="hr_nav_list" id="hrNavList">
						<li data-nav="index"><a href="" class="hr_nav_link">首页</a></li>
						<li data-nav="group"><a href="" class="hr_nav_link">周边游</a></li>
						<li data-nav="free"><a href="" class="hr_nav_link">国内游</a></li>
						<li data-nav="hkao"><a href="" class="hr_nav_link">国外游</a>
							<div class="hr_nav_sublist">
								<div class="hr_nav_subitem">
									<i class="triangle-up-ico"></i>
									<div class="hr_nav_box"><a href="http://www.mangocity.com/package/hktours/" target="_blank">港澳游</a><a href="http://lvyou1.mangocity.com/xianggang/jiudian/" target="_blank">香港酒店</a><a href="http://lvyou1.mangocity.com/aomen/jiudian/" target="_blank">澳门酒店</a></div>
								</div>
							</div>
						</li>
						<li data-nav="flight"><a href="" class="hr_nav_link">机票</a>
							<div class="hr_nav_sublist">
								<div class="hr_nav_subitem">
									<i class="triangle-up-ico"></i>
									<div class="hr_nav_box"><a href="http://flight1.mangocity.com/" target="_blank">国内机票</a></div>
								</div>
							</div>
						</li>
						<li data-nav="hotel"><a href="http://hotel.mangocity.com/" class="hr_nav_link">酒店</a>
							<div class="hr_nav_sublist">
								<div class="hr_nav_subitem">
									<i class="triangle-up-ico"></i>
									<div class="hr_nav_box"><a href="" target="_blank">国内酒店</a><a href="http://hotel.mangocity.com/jp.html" target="_blank">精品酒店</a></div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			 -->
		<!-- 主导航 ]]-->
	</div>
</body>

</html>