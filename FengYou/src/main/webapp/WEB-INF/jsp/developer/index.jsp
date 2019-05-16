<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>跟团游_跟团游线路_预订_报价_风游网</title>
<meta name="keywords" content="跟团游,团队游">
<meta name="description"
	content="风游网为您提供最新的跟团游报价，国内热门跟团游线路——三亚、云南、桂林、北京，出境热门跟团游线路——港澳、日韩、泰国、澳新、欧洲、美国，旅游就选港中旅旗下风游网。">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-mobile-web-app-capable" content="yes">
<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>

<link rel="stylesheet" rev="stylesheet"
	href='${pageContext.request.contextPath }/statics/css/new2015.min.css'
	type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/hotel-com.css'
	media="all" />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/new_index2017.css' />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/train.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/flight.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/common_index.css" />
<style type="text/css">
.menu_bg {
	height: 40px;
}

.menu {
	height: 40px;
	line-height: 43px;
	color: #3e3e3e;
	font-size: 16px;
	position: relative;
	z-index: 800;
	/*     background: #2064C8; */
}

ul.menu_r {
	width: 720px;
	height: 40px;
	overflow: hidden;
	float: left;
	display: inline;
	margin-left: 211px;
}

ul.menu_r li {
	width: 70px;
	height: 40px;
	line-height: 40px;
	overflow: hidden;
	text-align: center;
	float: left;
	display: inline;
	margin-right: 10px;
}

ul.menu_r li a {
	width: 70px;
	height: 40px;
	overflow: hidden;
	float: left;
	color: #fff;
}

ul.menu_r li a:hover, ul.menu_r li a.now {
	color: #ff4e00;
}

.nav {
	width: 211px;
	height: 40px;
	/*     background-color: #3FC4FC; */
	position: absolute;
	left: 75px;
	top: 0;
}

.nav_t {
	width: 211px;
	height: 40px;
	line-height: 43px;
	overflow: hidden;
	color: #FFF;
	font-size: 16px;
	text-indent: 35px;
}

.leftNav {
	width: 211px;
	height: 400px;
	background-color: #2064C8;
	position: absolute;
	left: 0;
	top: 51px;
	z-index: 900;
}

.none {
	display: none;
}

.leftNav ul li {
	height: 40px;
	line-height: 40px;
	background: url(../images/n_arrow.gif) no-repeat 195px center;
	color: #FFF;
	font-size: 14px;
	margin-left: 1px;
	cursor: pointer;
	position: relative;
}

.leftNav ul li .n_img {
	width: 20px;
	height: 21px;
	overflow: hidden;
	text-align: center;
	float: left;
	display: inline;
	margin-left: 10px;
	margin-right: 10px;
	margin-top: 10px;
}

.leftNav ul li .n_img span {
	height: 100%;
	vertical-align: middle;
	display: inline-block;
}

.leftNav ul li .n_img img {
	vertical-align: middle;
}

/*.leftNav ul li a{ color:#6e6e6e; }
.leftNav ul li a:hover{ color:#e02d02; }*/
.leftNav ul li ul {
	width: 220px;
	min-height: 70px;
	overflow: hidden;
	background: url(../images/nav_bg.png) repeat center top;
	position: absolute;
	left: 196px;
	top: 0px;
	border: 1px solid #d4d2d2;
	border-left: 0px;
	z-index: 900;
	display: none;
}

.leftNav ul li ul li {
	width: 195px;
	height: auto;
	line-height: 25px;
	overflow: hidden;
	font-size: 12px;
	font-weight: normal;
	background: none;
	margin: 10px auto;
	padding: 0px 0px 5px 0px;
	border-bottom: 1px dashed #d1d0d1;
}

.leftNav ul li ul li a {
	color: #989797;
	margin: 0px 10px;
}

.leftNav ul li ul li a:hover {
	color: #e02d02;
}

.leftNav ul li ul li .n_t {
	width: 50px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	text-align: center;
	font-weight: bold;
	float: left;
}

.leftNav ul li ul li .n_c {
	width: 142px;
	overflow: hidden;
	float: left;
}

.leftNav ul li ul li .n_c a {
	width: 60px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	float: left;
	display: inline-block;
	margin: 0px 0px 0px 10px;
}

.leftNav ul li .fj {
	width: 210px;
	height: 40px;
	line-height: 40px;
	display: block;
	overflow: hidden;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 901;
}

.leftNav ul li .fj.nuw {
	/* border:1px solid black; */
	width: 212px;
	text-decoration: none;
	height: 40px;
	margin-left: -2px;
	line-height: 40px;
	background-color: #FFF;
	color: #ff4e00;
	z-index: 800px;
}

.leftNav .zj {
	/* 	border:1px solid black; */
	width: 700px;
	height: 411px;
	overflow: hidden;
	background-color: #FFF;
	position: absolute;
	left: 210px;
	top: 0;
	display: none;
	/*     opacity:0.6; */
}

.leftNav .zj .zj_l {
	/* border:1px solid black; */
	width: 685px;
	height: 385px;
	overflow: hidden;
	float: left;
	display: inline;
	margin-left: 20px;
	margin-top: 15px;
}

.leftNav .zj .zj_l_c {
	width: 280px;
	height: 108px;
	line-height: 25px;
	overflow: hidden;
	color: #dbdbdb;
	float: left;
	display: inline;
	margin-right: 50px;
	margin-bottom: 25px;
}

.leftNav .zj .zj_l_c h2 {
	height: 25px;
	line-height: 25px;
	color: #3e3e3e;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 5px;
	margin-left: 10px;
}

.leftNav .zj .zj_l_c a {
	line-height: 22px;
	font-size: 12px;
	font-family: "宋体";
	padding: 0 10px;
	margin: 0;
}

.leftNav .zj .zj_r {
	width: 236px;
	height: 402px;
	overflow: hidden;
	float: right;
	display: inline;
	margin-right: 10px;
	margin-top: 5px;
}

.leftNav .zj .zj_r img {
	width: 236px;
	height: 200px;
	display: block;
	margin-bottom: 1px;
}

.i_bg {
	width: 100%;
	min-width: 1200px;
	overflow: hidden;
}

.bg_color {
	background-color: #f6f6f6;
}

.content {
	width: 1200px;
	overflow: hidden;
}

.mar_5 {
	margin-top: 5px;
}

.mar_10 {
	margin-top: 10px;
}

.mar_15 {
	margin-top: 15px;
}

.mar_20 {
	margin-top: 20px;
}

.i_ban_bg {
	width: 1200px;
	height: 401px;
	margin-top: 10px;
}

.banner {
	width: 740px;
	height: 401px;
	overflow: hidden;
	float: left;
	display: inline;
	margin-left: 223px;
}

.banner .top_slide_wrap {
	width: 740px;
	height: 401px;
	overflow: hidden;
	position: relative;
	z-index: 1;
}

.banner .slide_box {
	height: 401px;
	overflow: hidden;
}

.banner .slide_box li {
	height: 401px;
	position: relative;
}

.banner .slide_box li a {
	width: 740px;
	height: 401px;
	display: block;
}

.banner .slide_box img {
	text-align: center;
	height: 420px;
}

.banner .slide_info {
	width: 740px;
	margin: -530px auto 0;
}

.banner .slide_info_card {
	width: 420px;
	height: 0;
	margin-top: 171px;
	color: #fff;
	position: relative;
}

.banner .slide_info_card a {
	color: #fff;
	text-decoration: none
}

.banner .slide_info_card .slide_info_card_bg {
	width: 420px;
	height: 200px;
	background: #0071c6;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1;
	opacity: .8;
	*filter: alpha(opacity = 80)
}

.banner .slide_info_card .slide_info_card_text {
	width: 340px;
	height: 140px;
	padding: 30px 40px;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 2
}

.banner .slide_info_card h2 {
	font-size: 40px;
	padding-bottom: 8px
}

.banner .slide_info_card p {
	font-size: 15px;
	line-height: 26px
}

.banner .slide_info_card p strong {
	font-size: 12px;
	height: 25px;
	display: inline-block;
	padding: 0 10px;
	background: #095b99;
	border-radius: 5px;
	color: #fff;
	margin-top: 8px
}

/* op_btns */
.banner .op_btns {
	border: 1px solid black;
	width: 740px;
	margin-top: -730px;
	position: relative;
	z-index: 3;
}

.banner .op_btns .op_btn {
	display: block;
	width: 32px;
	height: 60px;
	cursor: pointer;
	overflow: hidden;
	position: absolute;
	margin-top: 80px;
}

.banner .op_btns .op_prev {
	background:
		url(${pageContext.request.contextPath }/statics/images/b_left.png)
		no-repeat center top;
	left: 0;
	top: 420px;
}

.banner .op_btns .op_next {
	background:
		url(${pageContext.request.contextPath }/statics/images/b_right.png)
		no-repeat center top;
	right: 0;
	top: 420px;
}

.banner .op_btns .op_prev span, .banner .op_btns .op_next span {
	display: block;
	width: 32px;
	height: 60px;
	margin: 8px 0 0 17px;
	cursor: pointer;
}

.banner .op_btns .op_prev span {
	background-position: 0 0;
}

.banner .op_btns .op_next span {
	background-position: -73px 0;
	margin-left: 20px;
}

/* bx-controls */
.banner .bx-wrapper .bx-controls {
	margin-top: -44px;
}

.banner .bx-wrapper .bx-controls .bx-pager {
	clear: both;
	text-align: center;
	position: relative;
	overflow: hidden;
}

.banner .bx-wrapper .bx-controls .bx-pager a {
	width: 15px;
	height: 15px;
	line-height: 15px;
	display: inline-block;
	overflow: hidden;
	margin: 15px 5px;
	background: url(../images/b.png) no-repeat center top;
}

.banner .bx-wrapper .bx-controls .bx-pager a:hover, .banner .bx-wrapper .bx-controls .bx-pager a.active
	{
	background: url(../images/b_h.png) no-repeat center top;
}

/*.ban_bg{
	width:850px; height:430px; overflow:hidden; background-color:#FFF; float:left; -webkit-box-shadow:0 0 5px #e0e0e0; -moz-box-shadow:0 0 5px #e0e0e0; box-shadow:0 0 5px #e0e0e0;  
}
.banner{
	width:850px; height:430px; overflow:hidden; position:relative;
}
.banner .a_bigImg{ position:absolute; left:0px; top:0px; display:none; width:850px; height:430px; overflow:hidden; }
.banner .a_bigImg .name{
	width:850px; height:80px; line-height:80px; overflow:hidden; background:url(../images/b_name.png) repeat-x center top; color:#333333; font-size:20px; text-align:center; position:absolute; left:0; bottom:40px;
}
.banner .ul_change_a2{ position:absolute; left:10px; bottom:15px; overflow:hidden; text-align:center; }
.banner .ul_change_a2 li{
	width:10px; height:10px; line-height:10px; overflow:hidden; float:left; display:inline-block; margin:0px 4px; cursor:pointer;
}
.banner .ul_change_a2 span{ 
	width:10px; height:10px; line-height:10px; overflow:hidden; float:left; text-align:center; background:url(../images/b.png) no-repeat center top;
}
.banner .ul_change_a2 span.on { background:url(../images/b_h.png) no-repeat center top; }*/
.inews {
	width: 225px;
	height: 400px;
	background-color: #FFF;
	float: right;
	border: 1px solid #d9d9d9;
}

.news_t {
	height: 39px;
	line-height: 39px;
	overflow: hidden;
	color: #3e3e3e;
	font-size: 16px;
	padding: 0 10px;
	border-bottom: 1px dotted #d9d9d9;
}

.news_t span {
	font-size: 12px;
	color: #888888;
}

.inews a {
	color: #888888;
}

.inews a:hover {
	color: #ff4e00;
}

.inews ul {
	height: 150px;
	overflow: hidden;
	margin: 10px 10px 20px 10px;
}

.inews ul li {
	height: 30px;
	line-height: 30px;
	overflow: hidden;
	color: #888888;
}

.inews ul li span {
	color: #3e3e3e;
	margin-right: 10px;
}
</style>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery.bxslider_e88acd1b.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
</head>
<body>
	<!--Begin Header Begin-->
	<%@ include file="header.jsp"%>
	<!--End Header End-->
	<!--Begin Menu Begin-->

	<div id="header" class="header" v='20190429' b='hotels' g='NaN' lg='f'>
		<!--导航  -->
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<div class="nav">
				<div class="nav_t" style="background: #2064C8;">&nbsp;旅游目的地导航</div>
				<div class="leftNav">
					<ul>
						<c:forEach items="${levels}" var="temp">
							<li>
								<div class="fj">
									<span class="n_img"><span></span> <img
										src="${pageContext.request.contextPath }/statics/images/${temp.name}" /></span>
									<span class="fl">${temp.name}</span>
								</div>
								<div class="zj">
									<div class="zj_l">
										<c:forEach items="${temp.sonLevels}" var="vo">
											<div class="zj_l_c">
												<h2>
													<a
														href="${ctx}/ProductServlet?action=queryProductList&level=2&category=${vo.id}">${vo.name}</a>
												</h2>
												<c:forEach items="${vo.sonLevels}" var="vo2">
													<a
														href="${ctx}/ProductServlet?action=queryProductList&level=3&category=${vo2.id}">${vo2.name}</a> |
                                            </c:forEach>
											</div>
										</c:forEach>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<div class="nav_box">
				<div id="nav" class="response_wrap3"
					style="width: 900px; margin-left: 310px;">
					<ul class="link" id="channelMenu">
						<li sid="28632"><a
							href="http://localhost:8080/FengYou/toIndex" title="艺龙旅行网"
							id="nav_home">首页</a></li>
						<li sid="28639" class="on"><a title="酒店预订"
							href="http://localhost:8080/FengYou/jiudian" id="nav_hotels">国内酒店</a></li>
						<li style="display: none;" sid="41493"><a href="#" id="A1"
							title="酒店团购">团购</a></li>
						<li style="display: none;" sid=""><a href="#"
							id="nav_apartment" title="短租公寓">短租公寓<span class="icon_apart"
								style="background: url(http://img.elongstatic.com/index/fixed/icon2015-0.png) no-repeat; background-position: -307px 0;"></span></a>
						</li>
						<li style="display: none;" sid="52756"><a href="#"
							title="限时抢">限时抢</a>
						<li sid="28640"><a href="#" title="机票预订">国内•国际机票<span
								style="left: 60px; background-position: -589px -29px;"
								class="icon_coupon"></span></a></li>
						<li sid="28640"><a href="#" title="火车票">火车票</a></li>
						<li sid="28640"><a href=# title="汽车票">汽车票</a></li>
						<li><a href="#" title="旅游指南">旅游指南</a></li>
						<li><a href="#" title="商旅" target='_blank'>商旅</a></li>
					</ul>
				</div>
			</div>

			<div class="i_bg bg_color" style="margin: 0 auto; width: 80%">
				<div class="i_ban_bg">
					<!-- Begin Banner Begin -->
					<div class="banner">
						<div class="top_slide_wrap">
							<ul class="slide_box bxslider">
								<li><img
									src="${pageContext.request.contextPath }/statics/images/index/1.jpg"
									width="740" height="401" /></li>
								<li><img
									src="${pageContext.request.contextPath }/statics/images/index/2.jpg"
									width="740" height="401" /></li>
								<li><img
									src="${pageContext.request.contextPath }/statics/images/index/3.png"
									width="740" height="401" /></li>
							</ul>
							<div class="op_btns clearfix">
								<a href="#" class="op_btn op_prev"><span></span></a> <a href="#"
									class="op_btn op_next"><span></span></a>
							</div>
						</div>
					</div>
					<script type="text/javascript"
						src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
					<script type="text/javascript">
            var jq2 = jQuery.noConflict();
            (function () {
                $(".bxslider").bxSlider({
                    auto: true,
                    prevSelector: jq2(".top_slide_wrap .op_prev")[0], nextSelector: jq2(".top_slide_wrap .op_next")[0]
                });
            })();
        </script>
					<!-- 				End Banner End -->
					<div class="inews">
						<div class="news_t">
							<span class="fr"><a
								href="Easybuy_newsServlet?action=queryNewsList">更多 ></a></span>热门头条
						</div>
						<ul>
							<li><span>[ 资讯 ]</span> <a href="#">资讯 |
									马来西亚:调整中国公民赴马签证政策 提升效率</a></li>
							<li><span>[ 签证 ]</span> <a href="#">签证丨带娃出国游！儿童签证技能GET！</a></li>
							<li><span>[ 签证 ]</span> <a href="#">签证丨日本签证需要注意的地方？</a></li>
							<li><span>[ 签证 ]</span> <a href="#">签证丨美国签证面试，不会英文怎么办？</a></li>
							<li><span>[ 签证 ]</span> <a href="#">签证丨嫌弃中国护照不好用？老外办中国签证都快哭了</a></li>
							<li><span>[ 活动 ]</span> <a href="#">活动 | 2019深圳长隆正在行动中</a></li>
						</ul>

						<div class="charge_t">
						<marquee behavior=="slide" direction="left" >海量玩法边走边订</marquee>
<!-- 							<marquee behavior="alternate"></marquee> -->
							<div class="ch_t_icon"></div>
						</div>
						<form>
							<table border="0" style="width: 205px;" cellspacing="0"
								cellpadding="0">
								<img
									src="${pageContext.request.contextPath }/statics/images/index/p1.jpg" />
								</li>
							</table>
						</form>
					</div>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<!--Begin Menu End-->

		<div class="fold mt20 mb20" style="margin-top: 450px;">
			<div class="fold_wrap">
				<ul class="clearfix" id="sm">
					<li class="active"><a
						href="http://promotion.elong.com/index/fold/fold1/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>园林酒店</h4>
							</div>
							<div class="pic_auto pic_auto1"></div>
							<div class="adv_intro">有谁不爱泡温泉？浸入雾气蒸腾的泉水之中，把身体泡成一片茶叶，舒展轻盈。有比这更美妙的感觉吗？</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold2/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>情侣酒店</h4>
							</div>
							<div class="pic_auto pic_auto2"></div>
							<div class="adv_intro">浪漫，是香闺围笼里的暧昧，是灯火迷离，泪眼婆裟的唯美，是杨柳岸、晓风残月中的无语凝噎……</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold3/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>设计师酒店</h4>
							</div>
							<div class="pic_auto pic_auto3"></div>
							<div class="adv_intro">前卫的酒店设计理念，独具魅力的风格，优美的自然风光才能有这样顶级的酒店。</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold4/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>青年旅舍</h4>
							</div>
							<div class="pic_auto pic_auto4"></div>
							<div class="adv_intro">我为你煮一杯温茶，斟一杯美酒。让我们席地而坐，听你的梦想。用你的只言片语装点我们的梦想博物馆。</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold5/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>特色客栈</h4>
							</div>
							<div class="pic_auto pic_auto5"></div>
							<div class="adv_intro">在这里，你可以静静发呆，而不被人打扰，只用细细品味它的美好；在这里，你能看见最美好的星星，能让你找到最深的感动。</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold6/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>海岛酒店</h4>
							</div>
							<div class="pic_auto pic_auto6"></div>
							<div class="adv_intro">不想过冬，厌倦沉重，就飞去热带的岛屿游泳，卸下包袱，放下压力，让自己的身与心，在这碧海蓝天之中，享受一次超自然的洗礼。</div>
					</a></li>
					<li><a
						href="http://promotion.elong.com/index/fold/fold7/index.html?t=20170503"
						target="_blank">
							<div class="mask_b">
								<h4>海外温泉</h4>
							</div>
							<div class="pic_auto pic_auto7"></div>
							<div class="adv_intro">因地形地质的区别，世界各地的温泉也千差万别，选择一处适合自己的温泉，5分钟后，你会忘记自己，20分钟后，你会忘记世界。</div>
					</a></li>
				</ul>
			</div>
		</div>
		<div class=termini>
			<div class="termini_wrap wrap1000">
				<div class="title clearfix">
					<h2 class=clearfix>
						<b style="display: none" class=right><i
							class="ei_icon icon05 mr5 mt5"></i>定制我的目的地</b><a class=pr10
							href="javascript:void(0);" style="cursor: text;">目的地指数</a> <span>覆盖全球75万家酒店，你想住的，我们都有</span>
					</h2>
				</div>
				<!--国内-->
				<div class=domestic>
					<h3 class=clearfix>
						<em class="more right"><a href="http://hotel.elong.com/">更多<b>&gt;&gt;</b></a></em>
						<a class="pr20 left" href="http://hotel.elong.com/"><i
							class="ei_icon icon06 left pr5"></i>国内</a> <span class=on>登高踏青</span>
						<span>小憩温泉</span> <span>天然氧吧</span> <span>草原撒欢</span> <span>小镇时光</span>
						<span>美食之城</span>
					</h3>
					<ul class=tab_theme>
						<li><a
							href="http://hotel.elong.com/huangshan/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=黄山
										data-src="${pageContext.request.contextPath }/statics/picture/dgtq-hs.jpg">
								</div>
								<div class=city_name>黄山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>春意撩人 登高踏青赏春色</p>
							</div>
						<li><a
							href="http://hotel.elong.com/emeishan/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=峨眉山
										data-src="${pageContext.request.contextPath }/statics/picture/dgtq-ems.jpg">
								</div>
								<div class=city_name>峨眉山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>阳春三月 闻着茶香去峨眉</p>
							</div>
						<li><a
							href="http://hotel.elong.com/wutaishan/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=五台山
										data-src="${pageContext.request.contextPath }/statics/picture/dgtq-wts.jpg">
								</div>
								<div class=city_name>五台山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>迎春 祈福 登五台</p>
							</div>
						<li><a
							href="http://hotel.elong.com/lushan_jiujiang/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=庐山
										data-src="${pageContext.request.contextPath }/statics/picture/dgtq-ls.jpg">
								</div>
								<div class=city_name>庐山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>亲近自然 春游庐山</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a
							href="http://hotel.elong.com/search/list_cn_1101.html?keywords=天目湖温泉"
							target=_blank>
								<div class=pic_add>
									<img alt=江苏天目湖
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-tianmuhu.jpg">
								</div>
								<div class=city_name>江苏天目湖</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span style="display: none" class=right><b>?</b><em>380</em>起</span>
								<p>古树错落 帝王温泉</p>
							</div>
						<li><a href="http://hotel.elong.com/weihai/" target=_blank>
								<div class=pic_add>
									<img alt=威海天沐威海温泉
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-tianmuweihai.jpg">
								</div>
								<div class=city_name>威海天沐威海温泉</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>森林温泉 草本养生</p>
							</div>
						<li><a
							href="http://hotel.elong.com/search/list_cn_2011.html?keywords=%E4%B8%AD%E5%B1%B1%E6%B8%A9%E6%B3%89"
							target=_blank>
								<div class=pic_add>
									<img alt=广东中山温泉
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-zhongshan.jpg">
								</div>
								<div class=city_name>广东中山温泉</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>毗邻港澳 商务养生</p>
							</div>
						<li><a href="http://hotel.elong.com/dalian/" target=_blank>
								<div class=pic_add>
									<img alt=辽宁大连安波温泉
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-anbo.jpg">
								</div>
								<div class=city_name>辽宁大连安波温泉</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>延年益寿 名誉中外</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://hotel.elong.com/lhasa/" target=_blank>
								<div class=pic_add>
									<img alt=拉萨
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-lasa.jpg">
								</div>
								<div class=city_name>拉萨</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span style="display: none" class=right><b>?</b><em>380</em>起</span>
								<p>高原古城 圣山天湖 沁人心脾</p>
							</div>
						<li><a href="http://hotel.elong.com/dali/" target=_blank>
								<div class=pic_add>
									<img alt=大理
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-dali.jpg">
								</div>
								<div class=city_name>大理</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>文献名邦 彩云之南 空谷幽兰</p>
							</div>
						<li><a href="http://hotel.elong.com/zhoushan/" target=_blank>
								<div class=pic_add>
									<img alt=舟山
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-zhoushan.jpg">
								</div>
								<div class=city_name>舟山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>东海翡翠 舟山群岛 气候宜人</p>
							</div>
						<li><a href="http://hotel.elong.com/xiamen/" target=_blank>
								<div class=pic_add>
									<img alt=厦门
										data-src="${pageContext.request.contextPath }/statics/picture/hbtl-xiamen.jpg">
								</div>
								<div class=city_name>厦门</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>天风海涛 鼓浪岛屿 鸟语芬芳</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://hotel.elong.com/xilingol_league/"
							target=_blank>
								<div class=pic_add>
									<img alt=锡林郭勒
										data-src="${pageContext.request.contextPath }/statics/picture/cysh-xlgl.jpg">
								</div>
								<div class=city_name>锡林郭勒</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span style="display: none" class=right><b>?</b><em>380</em>起</span>
								<p>草原 牧民 小马驹</p>
							</div>
						<li><a href="http://hotel.elong.com/bashang/" target=_blank>
								<div class=pic_add>
									<img alt=坝上
										data-src="${pageContext.request.contextPath }/statics/picture/cysh-bs.jpg">
								</div>
								<div class=city_name>坝上</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>帝都最近的草原</p>
							</div>
						<li><a href="http://hotel.elong.com/ruoergai/" target=_blank>
								<div class=pic_add>
									<img alt=若尔盖
										data-src="${pageContext.request.contextPath }/statics/picture/cysh-reg.jpg">
								</div>
								<div class=city_name>若尔盖</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>高原上的绿洲</p>
							</div>
						<li><a href="http://hotel.elong.com/qilianxian/"
							target=_blank>
								<div class=pic_add>
									<img alt=祁连山
										data-src="${pageContext.request.contextPath }/statics/picture/cysh-qls.jpg">
								</div>
								<div class=city_name>祁连山</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>风景如画 醉美祁连山</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a
							href="http://hotel.elong.com/xitang/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=西塘
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t3_xt.jpg">
								</div>
								<div class=city_name>西塘</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>烟雨长廊 景色好似宣纸画</p>
							</div>
						<li><a
							href="http://hotel.elong.com/tengchong/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=和顺
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t3_hs.jpg">
								</div>
								<div class=city_name>和顺</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>古风犹存 如诗如画</p>
							</div>
						<li><a
							href="http://hotel.elong.com/wuzhen/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=乌镇
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t3_wz.jpg">
								</div>
								<div class=city_name>乌镇</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>推窗见水 小桥人家</p>
							</div>
						<li><a
							href="http://hotel.elong.com/pingyao/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=平遥
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t3_py.jpg">
								</div>
								<div class=city_name>平遥</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>晋商遗风 古城探幽</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://hotel.elong.com/hongkong" target=_blank>
								<div class=pic_add>
									<img alt=香港
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t4_xg.jpg">
								</div>
								<div class=city_name>香港</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>只有想不到，没有找不到</p>
							</div>
						<li><a
							href="http://hotel.elong.com/chengdu/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=成都
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t4_cd.jpg">
								</div>
								<div class=city_name>成都</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>不只有火锅，吃是头等事</p>
							</div>
						<li><a
							href="http://hotel.elong.com/yangzhou/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=扬州
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t4_yz.jpg">
								</div>
								<div class=city_name>扬州</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>吴侬软语 淮味养人</p>
							</div>
						<li><a
							href="http://hotel.elong.com/changsha/?aioIndex=-1&amp;aioVal=%E8%BE%93%E5%85%A5%20%E4%BD%8D%E7%BD%AE%20%E9%85%92%E5%BA%97%E5%90%8D%20%E6%88%96%E5%93%81%E7%89%8C"
							target=_blank>
								<div class=pic_add>
									<img alt=长沙
										data-src="${pageContext.request.contextPath }/statics/picture/termini_t4_cs.jpg">
								</div>
								<div class=city_name>长沙</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>美食怕不辣，湘味最十足</p>
							</div></li>
					</ul>
				</div>
				<!--国内-->
				<!--国际-->
				<div class="domestic mt20">
					<h3 class=clearfix>
						<em class="more right"><a href="http://ihotel.elong.com/">更多<b>&gt;&gt;</b></a></em>
						<a class="pr20 left" href="http://ihotel.elong.com/"><i
							class="ei_icon icon062 left pr5"></i>海外</a> <span class=on>文艺清新</span>
						<span>面朝大海</span> <span>别样建筑</span> <span>浪漫主义</span> <span>魅力都市</span>
					</h3>
					<ul class=tab_theme>
						<li><a href="http://ihotel.elong.com/region_178279/"
							target=_blank>
								<div class=pic_add>
									<img alt=伦敦
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it1_ld.jpg">
								</div>
								<div class=city_name>伦敦</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>风情英伦，帝国余韵</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_890/"
							target=_blank>
								<div class=pic_add>
									<img alt=清迈
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it1_qm.jpg">
								</div>
								<div class=city_name>清迈</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>泰北玫瑰，慢行古城</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_6049718/"
							target=_blank>
								<div class=pic_add>
									<img alt=济州岛
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it1_jzd.jpg">
								</div>
								<div class=city_name>济州岛</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>最传统的浪漫，最神秘的自然</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_179899/"
							target=_blank>
								<div class=pic_add>
									<img alt=罗马
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it1_lm.jpg">
								</div>
								<div class=city_name>罗马</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>永恒之城，魅力无限</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://ihotel.elong.com/region_6046393/"
							target=_blank>
								<div class=pic_add>
									<img alt=普吉岛
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it2_pjd.jpg">
								</div>
								<div class=city_name>普吉岛</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>海岛胜地，天人合一</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_6051084/"
							target=_blank>
								<div class=pic_add>
									<img alt=马尔代夫
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it2_medf.jpg">
								</div>
								<div class=city_name>马尔代夫</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>一岛一世界</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_602/"
							target=_blank>
								<div class=pic_add>
									<img alt=沙巴
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it2_sb.jpg">
								</div>
								<div class=city_name>沙巴</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>纯净之极的原生态梦幻岛屿</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_180074/"
							target=_blank>
								<div class=pic_add>
									<img alt=夏威夷
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it2_xwy.jpg">
								</div>
								<div class=city_name>夏威夷</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>凝聚着东方妩媚与西方性感</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://ihotel.elong.com/region_179992/"
							target=_blank>
								<div class=pic_add>
									<img alt=巴塞罗那
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it3_bsln.jpg">
								</div>
								<div class=city_name>巴塞罗那</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>天使之城，艺术之都</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_180012/"
							target=_blank>
								<div class=pic_add>
									<img alt=米兰
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it3_ml.jpg">
								</div>
								<div class=city_name>米兰</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>在时尚与古典间穿梭</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_178289/"
							target=_blank>
								<div class=pic_add>
									<img alt=莫斯科
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it3_msk.jpg">
								</div>
								<div class=city_name>莫斯科</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>畅饮伏特加的英雄之城</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_178267/"
							target=_blank>
								<div class=pic_add>
									<img alt=伊斯坦布尔
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it3_ystbe.jpg">
								</div>
								<div class=city_name>伊斯坦布尔</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>古老与现代辉映，东方与西方交融</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://ihotel.elong.com/region_6051084/"
							target=_blank>
								<div class=pic_add>
									<img alt=马尔代夫
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it4_medf.jpg">
								</div>
								<div class=city_name>马尔代夫</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>一岛一世界</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_1735/"
							target=_blank>
								<div class=pic_add>
									<img alt=圣托里尼
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it4_stln.jpg">
								</div>
								<div class=city_name>圣托里尼</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>蓝白色的人间伊甸园</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_179898/"
							target=_blank>
								<div class=pic_add>
									<img alt=巴黎
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it4_bl.jpg">
								</div>
								<div class=city_name>巴黎</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>浪漫如斯，热情如是</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_601680/"
							target=_blank>
								<div class=pic_add>
									<img alt=普罗旺斯
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it4_plws.jpg">
								</div>
								<div class=city_name>普罗旺斯</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>薰衣草之乡</p>
							</div></li>
					</ul>
					<ul style="display: none" class=tab_theme>
						<li><a href="http://ihotel.elong.com/region_180027/"
							target=_blank>
								<div class=pic_add>
									<img alt=新加坡
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it5_xjp.jpg">
								</div>
								<div class=city_name>新加坡</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>乐享狮城，多彩四季</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_178229/"
							target=_blank>
								<div class=pic_add>
									<img alt=阿姆斯特丹
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it5_amstd.jpg">
								</div>
								<div class=city_name>阿姆斯特丹</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>郁金香绽放的水都</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_178280/"
							target=_blank>
								<div class=pic_add>
									<img alt=洛杉矶
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it5_lsj.jpg">
								</div>
								<div class=city_name>洛杉矶</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>好莱坞的风情</p>
							</div>
						<li><a href="http://ihotel.elong.com/region_180008/"
							target=_blank>
								<div class=pic_add>
									<img alt=吉隆坡
										data-src="${pageContext.request.contextPath }/statics/picture/termini_it5_jlp.jpg">
								</div>
								<div class=city_name>吉隆坡</div>
						</a>
							<div class=mask_num>
								<p>
									<span>380</span>家酒店特卖
								</p>
							</div>
							<div class=scale_tour>
								<span class=right><b>?</b><em>380</em>起</span>
								<p>双子塔上，气度非凡</p>
							</div></li>
					</ul>
				</div>
				<!--国际-->
			</div>
		</div>
		<!--termini CMS节点 end-->
		<!--termini end-->
		<!--discount start-->
		<div class="discount mt20" style="display: none;">
			<div class="discount_wrap wrap1000">
				<div class="title">
					<h2 class="clearfix">
						<a class="pr10">超值特价票</a>
					</h2>
				</div>
				<!--机票 -->
				<div class="discount_tricket mt10" id="discount_plane_tricket">
					<h3 class="clearfix">
						<em class="more right"><a href="//flight.elong.com/"
							target="_blank">更多<b>&gt;&gt;</b></a></em> <a class="pr20 left"
							href="//flight.elong.com/" target="_blank"><i
							class="ei_icon icon07 left pr5"></i>机票</a> <span csn="BJS" class="on">北京出发</span>
						<span csn="SHA">上海出发</span> <span csn="CAN">广州出发</span> <span
							csn="HGH">杭州出发</span> <span csn="SZX">深圳出发</span> <span csn="CTU">成都出发</span>
					</h3>
					<div class="tab_rebate">
						<ul class="clearfix" id="discount_plane_trickets"></ul>
						<div class="com_loading_gif clearfix" id="flight_loading"
							style="display: none">
							<span><i class="com_loading left mr10"></i>数据加载中...</span>
						</div>
					</div>
				</div>
				<!--火车票-->
				<!---->
			</div>
		</div>
		<!--discount end-->
		<!--raiders-->
		<div class="raiders mt20">
			<div class="raiders_wrap wrap1000">
				<div class=title>
					<h2>
						<a href="#">旅游指南</a>
					</h2>
				</div>
				<div class="pic_rad pt10 clearfix">
					<div class="pic_shaw right">
						<ul>
							<li class=right><img
								data-src="${pageContext.request.contextPath }/statics/picture/18022801.jpg"></a>
								<p>
									<a href="#" target=_blank>再赴婺源油菜花之约</a>
								</p></li>
							<li class=left><a href="#" target=_blank><img
									data-src="${pageContext.request.contextPath }/statics/picture/18022802.jpg"></a>
								<p>
									<a href="#" target=_blank>全年旅行月历四季里的12种玩法</a>
								</p></li>
						</ul>
					</div>
					<div class=tab_pic_show>
						<ul>
							<li><span class=ei_icon></span><a href="#" target=_blank>烟雨江南醉杭州正是问茶时</a></li>
							<li class=on><span class=ei_icon></span><a href="#"
								target=_blank>无锡鼋头渚的樱舞飞扬</a></li>
							<li><span class=ei_icon></span><a href="#" target=_blank>武大樱花飞扬校园里的青春</a></li>
							<li><span class=ei_icon></span><a href="#" target=_blank>昆明郁金香赏花何必去荷兰</a></li>
						</ul>
						<OL>
							<li style="display: none"><a href="#" target=_blank><img
									alt="烟雨江南醉杭州 正是问茶时"
									data-src="${pageContext.request.contextPath }/statics/picture/18022803.jpg"
									width=380 height=220></a></li>
							<li style="display: list-item"><a href="#" target=_blank><img
									alt="无锡鼋头渚的樱舞飞扬"
									data-src="${pageContext.request.contextPath }/statics/picture/18022804.jpg"
									width=380 height=220></a></li>
							<li style="display: none"><a href="#" target=_blank><img
									alt="武大樱花 飞扬校园里的青春"
									data-src="${pageContext.request.contextPath }/statics/picture/18022805.jpg"
									width=380 height=220></a></li>
							<li style="display: none"><a href="#" target=_blank><img
									alt="昆明郁金香 赏花何必去荷兰"
									data-src="${pageContext.request.contextPath }/statics/picture/18022806.jpg"
									width=380 height=220></a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!--raiders-->
		<!--why us-->
		<div class="service_us mt20">
			<div class="service_wrap wrap1000">
				<div class="service_inf">
					<ul class="clearfix">
						<li><i class="ei_icon icon012"></i><span>全球110万家酒店</span></li>
						<li><i class="ei_icon icon013"></i><span>订酒店返现金高达20%</span></li>
						<li><i class="ei_icon icon014"></i><span>国际酒店8折起</span></li>
						<li><i class="ei_icon icon015"></i><span>7×24小时服务</span></li>
					</ul>
				</div>
				<!--
<div class="booking_email clearfix">
<div class="service_agreement right">
<a href="http://promotion.elong.com/index/agreement/index.html" target="_blank">风游服务协议</a>
</div>
<div class="ei_icon icon016 left"></div>
<div class="input_email"> <span>亲，留下您的邮箱，会有惊喜呦~</span> <em><input type="text" value="请输入您的E-mail" id="email"></em> <b><input type="button" value="立即订阅" id="btnSubEmail"></b> </div>
</div>
-->
			</div>
		</div>
		<!--why us-->
		<div id="m_contentend" style="z-index: 200;"></div>
		<script type="text/javascript">
			var tjObj_rt2 = new Date();
		</script>
		<div id="m_adsContainer" style="display: none"></div>

		<!-- 园林酒店的动态js start-->
		<script type="text/javascript">
			var IndexController = {
				resourceMap: {
					"search_keywordtip": "\u5982\u4F4D\u7F6E\\\u9152\u5E97\u540D\\\u54C1\u724C"
				},
				vm: {
					"checkInDateDes": "\u4ECA\u5929",
					"checkInDateStr": "2019-05-08",
					"checkOutDateDes": "\u660E\u5929",
					"checkOutDateStr": "2019-05-09",
					"cityId": "0101",
					"cityName": "\u5317\u4EAC",
					"cityNameCn": "\u5317\u4EAC",
					"cityNameEn": "Beijing",
					"citySeoNameEn": "beijing",
					"indexCacheMode": 1,
					"login": false,
					"today": "2019-05-08 00:00:00"
				},
				emergencyNotice: null,
				esid: null,
				isLogin: false,
				enabledYesterday: false,
				serverTime: "2019-05-08",
				serverTimeHour: "2019-05-08 10:22:05",
				webHotelTjObj: {
					"st": "1557282125115",
					"pt": "pc-elong-homepage",
					"idc": "idc1",
					"pturl": "http:\/\/www.elong.com\/",
					"et": "show",
					"cid": "9e9588cb-d1a0-4cba-8577-58f0155b90a9"
				},
				needElongRisk: true,
				needCtripRisk: true,
				showLoginOption: true,
				showCommentInfo: true,
				commonStaticPath: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/common\/",
				hotelStaticJsPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/views\/",
				hotelStaticCssPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/css\/",
				hotelStaticJsPathTmapi: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/201957_14.10fe5\/",
				hotelStaticCssPathTmapi: "\/\/file.40017.cn\/css40017cnproduct\/cn\/h\/elong_pc\/201956_18.1d48c\/",
				appUrlVersion: "20190507162910",
				urlVersion: null,
				jsPath: "..\/..\/..\/web\/hotel\/views\/",
				basePath: "",
				curDate: "2019-05-08",
				getCmsPicture: function(isElongIndex, callback, E, httpmethod, dataType, timeoute, enabledCache) {
					E.ajax.exec("/ajax/elongIndex/getCmsPicture", {
						isElongIndex: isElongIndex
					}, callback, httpmethod, dataType, timeoute, enabledCache);
				},
				getFavHotelInfosByPage: function(callback, E, httpmethod, dataType, timeoute, enabledCache) {
					E.ajax.exec("/ajax/elongIndex/getfavhotelinfosbypage", {}, callback, httpmethod, dataType, timeoute, enabledCache);
				},
				getOrderToReview: function(callback, E, httpmethod, dataType, timeoute, enabledCache) {
					E.ajax.exec("/ajax/elongIndex/getordertoreview", {}, callback, httpmethod, dataType, timeoute, enabledCache);
				},
				getHoteBasicInfo: function(hotelIds, callback, E, httpmethod, dataType, timeoute, enabledCache) {
					E.ajax.exec("/ajax/elongIndex/gethotebasicinfo", {
						hotelIds: hotelIds
					}, callback, httpmethod, dataType, timeoute, enabledCache);
				},
				getTrainTickt: function(callback, E, httpmethod, dataType, timeoute, enabledCache) {
					E.ajax.exec("/ajax/elongIndex/getTrainTickt", {}, callback, httpmethod, dataType, timeoute, enabledCache);
				}
			};
			var pageController = IndexController;
		</script>
		<!-- 园林酒店的动态js end-->

		<script type="text/javascript">
			var hotelPageController = pageController; //兼容
			var tj_jsStartTime = new Date().getTime();
			var customLabelValue = "0";
		</script>

		<script type="text/javascript">
			document.getElementsByClassName('weekDesc')[0].innerHTML = pageController.vm.checkInDateDes;
			document.getElementsByClassName('weekDesc')[1].innerHTML = pageController.vm.checkOutDateDes;
		</script>

		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/tjmvt.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/axdbanner.js"></script>
		<script type="text/javascript">
			new window.AdBanner({
				container: document.getElementById('pcAdv'),
				cityId: 0,
				keyWords: '风游',
				positionId: 'eexwwtxxw5w9b',
				animateType: 'fade'
			});
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/tjmvt.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/fingerprint.pc.js"></script>

		<script type="text/JavaScript">function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 = [str1, CNNIC_RndNum(6)].join(''); document.getElementById(eleId).href = str1; //window.open(str1); } function CNNIC_RndNum(k)
			{ var rnd = [""]; for (var i = k; i != 0; i--) { rnd.push(Math.floor(Math.random() * 10)); } return rnd.join(''); }
		</script>

		<script type="text/javascript">
			var trackingOBJ = {
				"oOrderFromId": "50",
				"oCityId": "0101",
				"oPageName": "ElongIndexPage",
				"oClientGuid": "9e9588cb-d1a0-4cba-8577-58f0155b90a9",
				"oServerTime": "2019-05-08 10:22:05"
			};
		</script>

		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/s_code.js"></script>
		<script language="JavaScript">
			var s_code = s.t();
			if (s_code) document.write(s_code);
		</script>
		<script type="text/javascript">
			var tjObj = {
				"channel": "home",
				"orderfrom": "50",
				"pagetype": "ElongIndexPage"
			}
		</script>
		<script type="text/javascript">
			var TJObject = {
				"pt": "pc-elong-homepage",
				"orderfrom": 50,
				"cip": "223.104.130.29",
				"pturl": "http://localhost:8080/FengYou/toIndex",
				"rfurl": "http://localhost:8080/FengYou/toIndex",
				"sid": "62280926-7f8b-4b89-8b34-7840ee13e7e4",
				"biz": "pc_hotel",
				"id": "804deff9-a0fa-49e0-aa13-6c6f99ff8b3c",
				"st": 1557282125117,
				"bns": 4,
				"idc": "idc1",
				"mvt": "[{\"vid\":462,\"val\":\"0\",\"eid\":376},{\"vid\":186,\"val\":\"1\",\"eid\":197},{\"vid\":366,\"val\":\"0\",\"eid\":376}]",
				"ct": 2,
				"opens": 1,
				"lg": "zh-CN",
				"cid": "9e9588cb-d1a0-4cba-8577-58f0155b90a9"
			}
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/netextend.js"></script>
		<script type="text/javascript">
			if (TJObject && TJObject.pt) {
				TJObject.et = "show";
				TJObject.st = new Date().getTime();
				tjMVT.setData(TJObject);
			} else if (hotelPageController && hotelPageController.webHotelTjObj) {
				tjMVT.setData(hotelPageController.webHotelTjObj);
			}
		</script>

		<script type='text/javascript'
			src="${pageContext.request.contextPath }/statics/js/vst.js"
			charset="utf-8"></script>
		<script
			data-main='//file.40017.cn/js40017cnproduct/cn/h/elong_pc/201957_14.10fe5/elong_index/elong_index_cn.js?20190507162910'
			src='${pageContext.request.contextPath }/statics/js/require.js'></script>

		<script>
			require(['${pageContext.request.contextPath }/statics/js/common_index.js'], function() {})
		</script>
		<!-- ===================== footer 20190403 start ===================== -->
		<div class="clear"></div>
		<div class="footer" r="3">
			<div class="footer_info">
				<dl>
					<dt>加盟合作</dt>
					<dd>
						<a href="http://hotel.elong.com/union/join.html#?" title="酒店加盟"
							rel="nofollow">酒店加盟</a>
					</dd>
					<dd>
						<a href="http://open.elong.com/" title="机票酒店分销联盟" rel="nofollow">开放平台</a>
					</dd>
					<dd>
						<a
							href="http://promotion.elong.com/hotel/cn/elongagent/elongagent.html "
							title="旅游产品代理合作" rel="nofollow">代理合作</a>
					</dd>
					<dd>
						<a href="http://promotion.elong.com/web/adservice/adservice.html"
							title="在线广告服务" rel="nofollow">广告服务</a>
					</dd>
					<dd>
						<a href="http://ebooking.elong.com/ebkauth/login" title="风游商家中心"
							rel="nofollow">商家中心</a>
					</dd>
				</dl>
				<dl>
					<dt>关于风游</dt>
					<dd>
						<a href="http://hotel.elong.com/directory/" title="酒店大全">酒店大全</a>
					</dd>
					<dd>
						<a href="http://ihotel.elong.com/sitemap/" title="国际酒店">国际酒店</a>
					</dd>
					<dd>
						<a href="http://promotion.elong.com/web/insurance/index.html"
							title="旅行保险">旅行保险</a>
					</dd>
					<dd>
						<a href="http://promotion.elong.com/index/cn/campus/index.html"
							title="校园招聘" rel="nofollow">校园招聘</a>
					</dd>
					<dd>
						<a href="https://d.elong.com/a/contact" title="联系风游旅行网"
							rel="nofollow">联系我们</a>
					</dd>
				</dl>
				<dl>
					<dt>风游APP下载</dt>
					<dd class="pt10">
						<i class="cm_icon footer_info_app"></i>
					</dd>
				</dl>
				<dl>
					<dt>风游官方微信</dt>
					<dd class="pt10">
						<i class="cm_icon footer_info_wx"></i>
					</dd>
				</dl>
				<dl>
					<dt>风游官方小程序</dt>
					<dd class="pt10">
						<i class="cm_icon footer_info_xcx"></i>
					</dd>
				</dl>
			</div>
			<div class="clx"></div>
			<div class="footer_copy">
				&#169; 2000 - 2019 北京风游信息技术有限公司, eLong, Inc or its affiliates. All
				Rights Reserved. <i class="cm_icon"></i> <a rel="nofollow"
					target="_blank"
					href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/ICP_20180015.pdf">ICP证:合B2-20180015</a>
				<br> <a rel="nofollow" target="_blank"
					href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502026059">
					<i
					style=" background-image: url(${pageContext.request.contextPath }/statics/images/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
					京公网安备11010502026059号
				</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
					href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
				<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
					href="http://m.elongstatic.com/hotel/eltk/eltk.html">《风游旅行网服务条款》</a><i
					class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a
					rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
			</div>
			<div class="footer_safe">
				<a class="cm_icon qua-1"
					href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN"
					rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a>
				<a title="风游网通过PCI认证" alt="风游网通过PCI认证" target="_blank"
					rel="nofollow"
					href="http://www.atsec.cn/cn/pci-attestation/Elong-PCIAttestation-atsec-PCI-DSS-C-01128.jpg"
					class="cm_icon qua-6">风游网通过PCI认证</a><a class="cm_icon qua-3"
					href="http://www.itrust.org.cn/Home/Index/satification_certificate/wm/MY2019042401.html"
					rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a>
				<a class="cm_icon qua-5"
					href="https://ss.knet.cn/verifyseal.dll?sn=e14021111010646180fggu000000&amp;ct=df&amp;a=1&amp;pa=500267"
					rel="nofollow" onclick="CNNIC_change('urlknet')" tabindex="-1"
					id="urlknet" target="_blank" title="可信用网站身份验证" alt="可信用网站身份验证">可信用网站身份验证</a>
				<a class="cm_icon qua-4"
					href="http://search.szfw.org/cert/l/CX20120918001652001722"
					rel="nofollow" target="_blank" title="诚信示范企业" alt="诚信示范企业">诚信示范企业</a>
				<a alt="品牌官网认证" title="品牌官网认证" target="_blank" rel="nofollow"
					href="http://si.trustutn.org/info?sn=912170105026585086807&amp;certType=1"
					class="cm_icon qua-7">品牌官网认证</a>
			</div>
		</div>
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/statics/css/styles.css">
		<!-- ===================== footer end ===================== -->
		<div class=bottom_nav>
			<ul>
				<li class=action><a href="#bottom_hotel">酒店预订</a>
				<li><a href="#bottom_flight">机票查询</a>
				<li><a href="#bottom_city">热门城市</a>
				<li><a href="#bottom_partner">合作伙伴</a>
				<li><a href="#bottom_event">常见酒店</a></li>
			</ul>
		</div>
		<div style="DISPLAY: none" id=bottom_hotel class=bottom_con>
			<h2>酒店预订</h2>
			<p>风游旅行网提供全球110万家酒店的预订服务和酒店团购服务。通过真实的酒店照片、酒店评价，无论您是和家人一起旅游度假还是商务出行，我们都能为您提供称心如意的酒店。</p>
			<h2>
				<a style="COLOR: rgb(85, 85, 85)" href="http://hotel.elong.com/poi/">风游酒店地标大全</a>
			</h2>
			<p>为了方便用户快速定位酒店而存在，我们涵盖了北京、西安、上海、成都、广州、武汉、南京、东莞、长沙、深圳、重庆等城市的常见地标类型。</p>
		</div>
		<div style="DISPLAY: none" id=bottom_flight class=bottom_con>
			<h2>机票查询</h2>
			<p>风游旅行网是中航协认证的机票服务提供商，提供国内和国际的特价机票、航班信息、机票查询和预订服务。</p>
		</div>
		<div style="DISPLAY: none" id=bottom_city class=bottom_con>
			<h2>热门城市</h2>
			<p>
				<a title=北京酒店预订 href="http://hotel.elong.com/beijing/">北京酒店</a><span
					class="pl5 pr5">|</span> <a title=上海酒店预订
					href="http://hotel.elong.com/shanghai/">上海酒店</a><span
					class="pl5 pr5">|</span> <a title=杭州酒店预订
					href="http://hotel.elong.com/hangzhou/">杭州酒店</a> <span
					class="pl5 pr5">|</span> <a title=成都酒店预订
					href="http://hotel.elong.com/chengdu/">成都酒店</a><span
					class="pl5 pr5">|</span> <a title=深圳酒店预订
					href="http://hotel.elong.com/shenzhen/">深圳酒店</a><span
					class="pl5 pr5">|</span> <a title=青岛酒店预订
					href="http://hotel.elong.com/qingdao/">青岛酒店</a> <span
					class="pl5 pr5">|</span> <a title=苏州酒店预订
					href="http://hotel.elong.com/soochow/">苏州酒店</a><span
					class="pl5 pr5">|</span> <a title=广州酒店预订
					href="http://hotel.elong.com/guangzhou/">广州酒店</a><span
					class="pl5 pr5">|</span> <a title=香港酒店预订
					href="http://hotel.elong.com/hongkong/">香港酒店</a> <span
					class="pl5 pr5">|</span> <a title=厦门酒店预订
					href="http://hotel.elong.com/xiamen/">厦门酒店</a><span class="pl5 pr5">|</span>
				<a title=天津酒店预订 href="http://hotel.elong.com/tianjin/">天津酒店</a><span
					class="pl5 pr5">|</span> <a title=西安酒店预订
					href="http://hotel.elong.com/xian/">西安酒店</a> <span class="pl5 pr5">|</span>
				<a title=武汉酒店预订 href="http://hotel.elong.com/wuhan/">武汉酒店</a><span
					class="pl5 pr5">|</span> <a title=重庆酒店预订
					href="http://hotel.elong.com/chongqing/">重庆酒店</a><span
					class="pl5 pr5">|</span> <a title=沈阳酒店预订
					href="http://hotel.elong.com/shenyang/">沈阳酒店</a><span
					class="pl5 pr5">|</span> <a title=长沙酒店预订
					href="http://hotel.elong.com/changsha/">长沙酒店</a> <span
					class="pl5 pr5">|</span> <a title=三亚酒店预订
					href="http://hotel.elong.com/sanya/">三亚酒店</a><span class="pl5 pr5">|</span>
				<a title=珠海酒店预订 href="http://hotel.elong.com/zhuhai/">珠海酒店</a><span
					class="pl5 pr5">|</span> <a title=宁波酒店预订
					href="http://hotel.elong.com/ningbo/">宁波酒店</a> <span
					class="pl5 pr5">|</span> <a title=南京酒店预订
					href="http://hotel.elong.com/nanjing/">南京酒店</a><span
					class="pl5 pr5">|</span> <a title=大连酒店预订
					href="http://hotel.elong.com/dalian/">大连酒店</a><span class="pl5 pr5">|</span>
				<a title=济南酒店预订 href="http://hotel.elong.com/jinan/">济南酒店</a> <span
					class="pl5 pr5">|</span> <a title=昆明酒店预订
					href="http://hotel.elong.com/kunming/">昆明酒店</a><span
					class="pl5 pr5">|</span> <a title=合肥酒店预订
					href="http://hotel.elong.com/hefei/">合肥酒店</a><span class="pl5 pr5">|</span>
			</p>
			<div style="DISPLAY: none">
				<h2 class=mt10>国内城市</h2>
				<p>
					<a title=哈尔滨酒店预订 href="http://hotel.elong.com/harbin/">哈尔滨酒店</a><span
						class="pl5 pr5">|</span> <a title=郑州酒店预订
						href="http://hotel.elong.com/zhengzhou/">郑州酒店</a><span
						class="pl5 pr5">|</span> <a title=无锡酒店预订
						href="http://hotel.elong.com/wuxi/">无锡酒店</a> <span class="pl5 pr5">|</span>
					<a title=石家庄酒店预订 href="http://hotel.elong.com/shijiazhuang/">石家庄酒店</a><span
						class="pl5 pr5">|</span> <a title=太原酒店预订
						href="http://hotel.elong.com/taiyuan/">太原酒店</a><span
						class="pl5 pr5">|</span> <a title=福州酒店预订
						href="http://hotel.elong.com/fuzhou/">福州酒店</a> <span
						class="pl5 pr5">|</span> <a title=长春酒店预订
						href="http://hotel.elong.com/changchun/">长春酒店</a><span
						class="pl5 pr5">|</span> <a title=南宁酒店预订
						href="http://hotel.elong.com/nanning/">南宁酒店</a><span
						class="pl5 pr5">|</span> <a title=南昌酒店预订
						href="http://hotel.elong.com/nanchang/">南昌酒店</a> <span
						class="pl5 pr5">|</span> <a title=东莞酒店预订
						href="http://hotel.elong.com/dongguan/">东莞酒店</a><span
						class="pl5 pr5">|</span> <a title=贵阳酒店预订
						href="http://hotel.elong.com/guiyang/">贵阳酒店</a><span
						class="pl5 pr5">|</span> <a title=海口酒店预订
						href="http://hotel.elong.com/haikou/">海口酒店</a> <span
						class="pl5 pr5">|</span> <a title=常州酒店预订
						href="http://hotel.elong.com/changzhou/">常州酒店</a><span
						class="pl5 pr5">|</span> <a title=丽江（含束河）酒店预订
						href="http://hotel.elong.com/lijiang/">丽江（含束河）酒店</a><span
						class="pl5 pr5">|</span> <a title=桂林酒店预订
						href="http://hotel.elong.com/guilin/">桂林酒店</a> <span
						class="pl5 pr5">|</span> <a title=乌鲁木齐酒店预订
						href="http://hotel.elong.com/urumqi/">乌鲁木齐酒店</a><span
						class="pl5 pr5">|</span> <a title=烟台酒店预订
						href="http://hotel.elong.com/yantai/">烟台酒店</a><span
						class="pl5 pr5">|</span> <a title=佛山酒店预订
						href="http://hotel.elong.com/foshan/">佛山酒店</a> <span
						class="pl5 pr5">|</span> <a title=舟山酒店预订
						href="http://hotel.elong.com/zhoushan/">舟山酒店</a><span
						class="pl5 pr5">|</span> <a title=温州酒店预订
						href="http://hotel.elong.com/wenzhou/">温州酒店</a><span
						class="pl5 pr5">|</span> <a title=兰州酒店预订
						href="http://hotel.elong.com/lanzhou/">兰州酒店</a> <span
						class="pl5 pr5">|</span> <a title=扬州酒店预订
						href="http://hotel.elong.com/yangzhou/">扬州酒店</a><span
						class="pl5 pr5">|</span> <a title=绍兴酒店预订
						href="http://hotel.elong.com/shaoxing/">绍兴酒店</a><span
						class="pl5 pr5">|</span> <a title=呼和浩特酒店预订
						href="http://hotel.elong.com/hohhot/">呼和浩特酒店</a> <span
						class="pl5 pr5">|</span> <a title=黄山酒店预订
						href="http://hotel.elong.com/huangshan/">黄山酒店</a><span
						class="pl5 pr5">|</span> <a title=义乌酒店预订
						href="http://hotel.elong.com/yiwu/">义乌酒店</a><span class="pl5 pr5">|</span>
					<a title=西宁酒店预订 href="http://hotel.elong.com/xining/">西宁酒店</a> <span
						class="pl5 pr5">|</span> <a title=泰安酒店预订
						href="http://hotel.elong.com/taian/">泰安酒店</a><span class="pl5 pr5">|</span>
					<a title=洛阳酒店预订 href="http://hotel.elong.com/luoyang/">洛阳酒店</a><span
						class="pl5 pr5">|</span> <a title=徐州酒店预订
						href="http://hotel.elong.com/xuzhou/">徐州酒店</a> <span
						class="pl5 pr5">|</span> <a title=阳朔（桂林）酒店预订
						href="http://hotel.elong.com/yangshuo/">阳朔（桂林）酒店</a><span
						class="pl5 pr5">|</span> <a title=潍坊酒店预订
						href="http://hotel.elong.com/weifang/">潍坊酒店</a><span
						class="pl5 pr5">|</span> <a title=威海酒店预订
						href="http://hotel.elong.com/weihai/">威海酒店</a> <span
						class="pl5 pr5">|</span> <a title=惠州酒店预订
						href="http://hotel.elong.com/huizhou/">惠州酒店</a><span
						class="pl5 pr5">|</span> <a title=银川酒店预订
						href="http://hotel.elong.com/yinchuan/">银川酒店</a><span
						class="pl5 pr5">|</span> <a title=南通酒店预订
						href="http://hotel.elong.com/nantong/">南通酒店</a> <span
						class="pl5 pr5">|</span> <a title=北海酒店预订
						href="http://hotel.elong.com/beihai/">北海酒店</a><span
						class="pl5 pr5">|</span> <a title=中山酒店预订
						href="http://hotel.elong.com/zhongshan/">中山酒店</a><span
						class="pl5 pr5">|</span> <a title=秦皇岛酒店预订
						href="http://hotel.elong.com/qinhuangdao/">秦皇岛酒店</a> <span
						class="pl5 pr5">|</span> <a title=九寨沟酒店预订
						href="http://hotel.elong.com/jiuzhaigou/">九寨沟酒店</a><span
						class="pl5 pr5">|</span> <a title=北戴河酒店预订
						href="http://hotel.elong.com/beidaihe/">北戴河酒店</a><span
						class="pl5 pr5">|</span> <a title=大理酒店预订
						href="http://hotel.elong.com/dali/">大理酒店</a> <span class="pl5 pr5">|</span>
					<a title=唐山酒店预订 href="http://hotel.elong.com/tangshan/">唐山酒店</a><span
						class="pl5 pr5">|</span> <a title=大同酒店预订
						href="http://hotel.elong.com/datong/">大同酒店</a><span
						class="pl5 pr5">|</span> <a title=芜湖酒店预订
						href="http://hotel.elong.com/wuhu/">芜湖酒店</a> <span class="pl5 pr5">|</span>
					<a title=西双版纳酒店预订 href="http://hotel.elong.com/xishuangbanna/">西双版纳酒店</a><span
						class="pl5 pr5">|</span> <a title=日照酒店预订
						href="http://hotel.elong.com/rizhao/">日照酒店</a><span
						class="pl5 pr5">|</span> <a title=淄博酒店预订
						href="http://hotel.elong.com/zibo/">淄博酒店</a> <span class="pl5 pr5">|</span>
					<a title=西塘（嘉善）酒店预订 href="http://hotel.elong.com/xitang/">西塘（嘉善）酒店</a><span
						class="pl5 pr5">|</span> <a title=汕头酒店预订
						href="http://hotel.elong.com/shantou/">汕头酒店</a><span
						class="pl5 pr5">|</span> <a title=乌镇（桐乡）酒店预订
						href="http://hotel.elong.com/wuzhen/">乌镇（桐乡）酒店</a> <span
						class="pl5 pr5">|</span> <a title=宜昌酒店预订
						href="http://hotel.elong.com/yichang/">宜昌酒店</a><span
						class="pl5 pr5">|</span> <a title=澳门酒店预订
						href="http://hotel.elong.com/macau/">澳门酒店</a><span class="pl5 pr5">|</span>
					<a title=昆山（苏州）酒店预订 href="http://hotel.elong.com/kunshan/">昆山（苏州）酒店</a>
					<span class="pl5 pr5">|</span> <a title=嘉兴酒店预订
						href="http://hotel.elong.com/jiaxing/">嘉兴酒店</a><span
						class="pl5 pr5">|</span> <a title=千岛湖酒店预订
						href="http://hotel.elong.com/qiandaohu/">千岛湖酒店</a><span
						class="pl5 pr5">|</span> <a title=保定酒店预订
						href="http://hotel.elong.com/baoding/">保定酒店</a> <span
						class="pl5 pr5">|</span> <a title=金华酒店预订
						href="http://hotel.elong.com/jinhua/">金华酒店</a><span
						class="pl5 pr5">|</span> <a title=拉萨酒店预订
						href="http://hotel.elong.com/lhasa/">拉萨酒店</a><span class="pl5 pr5">|</span>
					<a title=西昌（凉山州）酒店预订 href="http://hotel.elong.com/xichang/">西昌（凉山州）酒店</a>
					<span class="pl5 pr5">|</span> <a title=湛江酒店预订
						href="http://hotel.elong.com/zhanjiang/">湛江酒店</a><span
						class="pl5 pr5">|</span> <a title=泉州酒店预订
						href="http://hotel.elong.com/quanzhou/">泉州酒店</a><span
						class="pl5 pr5">|</span> <a title=凤凰（湘西）酒店预订
						href="http://hotel.elong.com/fenghuang/">凤凰（湘西）酒店</a> <span
						class="pl5 pr5">|</span> <a title=临沂酒店预订
						href="http://hotel.elong.com/linyi/">临沂酒店</a><span class="pl5 pr5">|</span>
					<a title=峨眉山酒店预订 href="http://hotel.elong.com/emeishan/">峨眉山酒店</a><span
						class="pl5 pr5">|</span> <a title=台州酒店预订
						href="http://hotel.elong.com/taichow/">台州酒店</a> <span
						class="pl5 pr5">|</span> <a title=连云港酒店预订
						href="http://hotel.elong.com/lianyungang/">连云港酒店</a><span
						class="pl5 pr5">|</span> <a title=张家界酒店预订
						href="http://hotel.elong.com/zhangjiajie/">张家界酒店</a><span
						class="pl5 pr5">|</span> <a title=镇江酒店预订
						href="http://hotel.elong.com/zhenjiang/">镇江酒店</a><span
						class="pl5 pr5">|</span> <a title=承德酒店预订
						href="http://hotel.elong.com/chengde/">承德酒店</a><span
						class="pl5 pr5">|</span> <a title=开封酒店预订
						href="http://hotel.elong.com/kaifeng/">开封酒店</a> <span
						class="pl5 pr5">|</span> <a title=肇庆酒店预订
						href="http://hotel.elong.com/zhaoqing/">肇庆酒店</a><span
						class="pl5 pr5">|</span> <a title=海宁酒店预订
						href="http://hotel.elong.com/haining/">海宁酒店</a><span
						class="pl5 pr5">|</span> <a title=柳州酒店预订
						href="http://hotel.elong.com/liuzhou/">柳州酒店</a> <span
						class="pl5 pr5">|</span> <a title=绵阳酒店预订
						href="http://hotel.elong.com/mianyang/">绵阳酒店</a><span
						class="pl5 pr5">|</span> <a title=包头酒店预订
						href="http://hotel.elong.com/baotou/">包头酒店</a><span
						class="pl5 pr5">|</span> <a title=武夷山酒店预订
						href="http://hotel.elong.com/wuyishan/">武夷山酒店</a> <span
						class="pl5 pr5">|</span> <a title=常熟（苏州）酒店预订
						href="http://hotel.elong.com/changshu/">常熟（苏州）酒店</a><span
						class="pl5 pr5">|</span> <a title=敦煌酒店预订
						href="http://hotel.elong.com/dunhuang/">敦煌酒店</a><span
						class="pl5 pr5">|</span> <a title=韶关酒店预订
						href="http://hotel.elong.com/shaoguan/">韶关酒店</a> <span
						class="pl5 pr5">|</span> <a title=平遥酒店预订
						href="http://hotel.elong.com/pingyao/">平遥酒店</a><span
						class="pl5 pr5">|</span> <a title=丹东酒店预订
						href="http://hotel.elong.com/dandong/">丹东酒店</a> <span
						class="pl5 pr5">|</span> <a title=淮安酒店预订
						href="http://hotel.elong.com/huaian/">淮安酒店</a><span
						class="pl5 pr5">|</span> <a title=吉林酒店预订
						href="http://hotel.elong.com/jilin/">吉林酒店</a><span class="pl5 pr5">|</span>
					<a title=九江酒店预订 href="http://hotel.elong.com/jiujiang/">九江酒店</a> <span
						class="pl5 pr5">|</span> <a title=盐城酒店预订
						href="http://hotel.elong.com/yancheng/">盐城酒店</a><span
						class="pl5 pr5">|</span> <a title=邯郸酒店预订
						href="http://hotel.elong.com/handan/">邯郸酒店</a><span
						class="pl5 pr5">|</span> <a title=营口酒店预订
						href="http://hotel.elong.com/yingkou/">营口酒店</a> <span
						class="pl5 pr5">|</span> <a title=阳江酒店预订
						href="http://hotel.elong.com/yangjiang/">阳江酒店</a><span
						class="pl5 pr5">|</span> <a title=江门酒店预订
						href="http://hotel.elong.com/jiangmen/">江门酒店</a><span
						class="pl5 pr5">|</span> <a title=襄阳酒店预订
						href="http://hotel.elong.com/xiangyang/">襄阳酒店</a> <span
						class="pl5 pr5">|</span> <a title=赣州酒店预订
						href="http://hotel.elong.com/ganzhou/">赣州酒店</a><span
						class="pl5 pr5">|</span> <a title=东营酒店预订
						href="http://hotel.elong.com/dongying/">东营酒店</a><span
						class="pl5 pr5">|</span> <a title=株洲酒店预订
						href="http://hotel.elong.com/zhuzhou/">株洲酒店</a> <span
						class="pl5 pr5">|</span> <a title=锦州酒店预订
						href="http://hotel.elong.com/jinzhou/">锦州酒店</a><span
						class="pl5 pr5">|</span> <a title=曲阜（济宁）酒店预订
						href="http://hotel.elong.com/qufu/">曲阜（济宁）酒店</a><span
						class="pl5 pr5">|</span> <a title=慈溪酒店预订
						href="http://hotel.elong.com/cixi/">慈溪酒店</a> <span class="pl5 pr5">|</span>
					<a title=都江堰（成都）酒店预订 href="http://hotel.elong.com/dujiangyan/">都江堰（成都）酒店</a><span
						class="pl5 pr5">|</span> <a title=溧阳天目湖（常州）酒店预订
						href="http://hotel.elong.com/liyang/">溧阳天目湖（常州）酒店</a> <span
						class="pl5 pr5">|</span> <a title=泰州酒店预订
						href="http://hotel.elong.com/taizhou/">泰州酒店</a><span
						class="pl5 pr5">|</span> <a title=岳阳酒店预订
						href="http://hotel.elong.com/yueyang/">岳阳酒店</a><span
						class="pl5 pr5">|</span> <a title=清远酒店预订
						href="http://hotel.elong.com/qingyuan/">清远酒店</a> <span
						class="pl5 pr5">|</span> <a title=济宁酒店预订
						href="http://hotel.elong.com/jining/">济宁酒店</a><span
						class="pl5 pr5">|</span> <a title=张家港（苏州）酒店预订
						href="http://hotel.elong.com/zhangjiagang/">张家港（苏州）酒店</a><span
						class="pl5 pr5">|</span> <a title=衡阳酒店预订
						href="http://hotel.elong.com/hengyang/">衡阳酒店</a><span
						class="pl5 pr5">|</span> <a title=江阴（无锡）酒店预订
						href="http://hotel.elong.com/jiangyin/">江阴（无锡）酒店</a><span
						class="pl5 pr5">|</span> <a title=梅州酒店预订
						href="http://hotel.elong.com/meizhou/">梅州酒店</a> <span
						class="pl5 pr5">|</span> <a title=德州酒店预订
						href="http://hotel.elong.com/dezhou/">德州酒店</a><span
						class="pl5 pr5">|</span> <a title=乐山酒店预订
						href="http://hotel.elong.com/leshan/">乐山酒店</a><span
						class="pl5 pr5">|</span> <a title=鄂尔多斯酒店预订
						href="http://hotel.elong.com/ordos/">鄂尔多斯酒店</a> <span
						class="pl5 pr5">|</span> <a title=湖州酒店预订
						href="http://hotel.elong.com/huzhou/">湖州酒店</a><span
						class="pl5 pr5">|</span> <a title=蓬莱（烟台）酒店预订
						href="http://hotel.elong.com/penglai/">蓬莱（烟台）酒店</a><span
						class="pl5 pr5">|</span> <a title=宜兴（无锡）酒店预订
						href="http://hotel.elong.com/yixing/">宜兴（无锡）酒店</a><span
						class="pl5 pr5">|</span> <a title=潮州酒店预订
						href="http://hotel.elong.com/chaozhou/">潮州酒店</a><span
						class="pl5 pr5">|</span> <a title=横店酒店预订
						href="http://hotel.elong.com/hengdian/">横店酒店</a> <span
						class="pl5 pr5">|</span> <a title=腾冲酒店预订
						href="http://hotel.elong.com/tengchong/">腾冲酒店</a><span
						class="pl5 pr5">|</span> <a title=景德镇酒店预订
						href="http://hotel.elong.com/jingdezhen/">景德镇酒店</a><span
						class="pl5 pr5">|</span> <a title=廊坊酒店预订
						href="http://hotel.elong.com/langfang/">廊坊酒店</a> <span
						class="pl5 pr5">|</span> <a title=马鞍山酒店预订
						href="http://hotel.elong.com/maanshan/">马鞍山酒店</a><span
						class="pl5 pr5">|</span> <a title=余姚酒店预订
						href="http://hotel.elong.com/yuyao/">余姚酒店</a> <span
						class="pl5 pr5">|</span> <a title=张家口酒店预订
						href="http://hotel.elong.com/zhangjiakou/">张家口酒店</a><span
						class="pl5 pr5">|</span> <a title=遵义酒店预订
						href="http://hotel.elong.com/zunyi/">遵义酒店</a><span class="pl5 pr5">|</span>
					<a title=延安酒店预订 href="http://hotel.elong.com/yanan/">延安酒店</a> <span
						class="pl5 pr5">|</span> <a title=沧州酒店预订
						href="http://hotel.elong.com/cangzhou/">沧州酒店</a><span
						class="pl5 pr5">|</span> <a title=香格里拉（迪庆州）酒店预订
						href="http://hotel.elong.com/xianggelila/">香格里拉（迪庆州）酒店</a> <span
						class="pl5 pr5">|</span> <a title=五台山酒店预订
						href="http://hotel.elong.com/wutaishan/">五台山酒店</a><span
						class="pl5 pr5">|</span> <a title=庐山（九江）酒店预订
						href="http://hotel.elong.com/lushan_jiujiang/">庐山（九江）酒店</a><span
						class="pl5 pr5">|</span> <a title=衢州酒店预订
						href="http://hotel.elong.com/quzhou/">衢州酒店</a><span
						class="pl5 pr5">|</span> <a title=河源酒店预订
						href="http://hotel.elong.com/heyuan/">河源酒店</a><span
						class="pl5 pr5">|</span> <a title=鞍山酒店预订
						href="http://hotel.elong.com/anshan/">鞍山酒店</a> <span
						class="pl5 pr5">|</span> <a title=南阳酒店预订
						href="http://hotel.elong.com/nanyang/">南阳酒店</a><span
						class="pl5 pr5">|</span> <a title=蚌埠酒店预订
						href="http://hotel.elong.com/bengbu/">蚌埠酒店</a><span
						class="pl5 pr5">|</span> <a title=晋城酒店预订
						href="http://hotel.elong.com/jincheng/">晋城酒店</a> <span
						class="pl5 pr5">|</span> <a title=淮南酒店预订
						href="http://hotel.elong.com/huainan/">淮南酒店</a><span
						class="pl5 pr5">|</span> <a title=诸暨（绍兴）酒店预订
						href="http://hotel.elong.com/zhuji/">诸暨（绍兴）酒店</a> <span
						class="pl5 pr5">|</span> <a title=南戴河酒店预订
						href="http://hotel.elong.com/nandaihe/">南戴河酒店</a><span
						class="pl5 pr5">|</span> <a title=焦作酒店预订
						href="http://hotel.elong.com/jiaozuo/">焦作酒店</a><span
						class="pl5 pr5">|</span> <a title=莆田酒店预订
						href="http://hotel.elong.com/putian/">莆田酒店</a> <span
						class="pl5 pr5">|</span> <a title=新乡酒店预订
						href="http://hotel.elong.com/xinxiang/">新乡酒店</a><span
						class="pl5 pr5">|</span> <a title=十堰酒店预订
						href="http://hotel.elong.com/shiyan/">十堰酒店</a> <span
						class="pl5 pr5">|</span> <a title=聊城酒店预订
						href="http://hotel.elong.com/liaocheng/">聊城酒店</a><span
						class="pl5 pr5">|</span> <a title=婺源酒店预订
						href="http://hotel.elong.com/wuyuan/">婺源酒店</a><span
						class="pl5 pr5">|</span> <a title=牡丹江酒店预订
						href="http://hotel.elong.com/mudanjiang/">牡丹江酒店</a> <span
						class="pl5 pr5">|</span> <a title=荆州酒店预订
						href="http://hotel.elong.com/jingzhou/">荆州酒店</a><span
						class="pl5 pr5">|</span> <a title=枣庄酒店预订
						href="http://hotel.elong.com/zaozhuang/">枣庄酒店</a> <span
						class="pl5 pr5">|</span> <a title=太仓（苏州）酒店预订
						href="http://hotel.elong.com/taicang/">太仓（苏州）酒店</a><span
						class="pl5 pr5">|</span> <a title=延吉酒店预订
						href="http://hotel.elong.com/yanji/">延吉酒店</a><span class="pl5 pr5">|</span>
					<a title=恩施酒店预订 href="http://hotel.elong.com/enshi/">恩施酒店</a><span
						class="pl5 pr5">|</span> <a title=雅安酒店预订
						href="http://hotel.elong.com/yaan/">雅安酒店</a><span class="pl5 pr5">|</span>
					<a title=齐齐哈尔酒店预订 href="http://hotel.elong.com/qiqihaer/">齐齐哈尔酒店</a>
					<span class="pl5 pr5">|</span> <a title=安庆酒店预订
						href="http://hotel.elong.com/anqing/">安庆酒店</a><span
						class="pl5 pr5">|</span> <a title=咸宁酒店预订
						href="http://hotel.elong.com/xianning/">咸宁酒店</a><span
						class="pl5 pr5">|</span> <a title=宜宾酒店预订
						href="http://hotel.elong.com/yibin/">宜宾酒店</a> <span
						class="pl5 pr5">|</span> <a title=长治酒店预订
						href="http://hotel.elong.com/changzhi/">长治酒店</a><span
						class="pl5 pr5">|</span> <a title=大庆酒店预订
						href="http://hotel.elong.com/daqing/">大庆酒店</a> <span
						class="pl5 pr5">|</span> <a title=广元酒店预订
						href="http://hotel.elong.com/guangyuan/">广元酒店</a><span
						class="pl5 pr5">|</span> <a title=宝鸡酒店预订
						href="http://hotel.elong.com/baoji/">宝鸡酒店</a><span class="pl5 pr5">|</span>
					<a title=上虞酒店预订 href="http://hotel.elong.com/shangyu_shaoxin/">上虞酒店</a>
					<span class="pl5 pr5">|</span> <a title=邢台酒店预订
						href="http://hotel.elong.com/xingtai/">邢台酒店</a><span
						class="pl5 pr5">|</span> <a title=象山酒店预订
						href="http://hotel.elong.com/xiangshan/">象山酒店</a> <span
						class="pl5 pr5">|</span> <a title=咸阳酒店预订
						href="http://hotel.elong.com/xianyang/">咸阳酒店</a><span
						class="pl5 pr5">|</span> <a title=盘锦酒店预订
						href="http://hotel.elong.com/panjin/">盘锦酒店</a><span
						class="pl5 pr5">|</span> <a title=郴州酒店预订
						href="http://hotel.elong.com/chenzhou/">郴州酒店</a> <span
						class="pl5 pr5">|</span> <a title=信阳酒店预订
						href="http://hotel.elong.com/xinyang/">信阳酒店</a><span
						class="pl5 pr5">|</span> <a title=龙岩酒店预订
						href="http://hotel.elong.com/longyan/">龙岩酒店</a> <span
						class="pl5 pr5">|</span> <a title=九华山酒店预订
						href="http://hotel.elong.com/jiuhuashan/">九华山酒店</a><span
						class="pl5 pr5">|</span> <a title=周庄酒店预订
						href="http://hotel.elong.com/zhouzhuang/">周庄酒店</a><span
						class="pl5 pr5">|</span> <a title=运城酒店预订
						href="http://hotel.elong.com/yuncheng/">运城酒店</a> <span
						class="pl5 pr5">|</span> <a title=宁海（宁波）酒店预订
						href="http://hotel.elong.com/ninghai_ningbo/">宁海（宁波）酒店</a><span
						class="pl5 pr5">|</span> <a title=安吉（湖州）酒店预订
						href="http://hotel.elong.com/anji/">安吉（湖州）酒店</a> <span
						class="pl5 pr5">|</span> <a title=呼伦贝尔（海拉尔）酒店预订
						href="http://hotel.elong.com/hulunbeier/">呼伦贝尔（海拉尔）酒店</a><span
						class="pl5 pr5">|</span> <a title=汉中酒店预订
						href="http://hotel.elong.com/hanzhong/">汉中酒店</a><span
						class="pl5 pr5">|</span> <a title=湘潭酒店预订
						href="http://hotel.elong.com/xiangtan/">湘潭酒店</a> <span
						class="pl5 pr5">|</span> <a title=自贡酒店预订
						href="http://hotel.elong.com/zigong/">自贡酒店</a><span
						class="pl5 pr5">|</span> <a title=赤峰酒店预订
						href="http://hotel.elong.com/chifeng/">赤峰酒店</a><span
						class="pl5 pr5">|</span> <a title=长白山酒店预订
						href="http://hotel.elong.com/changbaishan/">长白山酒店</a> <span
						class="pl5 pr5">|</span> <a title=德阳酒店预订
						href="http://hotel.elong.com/deyang/">德阳酒店</a><span
						class="pl5 pr5">|</span> <a title=漳州酒店预订
						href="http://hotel.elong.com/zhangzhou/">漳州酒店</a><span
						class="pl5 pr5">|</span> <a title=安顺（黄果树）酒店预订
						href="http://hotel.elong.com/anshun/">安顺（黄果树）酒店</a><span
						class="pl5 pr5">|</span> <a title=南充酒店预订
						href="http://hotel.elong.com/nanchong/">南充酒店</a><span
						class="pl5 pr5">|</span> <a title=葫芦岛酒店预订
						href="http://hotel.elong.com/huludao/">葫芦岛酒店</a> <span
						class="pl5 pr5">|</span> <a title=桐乡酒店预订
						href="http://hotel.elong.com/tongxiang/">桐乡酒店</a><span
						class="pl5 pr5">|</span> <a title=嘉峪关酒店预订
						href="http://hotel.elong.com/jiayuguan/">嘉峪关酒店</a><span
						class="pl5 pr5">|</span> <a title=天水酒店预订
						href="http://hotel.elong.com/tianshui/">天水酒店</a> <span
						class="pl5 pr5">|</span> <a title=菏泽酒店预订
						href="http://hotel.elong.com/heze/">菏泽酒店</a><span class="pl5 pr5">|</span>
					<a title=常德酒店预订 href="http://hotel.elong.com/changde/">常德酒店</a> <span
						class="pl5 pr5">|</span> <a title=丽水酒店预订
						href="http://hotel.elong.com/lishui/">丽水酒店</a><span
						class="pl5 pr5">|</span> <a title=晋江酒店预订
						href="http://hotel.elong.com/jinjiang/">晋江酒店</a> <span
						class="pl5 pr5">|</span> <a title=辽阳酒店预订
						href="http://hotel.elong.com/liaoyang/">辽阳酒店</a><span
						class="pl5 pr5">|</span> <a title=台山酒店预订
						href="http://hotel.elong.com/taishan/">台山酒店</a><span
						class="pl5 pr5">|</span> <a title=茂名酒店预订
						href="http://hotel.elong.com/maoming/">茂名酒店</a> <span
						class="pl5 pr5">|</span> <a title=临汾酒店预订
						href="http://hotel.elong.com/linfen/">临汾酒店</a><span
						class="pl5 pr5">|</span> <a title=梧州酒店预订
						href="http://hotel.elong.com/wuzhou/">梧州酒店</a> <span
						class="pl5 pr5">|</span> <a title=滨州酒店预订
						href="http://hotel.elong.com/binzhou/">滨州酒店</a><span
						class="pl5 pr5">|</span> <a title=泸州酒店预订
						href="http://hotel.elong.com/luzhou/">泸州酒店</a> <span
						class="pl5 pr5">|</span> <a title=揭阳酒店预订
						href="http://hotel.elong.com/jieyang/">揭阳酒店</a><span
						class="pl5 pr5">|</span> <a title=奉化（宁波）酒店预订
						href="http://hotel.elong.com/fenghua_ningbo/">奉化（宁波）酒店</a><span
						class="pl5 pr5">|</span> <a title=攀枝花酒店预订
						href="http://hotel.elong.com/panzhihua/">攀枝花酒店</a><span
						class="pl5 pr5">|</span> <a title=宿迁酒店预订
						href="http://hotel.elong.com/suqian/">宿迁酒店</a><span
						class="pl5 pr5">|</span>
				</p>
			</div>
		</div>
		<div style="DISPLAY: none" id=bottom_partner class=bottom_con>
			<h2>合作伙伴</h2>
			<p>
				<a title=住哪网 href="http://www.zhuna.cn/" target=_blank>住哪网</a><span
					class="pl5 pr5">|</span> <a title=TripAdvisor
					href="http://www.tripadvisor.cn/" target=_blank>TripAdvisor</a><span
					class="pl5 pr5">|</span> <a title=吉祥航空
					href="http://www.juneyaoair.com/" target=_blank>吉祥航空</a><span
					class="pl5 pr5">|</span> <a title=北京房产
					href="http://bj.house.sina.com.cn/" target=_blank>北京房产</a><span
					class="pl5 pr5">|</span> <a title=装修家居 href="http://www.jiaju.com/"
					target=_blank>装修家居</a><span class="pl5 pr5">|</span> <a
					title=住哲酒店管理系统 href="http://www.zhuzher.com/" target=_blank>住哲酒店管理系统</a>
			</p>
		</div>
		<div style="DISPLAY: none" id=bottom_event class=bottom_con>
			<h2>常见酒店</h2>
			<p>
				<a title=如家快捷酒店 href="http://hotel.elong.com/hotel-chain/32.html">如家酒店官网</a><span
					class="pl5 pr5">|</span> <a title=布丁连锁酒店
					href="http://hotel.elong.com/hotel-chain/111.html">布丁酒店</a><span
					class="pl5 pr5">|</span> <a title=酒店预订
					href="http://hotel.elong.com/ ">酒店预订</a> <span class="pl5 pr5">|</span>
				<a title=汉庭连锁酒店 href="http://hotel.elong.com/hotel-chain/56.html ">汉庭酒店官网</a><span
					class="pl5 pr5">|</span> <a title=7天连锁酒店
					href="http://hotel.elong.com/hotel-chain/53.html ">七天连锁酒店官网</a><span
					class="pl5 pr5">|</span> <a title=希尔顿饭店
					href="http://hotel.elong.com/hotel-chain/14.html">希尔顿酒店</a> <span
					class="pl5 pr5">|</span> <a title=书香府邸附近酒店
					href="http://hotel.elong.com/chengdu/place3220538/">书香府邸酒店</a><span
					class="pl5 pr5">|</span> <a title=桔子酒店
					href="http://hotel.elong.com/hotel-chain/65.html">桔子酒店</a><span
					class="pl5 pr5">|</span> <a title=格林豪泰连锁酒店
					href="http://hotel.elong.com/hotel-chain/44.html">格林豪泰连锁酒店官网</a> <span
					class="pl5 pr5">|</span> <a title=香格里拉大酒店
					href="http://hotel.elong.com/hotel-chain/11.html">香格里拉酒店</a><span
					class="pl5 pr5">|</span> <a title=维也纳连锁酒店
					href="http://hotel.elong.com/hotel-chain/97.html">维也纳酒店</a><span
					class="pl5 pr5">|</span> <a title=喜来登酒店官网
					href="http://hotel.elong.com/hotel-chain/313.html">喜来登酒店</a> <span
					class="pl5 pr5">|</span> <a title=公寓式酒店
					href="http://jia.elong.com/">酒店式公寓</a><span class="pl5 pr5">|</span>
				<a title=长隆酒店 href="http://hotel.elong.com/guangzhou/52015001/">广州长隆酒店</a><span
					class="pl5 pr5">|</span> <a title=四季酒店官网
					href="http://hotel.elong.com/hotel-chain/104.html">四季酒店</a><span
					class="pl5 pr5">|</span> <a title=万豪酒店官网
					href="http://hotel.elong.com/hotel-chain/13.html">万豪酒店</a><span
					class="pl5 pr5">|</span> <a title=假日酒店
					href="http://hotel.elong.com/hotel-chain/316.html">皇冠假日酒店</a><span
					class="pl5 pr5">|</span> <a title=上海书香世家酒店
					href="http://hotel.elong.com/shanghai/50201315/">书香世家酒店</a><span
					class="pl5 pr5">|</span> <a title=凯宾斯基酒店官网
					href="http://hotel.elong.com/hotel-chain/45.html">凯宾斯基酒店</a><span
					class="pl5 pr5">|</span> <a title=锦江之星连锁酒店
					href="http://hotel.elong.com/hotel-chain/34.html">锦江之星连锁酒店官网</a> <span
					class="pl5 pr5">|</span> <a title=洲际酒店官网
					href="http://hotel.elong.com/hotel-chain/15.html">洲际酒店</a><span
					class="pl5 pr5">|</span> <a title=华住全季酒店官网
					href="http://hotel.elong.com/hotel-chain/29323.html">全季酒店</a><span
					class="pl5 pr5">|</span> <a title=广州大学城附近宾馆
					href="http://hotel.elong.com/guangzhou/center100756275/">广州大学城附近酒店</a><span
					class="pl5 pr5">|</span> <a title=威斯汀酒店官网
					href="http://hotel.elong.com/hotel-chain/423.html">威斯汀酒店</a><span
					class="pl5 pr5">|</span> <a title=杭州西湖附近酒店
					href="http://hotel.elong.com/hangzhou/place2846567/">杭州西湖附近的酒店</a>
				<span class="pl5 pr5">|</span> <a title=W酒店官网
					href="http://hotel.elong.com/hotel-chain/29303.html">w酒店</a><span
					class="pl5 pr5">|</span> <a title=速八酒店
					href="http://hotel.elong.com/hotel-chain/41.html">速8酒店官网</a><span
					class="pl5 pr5">|</span> <a title=星程酒店官网
					href="http://hotel.elong.com/hotel-chain/425.html">星程酒店</a> <span
					class="pl5 pr5">|</span> <a title=丽思卡尔顿酒店官网
					href="http://hotel.elong.com/hotel-chain/488.html">丽思卡尔顿酒店</a><span
					class="pl5 pr5">|</span> <a title=华天酒店官网
					href="http://hotel.elong.com/hotel-chain/392.html">华天酒店</a><span
					class="pl5 pr5">|</span> <a title=半岛酒店集团
					href="http://hotel.elong.com/hotel-chain/390.html">半岛酒店</a><span
					class="pl5 pr5">|</span> <a title=北京国宾酒店
					href="http://hotel.elong.com/beijing/50101021/ ">国宾酒店</a><span
					class="pl5 pr5">|</span> <a title=凯悦酒店官网
					href="http://hotel.elong.com/hotel-chain/10.html ">凯悦酒店</a> <span
					class="pl5 pr5">|</span> <a title=宜必思酒店预订
					href="http://hotel.elong.com/hotel-chain/312.html ">宜必思酒店</a><span
					class="pl5 pr5">|</span> <a title=千岛湖洲际酒店官网
					href="http://hotel.elong.com/qiandaohu_hangzhou/51233010/ ">千岛湖洲际度假酒店</a><span
					class="pl5 pr5">|</span> <a title=北京盘古七星酒店
					href="http://hotel.elong.com/beijing/50101507/ ">盘古七星酒店</a><span
					class="pl5 pr5">|</span> <a title=北戴河刘庄家庭旅馆
					href="http://hotel.elong.com/beidaihe/00508256/">北戴河刘庄家庭旅馆</a><span
					class="pl5 pr5">|</span> <a title=公寓
					href="http://www.elong.com/apartment/">公寓</a> <span class="pl5 pr5">|</span>
				<a title=家庭旅馆 href="http://www.elong.com/family/">家庭旅馆</a><span
					class="pl5 pr5">|</span> <a title=青年旅舍
					href="http://www.elong.com/youth/">青年旅舍</a><span class="pl5 pr5">|</span>
				<a title=情侣酒店
					href="http://promotion.elong.com/index/fold/fold2/index.html?t=20170503">情侣酒店</a>
				<span class="pl5 pr5">|</span> <a title=农家乐
					href="http://www.elong.com/farmhouse/">农家乐</a><span class="pl5 pr5">|</span>
				<a title=短租公寓 href="http://www.elong.com/shortrent/">短租公寓</a><span
					class="pl5 pr5">|</span> <a title=客栈
					href="http://www.elong.com/inn/">客栈</a> <span class="pl5 pr5">|</span>
				<a title=主题酒店 href="http://www.elong.com/theme/">主题酒店</a>
			</p>
		</div>
</body>
</html>