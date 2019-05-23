<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>风游旅行网</title>
<link rel="icon"
	href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<meta name="keywords" content="北京,酒店,预订" />
<meta name="description"
	content="查询到北京酒店可预订的共有13888家.北京唐拉雅秀酒店;北京大方饭店;北京海淀花园饭店;飘HOME连锁酒店(北京西客站店);北京华泰饭店;北京美第奇精选酒店;北京福建大厦;飘HOME连锁酒店(北京王府井步行街店);速8酒店(北京南沙窝桥302医院店);北京外国专家大厦;北京京伦饭店;北京丽景湾国际酒店;北京万寿庄宾馆;北京歌华开元大酒店;北京东航大酒店;北京长白山国际酒店;北京金枫酒店;瑞尔威连锁饭店(北京西客站店);北方朗悦酒店(北京金融街店);北京渔阳饭店." />
<meta name="mobile-agent"
	content="format=html5;url=http://m.elong.com/hotel/beijing/">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Z60o25qSRChjRBuFMBO5T705Bbv53cbC"></script>

	<style type="text/css">
	
	.slip{
		white-space: nowrap;
		text-overflow: ellipsis;
		overflow: hidden;
		height: 23px
	}
	</style>

<link rel="stylesheet" rev="stylesheet"
	href='${pageContext.request.contextPath }/statics/css/new2015.min.css'
	type="text/css" media="all" />

<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/hotel-com.css'
	media="all" />

<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/list-2015.css' />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/img_box_layer.css' />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/list_intro_room.css' />
</head>
<body>
	<!-- ===================== header 2019-04-29 start ===================== -->
	<div id="header" class="header" v='20190429' b='hotels' g='NaN' lg='f'>
		<div class="header_top response_wrap3 clearfix" style="width: 1200px;">
			<div class="logo">
				<a href="http://www.elong.com" title="风游旅行网">风游旅行网</a>
			</div>
			<div class="right mt5">
				<div class="branch_menu left mr10">
					<span><a href="http://imall.elong.com/" rel="nofollow">里程商城</a></span>
					<b></b> <span class='online-customer'><a target='_blank'
						href='http://my.elong.com/kf/index?g=31878' rel='nofollow'>在线客服</a></span>
					<b></b><span class=""><a target="_blank"
						href="http://my.elong.com/helpCenter/index" rel="nofollow">帮助中心</a></span>
					<b></b><span class='language' method="newSpanLang"> <a
						href="#?" method="eng">English</a><i class='com_icon04 left'></i>
					<p>
							<a
								href="http://hotel.elong.com/trans2cn/?target=http://hotel.elong.com"
								title="简体版" rel="nofollow">简体版</a> <a
								href="http://hotel.elong.com/trans2tw/?target=http://hotel.elong.com"
								rel="nofollow" title="繁體版">繁体版</a>
						</p>
					</span>
				</div>
				<span class="one_panic one_panicxcx mr10 left"> <i
					class="com_iconxcx left"></i> <em>小程序</em> <em>体验更轻盈</em>
					<div class="only_xcx">
						<i class="com_arrow_xcx"></i>
					</div>
				</span> <a class='one_panic mr10 left'
					href="http://promotion.elong.com/index/cn/2016/elong_app_down/index.html"
					rel="nofollow" target="_blank"><i class='com_icon01 left'></i><em>手机版</em><em
					method="newPromotion">专享五折起</em>
					<div class="only_phone" method="onlyPhoneDiv" style="display: none">
						<i class="com_arrow_tl"></i>
					</div> </a> <span class="online_phone left"> <i
					class='com_icon02 left'></i> <em>7&#215;24 客服电话</em><b class=''
					method='newPhoneNo'><i class='com_icon03 right'></i>95711</b>
					<div class="on_phonnum" method="newPhoneDiv">
						<i class="com_arrow_tl"></i>
						<ul>
							<!--当鼠标移入时显示-->
							<li><p>国内：95711</p></li>
							<li class="last"><p>港澳台及海外：86-551-6529-9777</p></li>
						</ul>
					</div>
				</span>
			</div>
		</div>
		<!--导航-->
		<div class="nav_box">
			<div id="nav" class="response_wrap3" style="width: 1200px;">
				<ul class="link" id="channelMenu">
					<li sid="28632"><a href="http://www.elong.com" title="风游旅行网"
						id="nav_home">首页</a></li>
					<li sid="28639" class="on"><a title="酒店预订"
						href="http://hotel.elong.com/" id="nav_hotels">国内酒店</a></li>
					<li style="display: none;" sid="41493"><a
						href="http://tuan.elong.com/" id="A1" title="酒店团购">团购</a></li>
					<li sid="28642"><a href="http://ihotel.elong.com/"
						id="nav_hotelsw" title="国际•港澳台酒店">国际•港澳台酒店<span
							class="icon_coupon"></span></a></li>
					<li style="display: none;" sid=""><a
						href="http://jia.elong.com/" id="nav_apartment" title="短租公寓">短租公寓<span
							class="icon_apart"
							style="background: url(${pageContext.request.contextPath }/statics/images/icon2015-0.png) no-repeat; background-position: -307px 0;"></span></a>
					</li>
					<li style="display: none;" sid="52756"><a
						href="http://qiang.elong.com" title="限时抢">限时抢</a>
					<li sid="28640"><a href="http://flight.elong.com/"
						title="机票预订">国内•国际机票<span
							style="left: 60px; background-position: -589px -29px;"
							class="icon_coupon"></span></a></li>
					<li sid="28640"><a
						href="http://m.elongstatic.com/static/webapp/train/website/railway.html"
						title="火车票">火车票</a></li>
					<li sid="28640"><a href="http://bus.elong.com/ly" title="汽车票">汽车票</a></li>
					<li><a href="http://trip.elong.com/" title="旅游指南">旅游指南</a></li>
					<li><a href="https://tmc.ly.com/" title="商旅" target='_blank'>商旅</a></li>
				</ul>
				<div class="account" method="dvAccount">
					<input type="hidden" id="hidden_memberid_user" value="" /> <input
						type="hidden" id="hidden_user_name" value="" />
					<div class="log" id="user_display_login">
						<span><a
							href="https://secure.elong.com/passport/login_cn.html"
							rel="nofollow" rel="nofollow">登录</a></span>|<span><a
							href="https://secure.elong.com/passport/register_cn.html?rnd=20190510164713"
							rel="nofollow" rel="nofollow">注册</a> </span>
					</div>
					<!--弹出-->
					<div class="drop_box_log pt" style="display: none"
						id="div_user_center">
						<div class="new_btnLogin">
							<a href="https://secure.elong.com/passport/login_cn.html"
								rel="nofollow">登录</a>
						</div>
						<ul class='clx'>
							<li class='icon_d1'><b></b><a
								href="http://my.elong.com/hotel/MyHotelOrderList_cn.html?rnd=20190510164713"
								rel="nofollow">酒店订单</a></li>
							<li class='icon_d2' style="display: none;"><b></b><a
								href="http://my.elong.com/GrouponOrder_cn.html?rnd=20190510164713"
								rel="nofollow">团购订单</a></li>
							<li class='icon_d3'><a
								href="http://my.elong.com/Flight/FlightOrder_cn.html?rnd=20190510164713"
								rel="nofollow">机票订单</a></li>
							<li class='icon_d4'><a
								href="http://my.elong.com/train/orderlist?rnd=20190510164713"
								rel="nofollow">火车票订单</a></li>
							<li class='icon_d5'><b></b><a
								href="http://my.elong.com/CashCoupon_cn.html?flag=Cash&rnd=20190510164713"
								rel="nofollow">现金账户</a></li>
							<li class='icon_d6'><b></b><a
								href="http://my.elong.com/ly/lyOrderFill?rnd=20190510164713"
								rel="nofollow">汽车票订单</a></li>
							<li class='icon_d7'><b></b><a
								href="http://my.elong.com/hotel/hotelfavlist_cn.html?rnd=20190510164713"
								rel="nofollow">酒店收藏</a></li>
							<li class='icon_d8'><b style='display: none;'
								id='comment_notice'>9</b> <a id="n_comment_a"
								href="http://my.elong.com/Hotel/reviewedorderlist_cn.html?rnd=20190510164713"
								rel="nofollow">我的点评</a></li>
							<li class='icon_d9'><b></b><a
								href="http://my.elong.com/me_personalcenter_cn" rel="nofollow">个人设置</a></li>
						</ul>
					</div>
					<!--弹出 end-->
				</div>
			</div>
		</div>
		<style type="text/css">
.appWrap {
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat 0 -483px
}

.appBox .close {
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat -328px -182px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
}

.appBox .close:hover {
	background-position: -358px -182px;
}

.appBox .intro {
	width: 480px;
	height: 210px;
	background:
		url(${pageContext.request.contextPath }/statics/images/fx_btm.png)
		no-repeat 0 0px;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
	position: absolute;
	top: 27px;
	left: 33px;
}

.lisort{
	background-color: #49F;
	color: #FFF;
	top: -2px;
	border-top: 2px solid #49f;
}

.appBox .way i {
	display: inline-block;
	width: 43px;
	height: 43px;
	margin-right: 5px;
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat 0 -334px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}

.appBox .way .but {
	width: 170px;
	height: 30px;
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat -181px -334px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
	border: 0;
	text-align: center;
	color: #fff;
	font: 16px "Microsoft Yahei", Simsun, sans-serif;
	cursor: pointer;
}

.appBox .way .but:hover {
	background-position: -181px -364px;
}

.appBox .way .success i {
	width: 20px;
	height: 16px;
	margin-right: 5px;
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat -181px -394px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}
</style>
		<div class="clear"></div>
	</div>
	<!-- ===================== header end ===================== -->
	<!-- 新版图层start -->
	<div id="newBox" class="newBox"></div>

	<div id="introRoomBox"></div>
	<!-- 推荐房型end -->
	<!-- 城市列表start -->

	<div class="cont_box response_wrap3" method="listPageContainer">
		<div class="mt10 mb10"></div>
		<form  id="form01" action="toIndexTwo" method="post">
		<div method="searchBox" id="m_searchBox" data-id="mainSearchBox"
			class="search_box mb5">

			<div data-wrap="cityWrap" class="search_item search_termini">
				<label> <span>目的地</span> <input 
					 type="input" class="input_f16 input_termini"
					value="${CurCity.name }" cityname="${CurCity.name }" citynameen="beijing" citynamecn="${CurCity.name }" name="destination"
					cityid="${CurCity.id }" />
				</label>
			</div>
			
			<div class="search_item search_keywords" >
				<label> <span>关键词</span> <input 
					 type="input" class="input_f16 input_termini" name="keywords"
					placeholder="如位置\酒店名" />
				</label>
			</div>
			<div class="btn_search_w1 right" >
				<span class="icon_search mr10"></span>搜索
			</div>
			</form>
		</div>
		
		<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
		
		
		<script type="text/javascript">
			$(function () {
				$(".btn_search_w1").click(function () {
					$("#form01").submit();
				})
			})
		</script>
		
		<div class="filter_box beee mb20 z10" id="filterZone"
			method="filterZone">



			<!-- price start -->
			<div class="filter_item" method="priceFilterPart" data-multi="1">
				<div class="filter_title">
					<span class="icon_filter_pri"></span>价格区间<i class="b-line"></i>
				</div>
				<div class="filter_option_box">
					<div class="filter_option">
						<div data-type="price" data-id="-1" data-low="0" data-high="0"
							class="filter_unlimited filter_unlimited_on">不限</div>
						<div class="filter_custom">
							<span class="mr5">自定义</span> <span class="mr5"><input
								method="lowPrice" type="number" class="input_f12" /></span> <span
								class="mr5 cddd">—</span> <span class="mr5"><input
								method="highPrice" type="number" class="input_f12" /></span> <span
								method="priceConfirm" data-id="999" class="btn_filter_sure">确定</span>
						</div>
						<ul class="filter_cb_list filter_cb_list1">
							<c:forEach var="price" items="${ prices}" step="1"
								varStatus="statu">
								<li data-type="price" class="condition"
									data-id="${price.dictCode }"
									data-low="${fn:split(price.info, '-')[0]}"
									data-high="${fn:split(price.info, '-')[1]}"
									data-name="${price.info}"
									<c:if test="${CurPrice.dictCode==price.dictCode }"> id="curPrice" </c:if>>
									<i class="icon_radio1"></i><span>${price.info}元</span><input
									type="radio" />
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!-- price end -->
			<!-- star start -->
			<div class="filter_item" method="starFilterPart" data-multi="1">
				<div class="filter_title">
					<span class="icon_filter_star"></span>星级<i class="b-line"></i>
				</div>
				<div class="filter_option_box">
					<div class="filter_option">
						<div data-type="star" data-id="-1"
							class="filter_unlimited filter_unlimited_on">不限</div>
						<ul class="filter_cb_list">
							<c:forEach var="star" items="${stars}" step="1" varStatus="statu">
								<li data-type="star" class="condition"
									data-id="${star.dictCode }" data-name="${star.info }"
									data-selected="0"
									<c:if test="${CurStar.dictCode==star.dictCode }"> id="curStar" </c:if>>
									<i class="icon_radio1"></i> <span>${star.info }</span><input
									type="checkbox" />
								</li>
							</c:forEach>
						</ul>

					</div>
				</div>
			</div>
			<!-- star end -->

			<!--1010.人数 1011.设施 1015.主题 -->
			<div class="filter_item " method="themeFilterPart" data-type="city"
				data-typeId="1015" data-multi="1">
				<div class="filter_title">
					<span class="icon_filter_theme"></span>酒店类型<i class="b-line"></i>
				</div>
				<div class="filter_option_box">
					<div class="filter_option">
						<div data-type="type" data-id="-1"
							class="filter_unlimited filter_unlimited_on">不限</div>
						<ul class="filter_cb_list" >
							<c:forEach var="type" items="${ types}" step="1"
								varStatus="statu">
								<li class="condition" data-type="type"
									data-typeId="${type.type }" data-id="${type.id }"
									data-name="${type.name }" data-selected="0"
									<c:if test="${CurType.id==type.id }"> id="curType" </c:if>>
									<i class="icon_radio1"></i> <span>${type.name }</span><input
									type="checkbox" />
								</li>
							</c:forEach>

						</ul>
						<div class="icon_hl_more1 filter_more" 
							data-showAll="0"></div>
					</div>
				</div>
			</div>
			<!--1010.人数 1011.设施 1015.主题 3.品牌 -->
			<div class="filter_item " method="facilityFilterPart"
				data-typeId="1011" data-multi="1">
				<div class="filter_title">
					<span class="icon_filter_serv"></span>所在城市<i class="b-line"></i>
				</div>
				<div class="filter_option_box">
					<div class="filter_option slip">
						<div data-type="city" data-id="-1"
							class="filter_unlimited filter_unlimited_on">不限</div>
						<ul class="filter_cb_list" method="facilityList">
							<c:forEach var="city" items="${ citys}" step="1"
								varStatus="statu">
								<li method="facility" data-type="city" class="condition"
									data-typeId="${city.type }" data-id="${city.id }"
									data-name="${city.name }" data-selected="0"
									<c:if test="${CurCity.id==city.id}"> id="curCity" </c:if>>
									<i class="icon_radio1"></i> <span>${city.name }</span><input
									type="checkbox" />
								</li>
							</c:forEach>


						</ul>
						<div class="icon_hl_more1 filter_more" method="showAllOps"
							data-showAll="0"></div>
					</div>
				</div>
			</div>
			<!-- discount start -->

			<!-- discount end -->
		</div>

		<div class="mb10" id="conditionZone" method="conditionZone">
			<div class="cont_total left">
				<span class="t24 mr5" id="hotelCount">${sum }</span>家酒店满足条件
			</div>
			<div class="cond-list"></div>
		</div>
		<c:if test="${loginUser==null }">
				<!--引导登陆start-->
				<div class="list_login">
					<!-- <img src="${pageContext.request.contextPath }/statics/picture/login_detail.png"/  method="userLogin"> -->
					<!-- <p>去登录</p> -->
					<a href="${pageContext.request.contextPath }/login.jsp"><img
						src="${pageContext.request.contextPath }/statics/picture/bg1.png"/></a>
				</div>
				<!--引导登陆end-->
				</c:if>
		<div class="hlist_box">
			<!--左侧内容 start-->
			<div class="hlist_main left">

				<div class="h_booked_wrap mt10 mb10" id="bookingRateZone"
					style="display: none">
					<div class="bcde h_booked">
						<div class="percentBox mr15">
							<div id="percentBackground" class="percentBox_bg"></div>
							<div id="bookPercent"></div>
							<div class="pertxt">
								<div method="percent" class="pertxt_num"></div>
								<div class="pertxt_com">已订完</div>
							</div>
						</div>
						<span class="t16 yahei c37d" method="bookingRateText"></span> <i
							class="icon_close_bkd" method="close"></i>
					</div>
				</div>

				<div class="h_sort bcde mb10" id="sortZone" method="sortZone">
					<ul class="sort_list left">
						<li  title="默认排序"
							class="on" data-default="1"data-sort="hotelId" data-dirc="asc"  >智能排序</li>
						<li  data-sort="Level1" data-dirc="asc"  title="综合排序">综合排序</li>

						<li class="priceSort">
							<p class="priceSortTitle">
								<span>价格</span>
							</p>
							<div class="priceSortDiv">
								<p data-sort="hotelPrice" data-dirc="asc" title="点击按价格由低到高排序"
									data-title="价格 低 → 高">价格 低 → 高</p>
								<p data-sort="hotelPrice" data-dirc="desc" title="点击按价格由高到低排序"
									data-title="价格 高 → 低">价格 高 → 低</p>
							</div>
						</li>
						<li class="priceSort">
							<p class="priceSortTitle">
								<span>评分</span>
							</p>
							<div class="priceSortDiv">
								<p data-sort="hotelRatings" data-dirc="asc" title="点击按评分由低到高排序"
									data-title="评分 低 → 高">评分 低 → 高</p>
								<p data-sort="hotelRatings" data-dirc="desc" title="点击按评分由高到低排序"
									data-title="评分 高 → 低">评分 高 → 低</p>
							</div>
						</li>
					</ul>
					<div class="sort_filter right">
						<ul class="sort_fil_list" style="height: 38px; width: 252px">
						</ul>
						<ul class="sort_back_tit none">
							<li method="couponPrice" data-selected="1" class="sort_back_l on"
								data-default="1">返后价</li>
							<li method="couponPrice" data-selected="" class="sort_back_r ">返前价</li>
						</ul>
					</div>
				</div>


				<div class="h_sale mb10" id="hotSaleContainer"
					method="hotSaleContainer" style="display: none"></div>

				<div id="hotelContainer">
					<div class="h_list" method="hotelList">


						<c:forEach var="hotel" items="${ hotels.list}" step="1"
							varStatus="statu">
							<div class="h_item mvt_171218" id="hotel${ hotel.hotelId}" data-hotelAddress="${hotel.hotelAddress}"
								method="hotelItem" data-hotelid="${hotel.hotelId}">
								<div class="h_info">
									<div class="h_info_pic"
										data-mark="img_${ hotel.hotelId}_container" method="">
										<a href="${pageContext.request.contextPath }/toIndex3?hotelId=${ hotel.hotelId}" target="_blank"> <img
											class="bigImg" data-hotelid="${ hotel.hotelId}"
											data-producttype="0" data-needdatacache="true"
											data-mark="img_${ hotel.hotelId}"
											onerror="this.src='${pageContext.request.contextPath }/statics/picture/no-f-pic.jpg'"
											src="http://m.elongstatic.com/static/webapp/pc_static/common/pic/loading180_130.gif"
											data-src="${pageContext.request.contextPath }/${hotel.fileUrl }"
											big-src="${pageContext.request.contextPath }/${hotel.fileUrl }"
											alt="${hotel.hotelName }" width="180" height="130" />
										</a>
										
									</div>
									<div class="h_info_text">
										<!---------------->
										<div class="h_info_pri">
											<p>
												<a href="${pageContext.request.contextPath }/toIndex3?hotelId=${ hotel.hotelId}" target="_blank"> <span class="c666">&yen</span>
													<span class="h_pri_num ">${hotel.hotelPrice }</span> <span
													class="cf55">起</span>
												</a>
											</p>
											<p class="intro_room" method="recommendRoom" title="热销房型推荐"
												data-hotelid="${hotel.hotelId }" data-producttype="0"
												data-needdatacache="true">
												查看推荐房型<i></i>
											</p>
											<p class="mt5"></p>
											<div class="to_detail">
												<p class="lastt_book mt10"
													id="recentOrder_${hotel.hotelId }"></p>
												<a class="t14" href="toIndex3" target="_blank"> 查看详情 </a>
											</div>
										</div>
										<!---------------->
										<div class="h_info_comt">
											<a href="/${hotel.hotelId }/#review" target="_blank"
												class="h_comt_data"> <span method="review"
												class="h_info_comt_bg"> <i class="t20 c37e">${hotel.hotelRatings }&nbsp;</i><i
													class="t20">棒极了</i>
											</span> <%-- <span class="c555 block mt5" data-score="${hotel.hotelRatings }">共<b>10025</b>条点评</span> --%>
											</a>
											<!-- <span class="block listTagItem">“出行方便”</span> -->
											<!-- 收藏 -->
											<div class="h_add_cc">
											<c:set var="on"></c:set>
												<c:forEach	items="${collections }" var="col">
													<c:if test="${hotel.id==col.hotelById }">
													<c:set var="on" value="on"></c:set>
														<span class="add_collect on"	data-hotelid="${hotel.hotelId }"> 
															<i class="icon_add_coll" ></i>
															<span data-showname="favStatus"> 已收藏 </span>
														</span>
													</c:if>
													</c:forEach>
													<c:if test="${on!='on' }">
													<span class="add_collect "	data-hotelid="${hotel.hotelId }"> 
															<i class="icon_add_coll" ></i>
															<span data-showname="favStatus">收藏 </span>
														</span>
													</c:if>
											</div>

										</div>
										<!---------------->
										<div class="h_info_base">
											<p class="h_info_b1">
												<a href="toIndex3" target="_blank"
													title="${hotel.hotelName }"><span class="icon_nmb"> ${statu.count }</span><span
													class="info_cn">${hotel.hotelName }</span></a> <i
													class="icon_crown_new" title="战略合作酒店，为风游会员提供优质服务及优惠房价"></i>
												<b class="icon_stars icon_star${hotel.hotelRating }" title="国家旅游局评定星级为${hotel.hotelRating }星级"></b>
											</p>
											<p class="h_info_b2">
												${fn:split(hotel.hotelAddress, " ")[2]} <span
													class="info_b2_l"> <span class="l1"
													title="${hotel.hotelName }地图" method="showMap"
													data-lng="116.3497983" data-lat="39.91372316"
													data-mapType="0" data-hotelid="${hotel.hotelId }"
													data-hotelname="${hotel.hotelName }" data-hotelrank="1"
													data-hoteladdress="${fn:split(hotel.hotelAddress, ' ')[2]} ">
														<i class="icon_land_map"></i>地图
												</span>
												</span>
											</p>
											<div class="hotel_inf_sale clearfix mt5">
												<p class="h_comt_other">
													<c:forEach var="service"
														items="${fn:split(hotel.hotelServePy, ',')}" step="1"
														varStatus="statu">

														<span class="icon_faci_${service}" title="${service}"></span>
													</c:forEach>


												</p>
											</div>
										</div>
										<!---------------->
									</div>
									<!--------------------------Map Start--------------------------------------->
									<!-- 地图 start-->
									<div id="h_map_wrap${hotel.hotelId }"
										style="display: none; height: 410px;"></div>
									<!-- 地图 end-->
									<div id="soso_map_wrap${hotel.hotelId }" style="display: none"
										class='mt10'></div>

								</div>
							</div>

						</c:forEach>



					</div>


				</div>
				<div id="pageContainer" class="paging1">
					<input type="hidden" id="count" name="count" value="${count }"> 
					<a  href="javascript:void(0)" class="page_back" 
					 title="上一页">上一页</a>
					<a  href="javascript:void(0)" title="第${curPage }页">第${curPage }页</a>
					<a  href="javascript:void(0)" class="page_next" 
					 title="下一页">下一页</a>
				</div>
		
			
		
			</div>
			<!-- 右侧内容 -->
			<div id="rightSpanDiv">
				<div class="hlist_sider right">
					<div method="stayWhere" class="r_where mb10" style="display: none">
						<i class="icon_where left"></i><i class="icon_sort_arrr4 right"></i>看看大家都住哪儿
					</div>
					<div id="floatRightDiv">
						<div id="sidebarMap"
							class="r_map bddd mb10 r_mapbox r_map_mvt1814">
							<div class="map_tool bbddd">
								<div method="bigMap" class="map_enter t14 left">
									<b class="icon_seemap"></b> 查看大地图 <i
										class="icon_sort_arrr3 ml5"></i>
								</div>
								<div method="fixed" class="right mr15 on" data-selected="1"
									data-enablefix="1">
									<i class="icon_checkbox1"></i> 跟随浮动
								</div>
							</div>
							<div id="rightMap" class="cc_loading">
								<span class="loading_b"></span>
							</div>
						</div>
						
						
						<div class="m_collect" id="favorAndSeenContainer">
							<div class="m_cctit">
								<ul class="m_ccnav clearfix">
									<li class="pos" method="dataTab" data-name="seen"
										data-status="0">历史浏览</li>
									<li class="pos" method="dataTab" data-name="favor"
										data-status="0">我的收藏</li>
								</ul>
								<span class="line" method="statusLine"></span>
							</div>
							<div class="m_cclst" data-name="seen" style="display: none">
							</div>
							<div class="m_cclst" data-name="favor" style="display: none">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="clx"></div>
		<a name="mapstop" id="mapstop"></a>
	</div>
	<div id="searchLoadingDiv" data-bindid="loadingContent"
		style="display: none">
		<div class="ht-load">
			<!--cms  waittingsearch start-->
			<div class="ht-load">
				<!--中文内容部分 start-->
				<style>
.hotel_loading {
	padding: 5px 0;
}

.loading_b {
	width: 75px;
	height: 80px;
	background:
		url(${pageContext.request.contextPath }/statics/images/loading-pc.gif)
		no-repeat;
}
</style>
				<div class="mt20 mb20 tc t14">
					<p>
						<span class="loading_b vm mr10"></span>小艺正在努力为您加载中...
					</p>
				</div>
				<!--内容部分 end-->
			</div>
			<!--cms  waittingsearch end-->
		</div>
	</div>
	<div class="fix_tool" id="right-box-list">
		<ul>
			<li class="cate_01" data-rightblock="1"><a href="#"
				target="_blank" style="display: block;"></a><span
				style="display: none;">我的账户</span></li>
			<li class="cate_02" data-rightblock="2"><a href="#"
				target="_blank" style="display: block;"></a><span
				style="display: none;">我的钱包</span></li>
			<li class="cate_03" data-rightblock="3"><a href="#"
				style="display: block;"></a><span style="display: none;">我的收藏</span></li>
			<li class="cate_05" data-rightblock="5"><a href="#"
				style="display: block;"></a><span style="display: none;">在线客服</span></li>
			<li class="cate_06" data-rightblock="6"><a href="#"
				style="display: block;"></a><span style="display: none;">在线反馈</span></li>
		</ul>
		<div class="go_top" id="rightBoxGoTop" style="display: none">
			<a href="#top"></a>
		</div>
	</div>
	<div class="el-poptip el-poptip-shadow" id="scan-qr-code2"
		style="display: none; width: 107px; right: 55px; position: fixed; bottom: 75px; z-index: 999;">
		<div class="">
			<div class="el-poptip-container">
				<div class="el-poptip-arrow el-poptip-arrow-2"
					style="bottom: 30px; top: auto;">
					<em>◆</em> <span>◆</span>
				</div>
				<div class="el-poptip-content">
					<!-- html内容 -->
					<div class="num_code_v">
						<span class="icon_close_sh" id="close-scan-qr-code2"></span> <i
							class="icon_right_code2"></i>
						<p style="text-align: center">关注公众号</p>
						<p style="text-align: center">反馈您的问题</p>
					</div>
					<!-- html内容结束 -->
				</div>
			</div>
		</div>
	</div>
	<div id="m_contentend" style="z-index: 200;"></div>

	<div id="m_adsContainer" style="display: none"></div>
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
				style="background-image: url(static/images/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
				京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
			<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/hotel/eltk/eltk.html">《风游旅行网服务条款》</a><i
				class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i> <a
				rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
		</div>
		<div class="footer_safe">
			<a class="cm_icon qua-1"
				href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN"
				rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a>
			<a title="风游网通过PCI认证" alt="风游网通过PCI认证" target="_blank" rel="nofollow"
				href="http://www.atsec.cn/cn/pci-attestation/Elong-PCIAttestation-atsec-PCI-DSS-C-01128.jpg"
				class="cm_icon qua-6">风游网通过PCI认证</a> <a class="cm_icon qua-3"
				href="http://www.itrust.org.cn/Home/Index/satification_certificate/wm/MY2019042401.html"
				rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a>
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
	<!-- 可信网站LOGO安装开始 -->
	<div style="display: none;">
		<form id="form" action="toIndex2" method="post">
			<input type="hidden" id="bigPrice" name="bigPrice"value="${fn:split(CurPrice.info, '-')[1]}"> 
			<input type="hidden" id="smallPrice" name="smallPrice" value="${fn:split(CurPrice.info, '-')[0]}"> 
			<input type="hidden" id="city" name="city" value="${CurCity.id }">
			<input type="hidden" id="star" name="star" value="${CurStar.dictCode }">
			<input type="hidden" id="type" name="type" value="${CurType.id }">
			<input type="hidden" id="price" name="price"
				value="${CurPrice.dictCode }">
			<input type="hidden" id="curPage" name="curPage" value="${curPage }">
			<input type="hidden" id="sort" name="sort" value="${sort }" >
			<input type="hidden" id=desc name="desc" value="${desc }" >
		</form>
	</div>
	
	<script type="text/javascript">
	var map = new BMap.Map("sidebarMap");
		$(function() {
			for (var i = 0; i < $(".bigImg").length; i++) {
				$(".bigImg").eq(i).attr("src",
						$(".bigImg").eq(i).attr("data-src"))
			}
			
			// 百度地图API功能
			
			var point = new BMap.Point(116.331398,39.897445);
			map.centerAndZoom(point,11);
			map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
			map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
			map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
			map.addControl(new BMap.OverviewMapControl()); //添加默认缩略地图控件
			map.addControl(new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_BOTTOM_RIGHT }));   //右下角，打开
			
			var price = $("#price").val();
			if (price != '' && price != null) {
				var html = '<i>您已选择：</i><a title="清空条件" onclick="clearCondition()" href="javascript:void();">清空条件</a><span title="删除此条件" data-type="'
						+ $("#curPrice").attr("data-type")
						+ '" onclick="delCondition(this)" data-id="'
						+ $("#curPrice").attr("data-id")
						+ '"  data-high="'
						+ $("#curPrice").attr("data-high")
						+ '"   data-low="'
						+ $("#curPrice").attr("data-low")
						+ '"   >'
						+ $("#curPrice").attr("data-name")
						+ '<i class="icon_close_hl"></i></span>';
				if ($(".cond-list").html() == '') {
					$(".cond-list").html(html)
				}
			}

			var city = $("#city").val();
			
			if (city != '' && city != null) {
				var html = '<i>您已选择：</i><a title="清空条件" onclick="clearCondition()" href="javascript:void();">清空条件</a><span title="删除此条件" data-type="'
						+ $("#curCity").attr("data-type")
						+ '" onclick="delCondition(this)" data-id="'
						+ $("#curCity").attr("data-id")
						+ '">'
						+ $("#curCity").attr("data-name")
						+ '<i class="icon_close_hl"></i></span>';
				if ($(".cond-list").html() == '') {
					$(".cond-list").html(html)
				} else {
					html = '<span title="删除此条件" data-type="'
							+ $("#curCity").attr("data-type")
							+ '" onclick="delCondition(this)" data-id="'
							+ $("#curCity").attr("data-id") + '">'
							+ $("#curCity").attr("data-name")
							+ '<i class="icon_close_hl"></i></span>';

					if ($("#curCity").attr('data-type') == '') {
						$(".cond-list").html($(".cond-list").html() + html)
					} else {
						for (var int = 0; int < $(".cond-list").find("span").length; int++) {
							if ($("#curCity").attr('data-type') == $(
									".cond-list").find("span").eq(int).attr(
									'data-type')) {
								$(".cond-list").find("span").eq(int).remove();
							}
						}
						$(".cond-list").html($(".cond-list").html() + html)
					}
				}
				if($("#curCity").attr("data-name") != ""){
					map.centerAndZoom($("#curCity").attr("data-name"),12);      // 用地址设置地图中心点
				}
			}
			var star = $("#star").val();
			if (star != '' && star != null) {
				var html = '<i>您已选择：</i><a title="清空条件" onclick="clearCondition()" href="javascript:void();">清空条件</a><span title="删除此条件" data-type="'
						+ $("#curStar").attr("data-type")
						+ '" onclick="delCondition(this)" data-id="'
						+ $("#curStar").attr("data-id")
						+ '">'
						+ $("#curStar").attr("data-name")
						+ '<i class="icon_close_hl"></i></span>';
				if ($(".cond-list").html() == '') {
					$(".cond-list").html(html)
				} else {
					html = '<span title="删除此条件" data-type="'
							+ $("#curStar").attr("data-type")
							+ '" onclick="delCondition(this)" data-id="'
							+ $("#curStar").attr("data-id") + '">'
							+ $("#curStar").attr("data-name")
							+ '<i class="icon_close_hl"></i></span>';

					if ($("#curStar").attr('data-type') == '') {
						$(".cond-list").html($(".cond-list").html() + html)
					} else {
						for (var int = 0; int < $(".cond-list").find("span").length; int++) {
							if ($("#curStar").attr('data-type') == $(
									".cond-list").find("span").eq(int).attr(
									'data-type')) {
								$(".cond-list").find("span").eq(int).remove();
							}
						}
						$(".cond-list").html($(".cond-list").html() + html)
					}
				}
			}
			var type = $("#type").val();
			if (type != '' && type != null) {
				var html = '<i>您已选择：</i><a title="清空条件" onclick="clearCondition()" href="javascript:void();">清空条件</a><span title="删除此条件" data-type="'
						+ $("#curType").attr("data-type")
						+ '" onclick="delCondition(this)" data-id="'
						+ $("#curType").attr("data-id")
						+ '">'
						+ $("#curType").attr("data-name")
						+ '<i class="icon_close_hl"></i></span>';
				if ($(".cond-list").html() == '') {
					$(".cond-list").html(html)
				} else {
					html = '<span title="删除此条件" data-type="'
							+ $("#curType").attr("data-type")
							+ '" onclick="delCondition(this)" data-id="'
							+ $("#curType").attr("data-id") + '">'
							+ $("#curType").attr("data-name")
							+ '<i class="icon_close_hl"></i></span>';

					if ($("#curType").attr('data-type') == '') {
						$(".cond-list").html($(".cond-list").html() + html)
					} else {
						for (var int = 0; int < $(".cond-list").find("span").length; int++) {
							if ($("#curType").attr('data-type') == $(
									".cond-list").find("span").eq(int).attr(
									'data-type')) {
								$(".cond-list").find("span").eq(int).remove();
							}
						}
						$(".cond-list").html($(".cond-list").html() + html)
					}
				}
			}

		})

		
		$(".h_item").mouseover(function () {
			var city=$(this).attr("data-hotelAddress");
			if(city != ""){
				map.centerAndZoom(city,20);      // 用地址设置地图中心点
			}
		})
		
		
		$(".condition").click(function() {

			if ($(this).attr('data-type') == "price") {
				var price = $(this).attr('data-name');
				$("#price").val($(this).attr('data-id'));
				$("#bigPrice").val($(this).attr('data-high'))
				$("#smallPrice").val($(this).attr('data-low'))
				if(price=="3000"){
					$("#smallPrice").val("3000")
				}
				if(price=="200"){
					$("#bigPrice").val("200")
				}
			}

			if ($(this).attr('data-type') == "star") {
				$("#star").val($(this).attr('data-id'));
			}
			if ($(this).attr('data-type') == "city") {
				$("#city").val($(this).attr('data-id'));
			}
			if ($(this).attr('data-type') == "type") {
				$("#type").val($(this).attr('data-id'));
			}
			$("#form").submit();
		})
		function delCondition(e) {
			$(e).remove();
			if ($(e).attr('data-type') == "price") {
				var price = $(this).attr('data-name');
				$("#price").val("");
				$("#bigPrice").val("")
				$("#smallPrice").val("")
			}
			if ($(e).attr('data-type') == "star") {
				$("#star").val("");
			}
			if ($(e).attr('data-type') == "city") {
				$("#city").val("");
			}
			if ($(e).attr('data-type') == "type") {
				$("#type").val("");
			}
			$("#form").submit();
		}
		function clearCondition() {
			$(".cond-list").html("")
			$("#star").val("");
			$("#city").val("");
			$("#price").val("");
			$("#bigPrice").val("");
			$("#smallPrice").val("");
			$("#type").val("");
			$("#form").submit();
		}

		$(".filter_unlimited_on").click(function() {
			if ($(this).attr('data-type') == "price") {
				$("#price").val("");
				$("#bigPrice").val("")
				$("#smallPrice").val("")
			}
			if ($(this).attr('data-type') == "star") {
				$("#star").val("");
			}
			if ($(this).attr('data-type') == "city") {
				$("#city").val("");
			}
			if ($(this).attr('data-type') == "type") {
				$("#type").val("");
			}
			$("#form").submit();
			
		})
	</script>
	
	<script type="text/javascript">
		$(".sort_list li").click(function () {
			// data-sort="hotelPrice" data-dirc="1"
			$("#sort").val($(this).attr("data-sort"));
			$("#desc").val($(this).attr("data-dirc"));
			$("#form").submit();
		})
	 $(".sort_list li div p").click(function () {
			// data-sort="hotelPrice" data-dirc="1"
			
			$("#sort").val($(this).attr("data-sort"));
			$("#desc").val($(this).attr("data-dirc"));
			$("#form").submit();
		})
	
	</script>
	
	<script type="text/javascript">
					//分页
					$(".page_next").click (function() {
						if(parseInt($("#count").val())>parseInt($("#curPage").val())){
							$("#curPage").val(parseInt($("#curPage").val())+1);
						}
						$("#form").submit();
					})
					$(".page_back").click (function() {
						if(1<parseInt($("#curPage").val())){
							$("#curPage").val(parseInt($("#curPage").val())-1);
						}
						$("#form").submit();
					})
					
						$(".icon_hl_more1").toggle(
						function () {
							$(this).parent().addClass("slip")
							
						},
						function () {
							$(this).parent().removeClass("slip")
							
						}
		)
			</script>
</body>
</html>
