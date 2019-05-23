<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>【${hotel.hotelName }】– 风游旅行网</title>
<link rel="icon"
	href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<meta name="keywords" content="北京唐拉雅秀酒店,北京唐拉雅秀酒店预订" />
<meta name="description"
	content="北京唐拉雅秀酒店地处中央政务和金融商务区，紧邻金融街，可便捷前往天安门广场、西单商业中心。酒店位置优越，可将首都长安街壮观景致尽收眼底。酒店是海航酒店集团旗下品牌，拥有三百余间精致客房及套房，设计风格融合了东方的典雅与西方的别致，大气且低调奢华。酒店独有的记忆型床垫，让每一位宾客酣甜入梦。酒店设有总面积逾 1000平米的先进会议中心，包括一个大宴会厅和10间 多功能厅，均配备了先进的多媒体播放设备及系统，可满足不同宾客对会议及宴会需求。 酒店汇聚中西美食的餐厅和酒吧；精雕细琢的中餐粤菜及专业奉茶师的服务让您享受中式餐饮之珍品；开放式厨房的西餐厅，新鲜烹制中西式美食，提供早、中、晚自助餐，是宾客挥洒热情、品味驻足的好去处。温馨典雅的SPA和设备完善的健身中心，以及设于顶层、可鸟瞰西长安街全景的豪华商务会所，则为中外宾客提供华贵舒适的专属高端商旅体验。风游旅行网提供北京唐拉雅秀酒店预订服务，在线预订享受7折以下价格优惠，不收预订费，酒店前台付款，安全有保障。" />
<meta name="mobile-agent"
	content="format=html5;url=http://m.elong.com/hotel/50101525/">




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
	href='${pageContext.request.contextPath }/statics/css/details-2015.css' />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/img_box_layer.css' />
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
						href="http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/train/website/railway.html"
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
							href="https://secure.elong.com/passport/register_cn.html?rnd=20190511084117"
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
								href="http://my.elong.com/hotel/MyHotelOrderList_cn.html?rnd=20190511084117"
								rel="nofollow">酒店订单</a></li>
							<li class='icon_d2' style="display: none;"><b></b><a
								href="http://my.elong.com/GrouponOrder_cn.html?rnd=20190511084117"
								rel="nofollow">团购订单</a></li>
							<li class='icon_d3'><a
								href="http://my.elong.com/Flight/FlightOrder_cn.html?rnd=20190511084117"
								rel="nofollow">机票订单</a></li>
							<li class='icon_d4'><a
								href="http://my.elong.com/train/orderlist?rnd=20190511084117"
								rel="nofollow">火车票订单</a></li>
							<li class='icon_d5'><b></b><a
								href="http://my.elong.com/CashCoupon_cn.html?flag=Cash&rnd=20190511084117"
								rel="nofollow">现金账户</a></li>
							<li class='icon_d6'><b></b><a
								href="http://my.elong.com/ly/lyOrderFill?rnd=20190511084117"
								rel="nofollow">汽车票订单</a></li>
							<li class='icon_d7'><b></b><a
								href="http://my.elong.com/hotel/hotelfavlist_cn.html?rnd=20190511084117"
								rel="nofollow">酒店收藏</a></li>
							<li class='icon_d8'><b style='display: none;'
								id='comment_notice'>9</b> <a id="n_comment_a"
								href="http://my.elong.com/Hotel/reviewedorderlist_cn.html?rnd=20190511084117"
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
		url(http://www.elong${pageContext.request.contextPath }/statics.com/images/other/app-com-ie6.png);
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

.appBox .way i {
	display: inline-block;
	width: 43px;
	height: 43px;
	margin-right: 5px;
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat 0 -334px;
	_background-image:
		url(http://www.elong${pageContext.request.contextPath }/statics.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}

.appBox .way .but {
	width: 170px;
	height: 30px;
	background:
		url(${pageContext.request.contextPath }/statics/images/app-com.png)
		no-repeat -181px -334px;
	_background-image:
		url(http://www.elong${pageContext.request.contextPath }/statics.com/images/other/app-com-ie6.png);
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
		url(http://www.elong${pageContext.request.contextPath }/statics.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}
</style>
		<div class="clear"></div>
	</div>
	<!-- ===================== header end ===================== -->

	<div class="cont_box response_wrap3">
		<!--面包屑 start-->
		<div class="mt10 mb10">
			<div class="link555 t12">
				<a title="首页" href="http://www.elong.com"> 首页 </a> <span
					class="simsun">&gt;</span> <a title="酒店" href="/"> 酒店 </a> <span
					class="simsun">&gt;</span> <a title="北京酒店" href="/beijing/">
					${fn:split(hotel.hotelAddress, ' ')[0]} </a> <span class="simsun">&gt;</span> <a href="toDingDan">
					<h1 class="breadcrumb" style="display: inline" id="lastbread">
						${hotel.hotelName }</h1>
				</a>
			</div>
		</div>
	</div>

	<div class="hdetail_rela_wrap">
		<div class="cont_box response_wrap3 mvt18131"
			style='position: relative;'>
			<div class="hrela_ns_wrap clearfix">
				<div class="hdetail_main hrela_name">
					<div class="t24 yahei" title="${hotel.hotelName }">
						<h1>${hotel.hotelName }</h1>
						<i data-handle="hotelGrade" class="icon_crown_b_new mr5"
							title="战略合作酒店，为风游会员提供优质服务及优惠房价"></i> <b
							class="icon_stars icon_elevel5" title="风游用户评定为豪华型酒店"></b>
					</div>
					<p class="clearfix">
						<span class="mr5 left"> <a href="/beijing/center010167/">[${fn:split(hotel.hotelAddress, ' ')[1]}]</a>
							${fn:split(hotel.hotelAddress, ' ')[2]}
						</span> <span class="l1 left mt5" method="showMap" title=地图> <i
							class="icon_land_map"></i>地图
						</span> <span class="l2 left mt5" title="街景" id="sosoMap"
							data-svid="10011031131214121358100" data-heading="0"
							data-pitch="0" data-zoom="0" data-mapType="2"> <i
							class="icon_land_street"></i>街景
						</span>
					</p>
				</div>
				<div class="hdetail_sider hrela_say" id="favorBtnContainer">
					<div class="sd_con clearfix">
						<span class="add_collect" method="collectable"
							data-hotelid="50101525"> <b class="icon_coll"></b> <span
							data-showname="favStatus">收藏</span>
						</span>
						<div class="h_comt_other">
							<c:forEach var="service"
								items="${fn:split(hotel.hotelServePy, ',')}" step="1"
								varStatus="statu">
								<span class="icon_faci_${service}"></span>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<!-- 图片start -->
			<div class="hrela_pi_wrap">


				<div class="hdetail_main left">
					<div class="hrela_pic">
						<div class="hrela_pic_w">
							<div class="wac">
								<img data-disable="false"
									src="${pageContext.request.contextPath }${hotel.fileUrl }"
									onerror="${pageContext.request.contextPath }/statics/picture/nw_0004tb3a.jpg"
									height="325" />

							</div>
							<div id="360pano" class="wbc"></div>
							<div id="headSosofullview" class="wcc"
								style="position: absolute; display: none; width: 100%; height: 400px;"></div>
						</div>
						<!--价格-->
						<div class="hrela_price_wrap" id="divHotelLowestProduct"></div>
						
					</div>
					
				</div>

				<!-- 侧栏 start -->
				<div class="hdetail_sider"></div>
				<div class="clx"></div>
			</div>
			<!-- 图片end -->




		</div>
	</div>


	<a name="roomTab" id="roomTab"></a>
	<div class="cont_box response_wrap3 mvt18131">
		<div class="hdetail_box">
			<div class="hdetail_main left">
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
				<div id="tabMenu" class="hdetail_subnav bbddd">
					<ul class="subnav_list left">
						<li method="roomTypes" class="on">房型</li>
						<li method="content">酒店信息</li>
						<li method="traffic">交通</li>
						<li method="review">点评</li>
					</ul>
					<div class="hdetail_subnav_time mt15" id="divRecentOrder"
						style="display: none;">
						<i class="icon_time24 mr5"></i>24小时内有人预订！
					</div>
				</div>
				<div id="searchTabHandler" class="subnav_fixed none"
					style="display: none;">
					<div class="response_wrap3">
						<div class="hdetail_main left">
							<div class="hdetail_subnav">
								<ul class="subnav_list left" data-handle="ulTabNav">
									<li method="roomTypes" class="on">房型</li>
									<li method="content">酒店信息</li>
									<li method="traffic">交通</li>
									<li method="review">点评</li>
								</ul>

								<div class="date_change right">
									<div class="search_item search_date">
										<label class="left br"><span>入住</span><input
											handle="inDateFloat" type="input" value="2019-05-11"
											selectedValue="2019-05-11" class="input_f16 input_date"><span
											class="weekDesc">今天</span><span class="icon_date_s"></span></label> <label
											class="left"><span>离店</span><input
											handle="outDateFloat" type="input" value="2019-05-12"
											selectedValue="2019-05-12" class="input_f16 input_date"><span
											class="weekDesc">明天</span><span class="icon_date_e"></span></label>

									</div>
									<div class="btn_filter_sure left" handle="btnFloatSubmit">修改日期</div>
								</div>
							</div>
						</div>




						<div class="hdetail_sider right hdetail_sider_none">
							<i data-handle="hotelGrade" class="icon_crown_b_f mr5"></i><span
								class="vm">北京唐拉雅秀酒店</span> <b class="icon_stars icon_elevel5"
								title="风游用户评定为豪华型酒店"></b>
						</div>
					</div>
				</div>
				<div class="date_change mt15 mb15">
					<div class="search_item search_date">
						<label class="left br"><span>入住</span><input type="input"
							handle="inDate" value="2019-05-11" selectedValue="2019-05-11"
							class="input_f16 input_date"><span class="weekDesc">今天</span><span
							class="icon_date_s"></span></label> <label class="left"><span>离店</span><input
							type="input" handle="outDate" value="2019-05-12"
							selectedValue="2019-05-12" class="input_f16 input_date"><span
							class="weekDesc">明天</span><span class="icon_date_e"></span></label>

					</div>
					<div class="btn_filter_sure left" handle="btnSubmit">修改日期</div>
					<ul class="sort_back_tit right none" id="afterCouponContainer">
						<li class="sort_back_l on" method="isAfterCoupon">返后价</li>
						<li class="sort_back_r " method="notAfterCoupon">返前价</li>
					</ul>
				</div>
				<!--快速筛选start-->
				<div class="filterContent clearfix none ">

					<div class="filterItem bedFilterItem none">
						<span><b>床型</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
						</ul>
					</div>

					<div class="filterItem playFilterItem none">
						<span><b>支付方式</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
						</ul>
					</div>

					<div class="filterItem breakfastFilterItem none">
						<span><b>早餐</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
							<!-- <li data-name="早餐" data-value="" method="breakfastType">不限</li>
                        <li data-name="单早" data-value="1" method="breakfastType">单早</li>
                        <li data-name="双早" data-value="2" method="breakfastType">双早</li>
                        <li data-name="三早及以上" data-value="3" method="breakfastType">三早及以上</li>
                        <li data-name="不含早" data-value="8" method="breakfastType">不含早</li> -->
						</ul>
					</div>

					<div class="filterItem multiple ortherFilterItem none"
						method="other">
						<ul>
						</ul>
					</div>

					<label class="clearAll hide">全部清除</label>

				</div>

				<!--快速筛选end-->
				<div id="roomSetContainer"></div>
				<div id="roomSetContainer">
					<div class="policy_item_best">
						<div class="hdetail_type">
							<div class="htype_list">
								<div class="policy_item">
									<div class="htype_item policy_item_wrapper policy_item_best"
										data-handle="rp" id="roomId0039" data-sroomid="0069"
										data-rpid="40142273" data-roomid="0069"
										data-shotelid="90983915"
										data-uniqueid="80101158:0069:40142273:4_0_5002_00%2300"
										data-mroomid="0039" data-rptype="4" data-mark="1"
										data-signtype="1" data-wight="0.8021455407142639"
										data-minproduct="false">
										<div class="htype_info clearfix" method="togRoom">
											<div class="htype_info_pic left">
												<img
													src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBCnOkX6.jpg"
													onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
											</div>

											<div class="htype_info_pb right">
												<p class="cf55">

													<span class="htype_info_num"> <span class="t14 c555"
														method="AvgPriceCuXiao"> ¥ <span class="ht_pri_num">419</span>
													</span>


													</span> <span class="ht_retu_policy"> </span>
												</p>

												<p class="detailPolicy ">低价产品，实惠之选</p>

											</div>

											<div class="ht_book_policy">
												<a class="on_line_pay_button" rel="nofollow" method="order"
													title="预订酒店时需提前在线支付房费">
													<p class="topStr">预订</p>
													<p class="bottomStr">在线付</p>
												</a>

											</div>

											<div class="htype_info_nt">
												<p class="htype_info_name">
													<span class="l37d">商务雅致大床房-无早<i class="special">︿</i></span>
													<label>同程艺龙</label>
												</p>
												<p class="htype_info_name">
													<span style="font-size: 12px; color: #555;" title="标准价">标准价</span>
												</p>
												<p class="htype_info_ty">
													<span>房间18-25㎡</span> <span>|</span><span>大床1.8米</span> <span>|</span>
													<span> 可住： <i class="icon_live_per"></i><i
														class="icon_live_per"></i>
													</span> <span>|</span><span title="">楼层：2层-3层</span> <span>|</span><span
														title="">包含无线、宽带</span>
												</p>

												<ul class="consure clearfix">
													<li method="cancelTip" canceltype="2">不可取消</li>
													<li class="noCancel " method="isJishi">立即确认</li>
												</ul>
												<ul class="redBag clearfix">
												</ul>
											</div>


										</div>

										<div data-handle="roomTable"
											class="htype_info_list btddd none" style="display: block;">
											<ul>
												<li class="bookTip">
													<p class="bookTipLeft">预订须知</p>
													<div class="bookTipRight">
														<p class="">
															<label>特殊提醒</label> <span>本产品适用于持中国身份证的居民预订</span>
														</p>
														<p>
															<label>在线付</label><span>预订酒店时需提前在线支付房费</span>

														</p>
														<p>
															<label>不可取消</label> <span>订单一经确认成功，不可取消或变更；如未能如约入住，您的预付房费将不予退还。</span>
														</p>
														<p>
															<label>加床</label> <span>不可加床</span>
														</p>
														<p>
															<label>早餐</label> <span>无早</span>
														</p>
														<p class="none">
															<label>房型备注</label> <span></span>
														</p>
													</div>
												</li>
												<li class="bookTip ">
													<p class="bookTipLeft">预订专享</p>
													<div class="bookTipRight">
														<p class="none">
															<label class="vip"><i>返现</i></label> <span>会员登录预订并下单即可享受返现
																<i class="money">¥0</i>
															</span>
														</p>
														<p class="none">
															<label class="vip"><i>促销</i></label> <span>此产品正在参加促销活动，预订享受活动价</span>
														</p>
														<p class="none">
															<label class="vip"><i>礼包</i></label>


														</p>
														<p class="">
															<label class="immeSure">立即确认</label> <span>订单提交后，酒店将在第一时间确认您的订单</span>
														</p>
													</div>
												</li>
												<li class="bookTip ">
													<ul class="ht_pic_list clearfix">
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBCnOkX6.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBCnOkX6.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBw6VSKI.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBw6VSKI.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBj74Gty.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBj74Gty.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBdfK7YY.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBdfK7YY.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_000h41Qj.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_000h41Qj.jpg"
															width="96" height="96"></li>
														<li class="picShowAll">
															<p class="none">
																展示 <i class=""></i>
															</p>
														</li>
													</ul>
												</li>
											</ul>
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="hdetail_type">
						<div class="htype_list">

							<c:forEach var="htype_item" items="${houseList }">
								<div class="htype_item   " data-handle="roomType"
									data-roomid="0039" id="roomId0039">
									<div class="htype_info clearfix " method="togRoom">
										<div class="htype_info_pic left">
											<img
												src="${pageContext.request.contextPath }/uploadFile/house/${hotel.hotelId }_${htype_item.houseId }.jpg "
												onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
										</div>

										<div class="htype_info_pb right">
											<p class="cf55">

												<span class="t14 c555">¥</span> <span class="htype_info_num">${htype_item.housePrice }</span>
												<span class="t12">起</span>
											</p>
											<p class="htype_info_total mt5 ">
												共${htype_item.houseCountByType }个产品 <i class="icon_triangle_8b"></i>
											</p>
										</div>

										<div class="htype_info_nt">
											<p class="htype_info_name roomtaglis">
												<span class="l37d">${htype_item.houseType }</span> <span
													class="roomtaglis"> </span>
											</p>
											<p class="htype_info_ty">
												<span>房间${htype_item.contentOne }</span> <span>|</span> <span>
													可住：${htype_item.contentFour } <i class="icon_live_per"></i><i
													class="icon_live_per"></i>
												</span> <span>|</span><span title="">楼层：${htype_item.contentThree }</span>
												<span>|</span><span title="">包含${htype_item.contentTow }</span>
											</p>
										</div>

									</div>
									<div class="newroomAB none">
										<div class="left" method="ShowImage">
											<img src=" " bigimgurl="  "
												onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
										</div>
										<div class="right">
											<p class="bedname">${htype_item.houseType }</p>
											<p class="more open" method="openFacbox" data-sroomid="0039">
												查看详情<span class="simsun">&gt;</span>
											</p>
											<p class="more close none" method="closefacbox"
												data-sroomid="0039">
												收起详情<span class="simsun">&gt;</span>
											</p>

										</div>
									</div>

									<div data-handle="roomTable" class="htype_info_list btddd none"
										style="display: none;">
										<table class="htype-table" cellspacing="0" cellpadding="0">
											<thead>
												<tr class="">
													<th class="ht_empty">&nbsp;</th>
													<th class="ht_name">产品名称</th>
													<th class="ht_supply">供应商</th>
													<th class="ht_brak">早餐</th>
													<th class="ht_rule">产品政策</th>
													<th class="ht_pri"><span class="night">日均价</span></th>
													<th class="ht_book"></th>
													<th class="ht_last"></th>
												</tr>
											</thead>
											<tbody>
											<c:forEach items="${htype_item.houseListByType }" var="house">
											<tr data-handle="rp" data-sroomid="0069"
													data-rpid="40142273" data-shotelid="90983915"
													data-mroomid="${house.houseId }" data-type="${htype_item.houseType }" 
													data-signtype="1" data-wight="0.8021455407142639" class=""
													data-minproduct="true">
													<td class="ht_empty">&nbsp;</td>
													<td class="ht_name"><span title="标准价">${house.productName }</span>
														<ul class="redBag clearfix">
														</ul></td>
													<td class="ht_supply" title="supplier:151330">
														${house.supplier }</td>
													<td class="ht_brak"><c:if
															test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if> <c:if
															test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if> <c:if
															test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if></td>
													<td class="ht_rule">
														<p class="ht_rule_free" method="cancelTip" canceltype="2">
															<span>${house.productPolicy}</span>
														</p> <!--  <p class="immsure" method="isJishi">
                                <span>立即确认</span>
                                </p> -->
													</td>
													<td class="ht_pri"><span method="AvgPriceCuXiao"
														class="ht_pri_h cur"> ¥ <span class="ht_pri_num">${house.housePrice}</span>
													</span>
														<p class="detailPolicy ">低价实惠之选</p></td>
													<td class="ht_book"><a class="on_line_pay_button"
														rel="nofollow" method="order" title="预订酒店时需提前在线支付房费">
															<!--  <p class="topStr">预订</p> -->
															<p class="bottomStr">在线付</p>
													</a></td>
													<td class="ht_last">&nbsp;</td>
												</tr>
												
											</c:forEach>
												
												<tr class="ht_tr_other">
													<td class="ht_empty">&nbsp;</td>
													<td colspan="9" class="ht_other">
														<p>上网方式：${htype_item.contentFive}宽带</p>
													</td>
												</tr>

											</tbody>
										</table>
									</div>

								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<a name="locontent" id="locontent"></a>
				<div id="hotelContent" class="hdetail_view">
					<h2 class="hdetail_tit2">酒店信息</h2>
					<ul class="dview_icon_list">
						
						<c:forEach var="hservice" items="${fn:split(hotel.hotelServe, ',')}" varStatus="statu">
						<li><i class="icon_view_0${statu.count }"></i>
							<p>${hservice }</p></li>
						</c:forEach>					
					</ul>
					<div class="dview_info">
						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s1"></i>酒店电话
							</dt>
							<dd>
								${hotel.hotelphone} <!-- <span class="ml20">风游电话预订：95711</span> -->
							</dd>
						</dl>
						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s2"></i>入离时间
							</dt>
							<dd>
								<p>入住时间:14点以后，离店时间:12点以前</p>
							</dd>
						</dl>
						
						<dl class="dview_info_item" id="netAndwifi" style="display: none">

						</dl>


						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s6"></i>酒店设施
							</dt>
							<dd>
								<i class="icon_hl_more1" method="showMore"></i>
								<p>
									<c:forEach var="hservice" items="${fn:split(hotel.hotelServe, ',')}" varStatus="statu">
							${hservice }、</c:forEach>、健身房、商务中心、中餐厅、西餐厅、接机服务（收费）、邮政服务、婚宴服务、叫醒服务、洗衣服务、送餐服务、旅游服务、租车服务、专职行李员、行李寄存、专职门童、礼宾服务、24小时大堂经理、旅游票务专柜、信用卡结算服务、一次性账单结算服务、免费报纸(部分)、有电梯、前台保险柜、自助取款机、旅游交通图、茶室、安全消防系统、大堂吧、公共区域闭路电视监控系统、残障人客房、酒吧、大堂报纸、无烟楼层、无障碍通道、行政酒廊、24小时热水、宴会厅、220V电压插座、多功能厅、多媒体演示系统、行政楼层、多种规格电源插座、110V电压插座、遮光窗帘、手动窗帘、房内保险箱、书桌、床具：鸭绒被、电子秤、针线包、空调、房间内高速上网、客房WIFI覆盖免费、国内长途电话、国际长途电话、有线频道、液晶电视机、免费瓶装水、电热水壶、免费洗漱用品（6样以上）、独立淋浴间、吹风机、拖鞋、浴衣、浴室化妆放大镜、洗浴间电话、沙发(部分)、熨衣设备(部分)、咖啡壶/茶壶(部分)、迷你吧(部分)、小冰箱(部分)、浴缸(部分)、所有公共及私人场所严禁吸烟、智能马桶(部分)、卫星频道、桑拿浴室、美容美发室、SPA、足浴/足疗、按摩保健
								</p>
							</dd>
						</dl>

						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s8"></i>酒店简介
							</dt>
							<dd>
								<i class="icon_hl_more1" ></i>
								<p>
								${hotel.hotelIntro }
								</p>
							</dd>
						</dl>

					</div>
				</div>
				<a name="mapLocation" id="mapLocation"></a>
				<div id="trafficMap"></div>

				<div class="clx"></div>
				<a name="loreview" id="loreview"></a>
				<div class="cmt_bigpic" id="commentBigImgContainer"
					style="width: auto !important; display: none">
					<div>
						<img src="" />
					</div>
				</div>
			</div>
			<div id="rightSider" class="hdetail_sider right hdetail_sider_none">

				<div class="m_collect" id="favorAndSeenContainer">
					<div class="m_cctit">
						<ul class="m_ccnav clearfix">
							<li class="pos" method="dataTab" data-name="seen" data-status="0">历史浏览</li>
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

				<div id="surroundingHotelContainer"></div>
				<div class="dsider_perim_more">
					<a target="_blank"
						href="/search/list_cn_0101.html?startLat=39.91372316&startLng=116.3497983&starLevels=5&keywordsType=99&keywords=%E5%8C%97%E4%BA%AC%E5%94%90%E6%8B%89%E9%9B%85%E7%A7%80%E9%85%92%E5%BA%97"><span>查看周边同价位酒店</span><i
						class="icon_sort_arrr4"></i><i class="icon_perim_b"></i></a>
				</div>
				<div class="dsider_service_us">
					<div class="service_us_tit">
						<h2>风游承诺</h2>
					</div>
					<div class="service_infs">
						<ul class="clearfix">
							<li><i class="why_icon1"></i> <span class="tit">更多酒店</span>
								<span class="txt">全球110万家酒店</span></li>
							<li><i class="why_icon2"></i> <span class="tit">超值优惠</span>
								<span class="txt">订酒店返现高达20%</span></li>
							<li><i class="why_icon4"></i> <span class="tit">卓越服务</span>
								<span class="txt">7x24小时服务</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clx"></div>


	</div>

	<!--新图片浮层  Start-->
	<div data-handle="photoBox" class="grieshoch_80 fixed"
		style="display: none;">
		<iframe
			style="width: 100%; height: 100%; position: relative; background: #fff; opacity: 0; filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);"
			frameborder="0"></iframe>
	</div>
	<div data-handle="photoBox" class="float_rpic_wrap fixed  none"
		style="top: 50%; margin-top: -310px; display: none;">
		<div class="float_wrap1000">
			<b class="icon_close_rpic" method="close"></b> <i
				class="icon_prev_c38" method="prevImg"></i> <i class="icon_next_c38"
				method="nextImg"></i>
			<div class="float_rpic">
				<div id="imgContainer" class="dffc">
					<img data-handle="img" class="show_imgzz"
						data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tb3a.jpg"
						src="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004Tb3A.jpg"
						onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'" />
					<img class="alpha_imgzz"
						src="${pageContext.request.contextPath }/statics/picture/pixel.gif" />
				</div>
				<div id="fullview"
					style="position: absolute; display: none; width: 100%; height: 400px;"></div>
				<div id="sosofullview"
					style="position: absolute; display: none; width: 100%; height: 400px;"></div>
				<h2 id="hImageName">外观</h2>
			</div>
		</div>
		<!--小图start-->
		<div class="float_spic mt20">
			<div class="response_wrap3">
				<ul data-handle="tabHandle" class="float_spic_title pb10">
					<li class="cur on" data-handle="image_all" method="tabImg">
						所有(66)</li>
					<li>|</li>
					<li class="cur " data-handle="image_exterior" method="tabImg">
						外景(3)</li>
					<li>|</li>
					<li class="cur " data-handle="image_interior" method="tabImg">
						内景设施(47)</li>
					<li>|</li>
					<li class="cur " data-handle="image_room" method="tabImg">
						房间(14)</li>
					<li>|</li>
					<li class="cur " data-handle="image_others" method="tabImg">
						周边其它(2)</li>
				</ul>
				<div data-handle="thumbnailUL" class="hrela_spic mt5">
					<span method="prevPage" class="hrela_spic_prev" id="big_img_prev"><i
						class="icon_prev_b9"></i></span> <span method="nextPage"
						class="hrela_spic_next" id="big_img_next"><i
						class="icon_next_b9"></i></span>

					<ul data-handle="image_all" style="position: absolute; left: 0px;"
						class="hrela_spic_list" id="layerimagegroup">
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tb3a.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004Tb3A.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/0000adou.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/0000aDoU.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3columpg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3cOLUmpG.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtb8e3x9c.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtB8E3x9C.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="大堂/接待台"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bene7.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEne7.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxqalml9ja.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQalMl9ja.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxq8jlibjk.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQ8JLibJK.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fpnxwqbvhc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FpNxwQBVhC.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fpnxjca5pe.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FpNxjca5pe.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fpnxbzpyxs.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FpNxbzPyXS.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fpnwmbroi8.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FpNwMbROI8.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fpnwric3ty.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FpNwrIc3Ty.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapx1.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPX1.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0003gabl.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0003GAbl.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tb3b.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004Tb3B.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tb3c.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004Tb3C.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0003vrsc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0003vrSC.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxqbkjgvy4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQbkJgVY4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3fcfwqa0.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3fcfWqA0.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ekyuqlk.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3eKyUQLK.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ejv3uuo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3ejv3UUo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3dp4zorc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3dP4zOrC.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3djtftwc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3djTfTwc.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3cga5yig.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3cGA5YIg.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3c8ik1b6.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3c8ik1B6.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3bfxrvbs.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3bFxrvBS.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ayr5dwo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3aYR5dWo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39r6s0py.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39R6S0py.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39jbdsdo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39JBDsdO.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frty1sbwbi.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frty1sBwBi.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtxtjujka.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtxTjUJkA.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fr9.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FR9.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fqb.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FQB.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bendq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEndq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtcstdlla.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCStDLLa.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtcfnw62c.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCfNW62c.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtazpdhlq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtAZPDHLq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtavzn9yy.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtAvzn9YY.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frta34fmpq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtA34FMpq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtxjt3xjm.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frtxjt3XJm.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fq4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FQ4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fof.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FOF.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxq8hhqieo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQ8hHQiEo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtbklieus.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtBkliEus.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtzanb9oa.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtzaNB9oA.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtz1oz4e4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frtz1oz4e4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtyq8r2vu.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtyQ8R2vu.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtyjvpstg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtyjvPStG.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bend6.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnd6.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapvj.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPVj.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtd78fl7g.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtD78fL7G.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtczysjwu.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCZYSjWU.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000h9jmt.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000h9JMt.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000benfy.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnfY.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000beyqt.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEyQT.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000benfn.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnfn.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapv4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPV4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapus.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPUS.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tdcj.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004TdCj.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="周边图片"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39yxxfcg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39YXXFCg.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="周边图片"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtbrcus7u.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtBRCUs7u.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtycdun6m.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtycDun6M.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000fykhd.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000fykhd.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapwl.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPWl.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapwc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPWc.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0006igjr.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0006IgjR.jpg"
							width="80" height="80" /></li>
					</ul>
					<ul data-handle="image_exterior"
						style="display: none; position: absolute; left: 0px;"
						class="hrela_spic_list" id="layerimagegroup">
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tb3a.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004Tb3A.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3columpg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3cOLUmpG.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="外观"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtb8e3x9c.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtB8E3x9C.jpg"
							width="80" height="80" /></li>
					</ul>
					<ul data-handle="image_interior"
						style="display: none; position: absolute; left: 0px;"
						class="hrela_spic_list" id="layerimagegroup">
						<li method="showBigImg" isPanorama="" data-name="大堂/接待台"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bene7.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEne7.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxqbkjgvy4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQbkJgVY4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3fcfwqa0.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3fcfWqA0.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ekyuqlk.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3eKyUQLK.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ejv3uuo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3ejv3UUo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3dp4zorc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3dP4zOrC.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3djtftwc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3djTfTwc.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3cga5yig.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3cGA5YIg.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3c8ik1b6.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3c8ik1B6.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3bfxrvbs.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3bFxrvBS.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft3ayr5dwo.jpg"
							onerror="this.src='http://m.elongstatic.com/static/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft3aYR5dWo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39r6s0py.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39R6S0py.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39jbdsdo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39JBDsdO.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frty1sbwbi.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frty1sBwBi.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtxtjujka.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtxTjUJkA.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fr9.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FR9.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fqb.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FQB.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="餐厅"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bendq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEndq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtcstdlla.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCStDLLa.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtcfnw62c.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCfNW62c.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtazpdhlq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtAZPDHLq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtavzn9yy.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtAvzn9YY.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frta34fmpq.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtA34FMpq.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtxjt3xjm.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frtxjt3XJm.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fq4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FQ4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="会议室"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000e7fof.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000e7FOF.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxq8hhqieo.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQ8hHQiEo.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtbklieus.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtBkliEus.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtzanb9oa.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtzaNB9oA.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtz1oz4e4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Frtz1oz4e4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtyq8r2vu.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtyQ8R2vu.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtyjvpstg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtyjvPStG.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000bend6.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnd6.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="休闲"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapvj.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPVj.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtd78fl7g.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtD78fL7G.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtczysjwu.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtCZYSjWU.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000h9jmt.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000h9JMt.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000benfy.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnfY.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000beyqt.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEyQT.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000benfn.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000bEnfn.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapv4.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPV4.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapus.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPUS.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="公共区域"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_0004tdcj.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_0004TdCj.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtycdun6m.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtycDun6M.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000fykhd.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000fykhd.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapwl.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPWl.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="其他"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_000dapwc.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_000dAPWc.jpg"
							width="80" height="80" /></li>
					</ul>
					<ul data-handle="image_room"
						style="display: none; position: absolute; left: 0px;"
						class="hrela_spic_list" id="layerimagegroup">
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/0000adou.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/0000aDoU.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="客房"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_fxqalml9ja.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FXQalMl9ja.jpg"
							width="80" height="80" /></li>

					</ul>
					<ul data-handle="image_others"
						style="display: none; position: absolute; left: 0px;"
						class="hrela_spic_list" id="layerimagegroup">
						<li method="showBigImg" isPanorama="" data-name="周边图片"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_ft39yxxfcg.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_Ft39YXXFCg.jpg"
							width="80" height="80" /></li>
						<li method="showBigImg" isPanorama="" data-name="周边图片"><img
							data-src="${pageContext.request.contextPath }/statics/picture/nw_frtbrcus7u.jpg"
							onerror="this.src='http://m.elong${pageContext.request.contextPath }/statics.com/${pageContext.request.contextPath }/statics/webapp/pc_${pageContext.request.contextPath }/statics/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
							bigImgUrl="//pavo.elong${pageContext.request.contextPath }/statics.com/i/Hotel870_470/nw_FrtBRCUs7u.jpg"
							width="80" height="80" /></li>
					</ul>
				</div>
			</div>
		</div>
		<!--小图end-->
	</div>
	<!--新图片浮层  结束-->
	<!-- 新版图层start -->
	<div id="newBox" class="newBox"></div>
	<!-- 新版图层end -->
	<div class="fix_tool" id="right-box-list">
		<ul>
			<li class="cate_01" data-rightblock="1"><a
				href="http://my.elong.com/" target="_blank" style="display: block;"></a><span
				style="display: none;">我的账户</span></li>
			<li class="cate_02" data-rightblock="2"><a
				href="http://my.elong.com/cashcoupon_cn.html" target="_blank"
				style="display: block;"></a><span style="display: none;">我的钱包</span></li>
			<li class="cate_03" data-rightblock="3"><a href="#?"
				style="display: block;"></a><span style="display: none;">我的收藏</span></li>
			<li class="cate_05" data-rightblock="5"><a href="#?"
				style="display: block;"></a><span style="display: none;">在线客服</span></li>
			<li class="cate_06" data-rightblock="6"><a href="#?"
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
	<!--房型不可订弹窗start-->

	<div class="fullDialogWrap">
		<div class="fullHouseOver">
			<div class="top">
				<p class="topTitle">提示</p>
				<p class="Topclose"></p>
			</div>
			<div class="content">
				<p>抱歉，该房型暂不可订，您可以尝试更换房型或修改日期</p>
			</div>
			<p class="surebtn">确定</p>
		</div>
	</div>

	<!--房型不可订弹窗end-->
	<div id="m_contentend" style="z-index: 200;"></div>
	<script type="text/javascript">
		var tjObj_rt2 = new Date();
	</script>
	<div id="m_adsContainer" style="display: none"></div>




	<!-- ===================== footer 20190403 start ===================== -->
	<div class="clear"></div>
	<div class="footer" r="3">
		<div class="footer_info">
			<dl>
				<dt>加盟合作</dt>
				<dd>
					<a href="#" title="酒店加盟" rel="nofollow">酒店加盟</a>
				</dd>
				<dd>
					<a href="" title="机票酒店分销联盟" rel="nofollow">开放平台</a>
				</dd>
				<dd>
					<a href="# " title="旅游产品代理合作" rel="nofollow">代理合作</a>
				</dd>
				<dd>
					<a href="" title="在线广告服务" rel="nofollow">广告服务</a>
				</dd>
				<dd>
					<a href="" title="风游商家中心" rel="nofollow">商家中心</a>
				</dd>
			</dl>
			<dl>
				<dt>关于风游</dt>
				<dd>
					<a href="" title="酒店大全">酒店大全</a>
				</dd>
				<dd>
					<a href="" title="国际酒店">国际酒店</a>
				</dd>
				<dd>
					<a href="" title="旅行保险">旅行保险</a>
				</dd>
				<dd>
					<a href="" title="校园招聘" rel="nofollow">校园招聘</a>
				</dd>
				<dd>
					<a href="" title="联系风游旅行网" rel="nofollow">联系我们</a>
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
				href="http://m.elong${pageContext.request.contextPath }/statics.com/pcheaderfooter/2018/06/files/headerfoot/img/ICP_20180015.pdf">ICP证:合B2-20180015</a>
			<br> <a rel="nofollow" target="_blank" href=""> <i
				style=" background-image: url(${pageContext.request.contextPath }/statics/images/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
				京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elong${pageContext.request.contextPath }/statics.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
			<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elong${pageContext.request.contextPath }/statics.com/hotel/eltk/eltk.html">《风游旅行网服务条款》</a><i
				class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a
				rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
		</div>
		<div class="footer_safe">
			<a class="cm_icon qua-1"
				href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN"
				rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a>
			<a title="风游网通过PCI认证" alt="风游网通过PCI认证" target="_blank" rel="nofollow"
				href="http://www.atsec.cn/cn/pci-attestation/Elong-PCIAttestation-atsec-PCI-DSS-C-01128.jpg"
				class="cm_icon qua-6">风游网通过PCI认证</a><a class="cm_icon qua-3"
				href="#" rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a>
			<a class="cm_icon qua-5" href="#" rel="nofollow" onclick=""
				tabindex="-1" id="urlknet" target="_blank" title="可信用网站身份验证"
				alt="可信用网站身份验证">可信用网站身份验证</a> <a class="cm_icon qua-4" href=""
				rel="nofollow" target="_blank" title="诚信示范企业" alt="诚信示范企业">诚信示范企业</a>
			<a alt="品牌官网认证" title="品牌官网认证" target="_blank" rel="nofollow" href=""
				class="cm_icon qua-7">品牌官网认证</a>
		</div>
	</div>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath }/statics/css/styles.css">
	<!-- ===================== footer end ===================== -->
	<!-- 可信网站LOGO安装开始 -->

</body>
</html>