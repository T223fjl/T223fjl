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
	margin: 0 auto
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

.hr_warp .hr_container .hr_city .hr_city_change {
	display: inline-block;
	overflow: hidden;
	width: 92px;
	height: 37px;
	padding: 0 0 2px 15px;
	border: 1px solid #fff;
	line-height: 37px;
	cursor: pointer
}

.hr_warp .hr_container .hr_city .hr_city_change .hr_city_site {
	display: inline-block;
	width: 52px;
	font-size: 16px
}

.hr_warp .hr_container .hr_city .hr_city_sub {
	display: none;
	position: absolute;
	top: 37px;
	left: 0;
	z-index: 2;
	overflow: hidden;
	width: 100%;
	border: 1px solid #eaeaea;
	border-top: none;
	padding: 5px 0 5px 7px;
	color: #666;
	background: #fff;
	font-size: 14px
}

.hr_warp .hr_container .hr_city .hr_city_sub a {
	overflow: hidden;
	float: left;
	display: block;
	min-width: 28px;
	height: 20px;
	padding: 0 5px;
	margin: 5px 0 5px 2px;
	line-height: 19px;
	color: #666
}

.hr_warp .hr_container .hr_city .hr_city_sub a.selected, .hr_warp .hr_container .hr_city .hr_city_sub a:hover
	{
	color: #fff;
	background-color: #f90
}

.hr_warp .hr_container .hr_city.hr_city_on .hr_city_change, .hr_warp .hr_container .hr_city:hover .hr_city_change
	{
	position: relative;
	background-color: #fff;
	border-color: #eaeaea;
	border-bottom: none;
	z-index: 10
}

.hr_warp .hr_container .hr_city.hr_city_on .hr_city_sub, .hr_warp .hr_container .hr_city:hover .hr_city_sub
	{
	display: block
}

.hr_warp .hr_container .hr_search {
	position: relative;
	z-index: 99;
	float: left;
	width: 568px;
	height: 32px;
	margin-top: 31px;
	border: 2px solid #f60;
	font-size: 14px
}

.hr_warp .hr_container .hr_search .hr_search_classify {
	float: left;
	position: relative;
	width: 103px;
	border-right: 1px solid #ff7200;
	text-align: center
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_classify_link
	{
	display: inline-block;
	width: 103px;
	height: 32px;
	color: #f60;
	font: normal normal 12px SimSun;
	line-height: 32px;
	text-align: center
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_classify_link .iconfont
	{
	display: inline-block;
	width: 12px;
	height: 10px;
	vertical-align: middle;
	font-size: 12px;
	line-height: 10px
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_list {
	display: none;
	position: absolute;
	z-index: 99;
	top: 32px;
	left: -1px;
	width: 103px;
	padding: 1px 0;
	background-color: #fff;
	border: 1px solid #f60;
	border-top: none;
	text-align: left
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_list li
	{
	height: 28px;
	line-height: 28px
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_list li a
	{
	display: block;
	padding-left: 11px;
	color: #666
}

.hr_warp .hr_container .hr_search .hr_search_classify .hr_search_list li a:hover
	{
	background-color: #f5f5f5;
	color: #f60
}

.hr_warp .hr_container .hr_search .hr_search_classify:hover .hr_search_list
	{
	display: block
}

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

.hr_warp .hr_container .hr_search .hr_search_sokey {
	position: absolute;
	right: 87px;
	top: 5px;
	max-width: 252px;
	height: 20px;
	line-height: 20px;
	padding-left: 8px;
	background-color: #fff;
	overflow: hidden
}

.hr_warp .hr_container .hr_search .hr_search_sokey a {
	display: inline-block;
	border-radius: 5px;
	padding: 0 5px;
	background-color: #f5f5f5;
	color: #999;
	margin-left: 10px;
	white-space: nowrap
}

.hr_warp .hr_container .hr_search .hr_search_btn {
	float: right;
	color: #fff;
	display: inline-block;
	width: 78px;
	background-color: #f60;
	text-align: center;
	height: 32px;
	line-height: 32px
}

/*.hr_warp .hr_container .hr_container_ad {
	float: right;
	width: 200px;
	height: 50px;
	margin-top: 21px
}*/
.hr_warp .hr_mainnav_warp {
	border-bottom: 2px solid #ff6e00
}

.hr_warp .hr_mainnav_warp .hr_mainnav {
	clear: both;
	*zoom: 1;
	width: 1240px;
	margin: 0 auto;
}

.hr_warp .hr_mainnav_warp .hr_mainnav:after {
	display: block;
	content: "\200B";
	clear: both;
	height: 0;
}

.hr_warp .hr_mainnav_warp .hr_mainnav ul {
	margin-left: 200px;
}

.hr_warp .hr_mainnav_warp .hr_mainnav li {
	float: left;
	position: relative;
	z-index: 90;
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_link {
	display: inline-block;
	text-align: center;
	height: 36px;
	width: 80px;
	padding: 0 27px;
	font: normal normal 16px Microsoft Yahei;
	line-height: 36px;
	color: #333
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_link .hr_nav_linkbox {
	height: 36px;
	overflow: hidden
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_link .iconfont {
	display: inline-block;
	width: 12px;
	height: 10px;
	font: normal normal 10px SimSun;
	line-height: 10px;
	margin-left: 5px
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_sublist {
	display: none;
	position: absolute;
	top: 36px;
	left: 0;
	z-index: 2;
	width: 100%
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_sublist .hr_nav_box {
	box-shadow: 0 3px 10px rgba(0, 0, 0, .25)
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_sublist a {
	display: block;
	width: 100%;
	height: 45px;
	background-color: #fff;
	border-bottom: 1px solid #ddd;
	color: #666;
	font: normal normal 14px simsun;
	line-height: 45px;
	text-align: center
}

.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_sublist a:hover {
	color: #fff;
	background-color: #f60;
	border-color: #f60
}

.hr_warp .hr_mainnav_warp .hr_mainnav li:hover .hr_nav_link {
	background-color: #f5f5f5;
	color: #f60
}

.hr_warp .hr_mainnav_warp .hr_mainnav li:hover .hr_nav_link .iconfont {
	-webkit-animation: rotateIn .5s .2s ease both;
	-moz-animation: rotateIn .5s .2s ease both
}

@
-webkit-keyframes rotateIn { 0% {
	-webkit-transform-origin: center 4px;
	-webkit-transform: rotate(0)
}

to {
	-webkit-transform-origin: center 4px;
	-webkit-transform: rotate(180deg)
}

}
.hr_warp .hr_mainnav_warp .hr_mainnav li:hover .hr_nav_link .iconfont:before
	{
	content: "\E62C" \9
}

.hr_warp .hr_mainnav_warp .hr_mainnav li:hover .hr_nav_sublist {
	display: block
}

.hr_warp .hr_mainnav_warp .hr_mainnav li.on .hr_nav_link {
	background-color: #f60;
	color: #fff
}

@media screen and (max-width:1170px) {
	.hr_warp .hr_container, .hr_warp .hr_mainnav_warp .hr_mainnav, .hr_warp .hr_topnav .hr_topnav_container
		{
		width: 990px
	}
	.hr_warp .hr_container .hr_search {
		width: 388px
	}
	.hr_warp .hr_container .hr_search .hr_search_sokey {
		max-width: 50px
	}
	.hr_warp .hr_container .hr_search .hr_search_input {
		width: 186px
	}
	.hr_warp .hr_mainnav_warp .hr_mainnav li .hr_nav_link {
		padding: 0 16px
	}
}

.ft_warp {
	overflow: hidden;
	width: 100%;
	padding: 12px 0 32px;
	border-top: 1px solid #ccc;
	background-color: #f5f5f5;
	font: normal normal 12px tahoma, simsun, sans-serif;
	line-height: 24px;
	text-align: center
}

.ft_warp .ft_nav a {
	color: #666;
	padding: 0 8px
}

.ft_warp .ft_nav a:hover {
	color: #f60
}

.ft_warp .ft_qlogo a {
	display: inline-block;
	margin: 0 5px
}

.ft_warp .ft_beianLink {
	color: #666
}

.ft_warp .ft_beianLink:hover {
	text-decoration: underline
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
			<div class="header-bar-position">
				<span class="header-icon icon-header_location"></span><span
					class="current-city">湖南</span><a class="change-city" href="">切换城市</a>
				<div class="near-citys">
					[<a class="city-guess" href="">郴州</a><a class="city-guess"
						href="https://lf.meituan.com">廊坊</a><a class="city-guess" href="">固安县</a>]
				</div>
				<div class="user-entry">
					<a class="growth-entry user-importent">立即登录</a><a
						class="extra-entry">注册</a>
				</div>
			</div>
			<nav class="header-bar-nav">
			<ul class="header-nav-first">
				<li class="has-child"><a href="nofollow" href=""
					target="_blank">请登录</a></li>
				<li class="has-child"><a href="" target="_blank">快速注册</a></li>
				<li class="has-child"><a href="" target="_blank">会员中心</a></li>
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
				<!--<div class="hr_search_classify" id="hr_search_classify">
						<a class="hr_search_classify_link" href="javascript:void(0)">
							<span data-type="1" class="hr_search_select" id="hrSearchSelect">酒店</span>
							<i class="icon iconfont icon-down"></i>
						</a>
						<ul class="hr_search_list" id="hrSearchList">
							<li style="display:none;"><a href="javascript:void(0)" data-type="1">全部产品</a></li>
							<li><a href="javascript:void(0)" data-type="2">跟团游</a></li>
							<li><a href="javascript:void(0)" data-type="3">自助游</a></li>
							<li><a href="javascript:void(0)" data-type="4">自驾游</a></li>
						</ul>
					</div>-->
				<input type="text" placeholder="酒店所在省份" class="hr_search_input"
					id="hr_search_input" data-url="" />

				<div class="hr_search_sokey">
					<a title="香港" href="http://www.mangocity.com/lvyou/xianggang/">
						香港 </a> <a title="泰国" href="http://www.mangocity.com/lvyou/taiguo/">
						泰国 </a> <a title="三亚" href="http://www.mangocity.com/lvyou/sanya/">
						三亚 </a>
				</div>
				--> <a id="hr_search_btn" class="hr_search_btn"
					href="javascript:void(0)">搜索</a>
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