<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>我的酒店订单</title>
<link rel="icon"
	href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/userlist/savior.js"></script>
		<link rel="stylesheet" type="text/css"
			href='${pageContext.request.contextPath }/statics/css/userlist/MyElong_common_2014.css'
			media="all" />
		<link rel="stylesheet" rev="stylesheet"
			href="${pageContext.request.contextPath }/statics/css/userlist/EL_common.css"
			type="text/css" media="all" />
		<link rel="stylesheet" rev="stylesheet"
			href="${pageContext.request.contextPath }/statics/css/userlist/MyElong_cn.css"
			type="text/css" media="all" />
		<link rel="stylesheet" type="text/css"
			href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2014_hotel.css'
			media="all" />
</head>

<body>
	<!-- ===================== header 2019-04-29 start ===================== -->
	<div id="header" class="header" v='20190429' b='myelong' g='1' lg='t'>
		<div class="header_top response_wrap3 clearfix" style="width: 1200px;">
			<div class="logo">
				<a href="http://www.elong.com" title="艺龙旅行网">艺龙旅行网</a>
			</div>
			<div class="right mt5">
				<div class="branch_menu left mr10">
					<span><a href="http://imall.elong.com/" rel="nofollow">里程商城</a></span>
					<b></b> <span class=""><a target="_blank"
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
					<li sid="28632"><a href="http://www.elong.com" title="艺龙旅行网"
						id="nav_home">首页</a></li>
					<li sid="28639"><a title="酒店预订" href="http://hotel.elong.com/"
						id="nav_hotels">国内酒店</a></li>
					<li style="display: none;" sid="41493"><a
						href="http://tuan.elong.com/" id="A1" title="酒店团购">团购</a></li>
					<li sid="28642"><a href="http://ihotel.elong.com/"
						id="nav_hotelsw" title="国际•港澳台酒店">国际•港澳台酒店<span
							class="icon_coupon"></span></a></li>
					<li style="display: none;" sid=""><a
						href="http://jia.elong.com/" id="nav_apartment" title="短租公寓">短租公寓<span
							class="icon_apart"
							style="background: url(http://img.elongstatic.com/index/fixed/icon2015-0.png) no-repeat; background-position: -307px 0;"></span></a>
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
					<input type="hidden" id="hidden_memberid_user"
						value="240000000737318535" /> <input type="hidden"
						id="hidden_user_name" value="尊敬的会员" />
					<div class="log_on" id="user_display_div">
						<span> <b class='user_leve_pt'></b> <a id="n_user_name"
							href="http://my.elong.com/index_cn.html?rnd=20190531143924"
							title=""></a></span>,<span><a
							href="http://my.elong.com/index_cn.html?rnd=20190531143924"
							rel="nofollow">我的艺龙<b id="user_notice"
								class='user_hastips_icon' style="display: none"></b></a> </span>
					</div>
					<!--弹出-->
					<div class="drop_box_log pt" style="display: none"
						id="div_user_center">
						<ul class='clx'>
							<li class='icon_d1'><b></b><a
								href="http://my.elong.com/hotel/MyHotelOrderList_cn.html?rnd=20190531143924"
								rel="nofollow">酒店订单</a></li>
							<li class='icon_d2' style="display: none;"><b></b><a
								href="http://my.elong.com/GrouponOrder_cn.html?rnd=20190531143924"
								rel="nofollow">团购订单</a></li>
							<li class='icon_d3'><a
								href="http://my.elong.com/Flight/FlightOrder_cn.html?rnd=20190531143924"
								rel="nofollow">机票订单</a></li>
							<li class='icon_d4'><a
								href="http://my.elong.com/train/orderlist?rnd=20190531143924"
								rel="nofollow">火车票订单</a></li>
							<li class='icon_d5'><b></b><a
								href="http://my.elong.com/CashCoupon_cn.html?flag=Cash&rnd=20190531143924"
								rel="nofollow">现金账户</a></li>
							<li class='icon_d6'><b></b><a
								href="http://my.elong.com/ly/lyOrderFill?rnd=20190531143924"
								rel="nofollow">汽车票订单</a></li>
							<li class='icon_d7'><b></b><a
								href="http://my.elong.com/hotel/hotelfavlist_cn.html?rnd=20190531143924"
								rel="nofollow">酒店收藏</a></li>
							<li class='icon_d8'><b style='display: none;'
								id='comment_notice'>9</b> <a id="n_comment_a"
								href="http://my.elong.com/Hotel/reviewedorderlist_cn.html?rnd=20190531143924"
								rel="nofollow">我的点评</a></li>
							<li class='icon_d9'><b></b><a
								href="http://my.elong.com/me_personalcenter_cn" rel="nofollow">个人设置</a></li>
						</ul>
						<div class="quit_log">
							<a href="http://my.elong.com/logout_cn.html" rel="nofollow">退出登录</a>
						</div>
					</div>
					<!--弹出 end-->
				</div>
			</div>
		</div>
		<style type="text/css">
.appWrap {
	background: url(http://www.elongstatic.com/images/other/app-com.png)
		no-repeat 0 -483px
}

.appBox .close {
	background: url(http://www.elongstatic.com/images/other/app-com.png)
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
	background: url(http://img.elongstatic.com/index/other/fx_btm.png)
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
	background: url(http://www.elongstatic.com/images/other/app-com.png)
		no-repeat 0 -334px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}

.appBox .way .but {
	width: 170px;
	height: 30px;
	background: url(http://www.elongstatic.com/images/other/app-com.png)
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
	background: url(http://www.elongstatic.com/images/other/app-com.png)
		no-repeat -181px -394px;
	_background-image:
		url(http://www.elongstatic.com/images/other/app-com-ie6.png);
	vertical-align: middle;
}
</style>
		<div class="clear"></div>
	</div>
	<!-- ===================== header end ===================== -->

	<div class="content" style="margin-top: 20px;">
		<!-- ===================== header start ===================== -->

		<ul class="myElongNav">

			<li class="title"><a href="http://my.elong.com/index_cn.html"><span
					class="icon i05"></span>我的艺龙</a></li>

			<li class="title"><a><span class="icon i01"></span>订单管理</a></li>

			<li><a href="/hotel/myhotelorderlist_cn.html?rnd=1559284762861">酒店订单</a></li>

			<li><a href="/ihotel/orderlist_cn.html?rnd=1559284762861">国际&#183;港澳台订单</a></li>

			<li><a href="/ihotel/wifiorderlist.html?rnd=1559284762861">出境wifi订单</a></li>

			<li><a href="/flight/flightorder_cn.html?rnd=1559284762861">机票订单</a></li>

			<li><a
				href="/presentCard/presentCardOrderList?rnd=1559284762861">礼品卡订单</a></li>

			<li><a href="/train/orderlist?rnd=1559284762861">火车票订单</a></li>

			<li><a href="/ly/lyOrderFill?rnd=1559284762861">汽车票订单</a></li>

			<li class="title"><a><span class="icon i06"></span>我的记录</a></li>

			<li><a
				href="/hotel/notrevieworderlist_cn.html?rnd=1559284762861">酒店点评</a></li>

			<li><a href="/hotel/hotelfavlist_cn.html?rnd=1559284762861">酒店收藏</a></li>

			<li class="title"><a><span class="icon i02"></span>账户管理</a></li>

			<li><a href="/cashcoupon_cn.html?rnd=1559284762861">现金账户</a></li>

			<li><a href="/point_cn.html?rnd=1559284762861">里程</a></li>

			<li><a href="/ihotel/mycoupon_cn.html?rnd=1559284762861">国际&#183;港澳台优惠券</a></li>

			<li><a href="/presentCard/presentCardValidate?rnd=1559284762861">礼品卡/红包充值</a></li>

			<li class="title"><a><span class="icon i03"></span>个人设置</a></li>

			<li><a href="/me_personalcenter_cn.html?rnd=1559284762861">个人资料</a></li>

			<li><a href="/modpassword_cn.html?rnd=1559284762861">密码修改</a></li>

			<li><a href="/bankcard_cn.html?rnd=1559284762861">常用银行卡</a></li>

			<li class="title"><a><span class="icon i04"></span>我的社区</a></li>

			<li><a href="http://lvyou.elong.com/home/?rnd=1559284762861">我的社区首页</a></li>

			<li class="codePic"><img
				src="http://www.elongstatic.com/web/myelong/pic/codePic.png"
				width="80" alt=""> <!--<img src="../../../../myelong/pic/codePic.png" width="80" alt="">-->
					<span class="codeTxt"></span> <span class="codeArr"></span></li>
		</ul>

		<!-- ===================== header end ===================== -->

		<script type="text/javascript">
				var _LANGUAGE = "";
				var _JSPATH = "";
			</script>
		<div class="right_F">
			<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
			<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>我的酒店订单</title>
<link rel="icon"
	href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript">
						var tjObj_rt = new Date();
					</script>
<link rel="stylesheet" type="text/css"
	href='//file.40017.cn/js40017cnproduct/cn/h/elong_pc/common/css/new2015.min.css?20190530062337'
	type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/myelong/css/MyElong_common_2014.css" />
<link rel="stylesheet" type="text/css"
	href='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/2018/09/11/css/order_list_2015.css?20190530062337' />

</head>

<body>
	<div class="rightMain">
		<div class="my_list">
			<div class="orderMtop">
				<p></p>
				<div id="OrderRangeTab" class="MEselBox none">
					<input name="" type="text" readonly="readonly" class="MEsel"
						style="width: 140px;" value="6个月订单" id="orderCondition" />

					<ul id="OrderRangeItems" style="width: 115px; display: none;">
						<li method="SixMonth" style="width: 115px;">6个月订单</li>
						<li method="TwelveMonth">6-12个月订单</li>
					</ul>
				</div>
				<span class="orderMinfo">您可以查看最近6个月内的订单，6个月前订单请致电95711查询</span>
				<p></p>
				<!-- 		
      			<a id="MyCouponTip" href="#" class="xfqBut"></a>
      		     -->
			</div>

			<div id="placeContent" style="color: #e8eff6">

				<div id="priceMo" class="none">
					<p class="tl">
						<span class="bold">温馨提醒: </span>&nbsp;您到酒店需要支付<span class="cf60">{0}{1}</span>。因汇率浮动人民币仅供参考。
					</p>
				</div>
				<div id="canReason" class="none">
					<div class="canordpop">
						<div class="canordpop_info">
							<div class="canordpop_info_pri left">
								<p class="t14 bold mt20" id="refund_txt">取消将扣除金额</p>
								<p class="mt20" id="refund_price">
									<span class="c999">￥</span><span class="cf60">{0}</span>
								</p>
							</div>
							<div id="cancelrules" class="canordpop_info_poli left t12">
								<p class="mt20">订单变更取消政策：</p>
								<p class="mt10" id="rule_txt">{1}</p>
								<i class="icon"></i>
							</div>
						</div>
						<div class="canordpop_change clx" id="modOrderDiv">
							<span class="canordpop_cha_icon"></span>
							<p>只是想修改日期或更换房型，您可以去</p>
							<input type="button" class="canordpop_cha_btn"
								id="dialogModOrder" value="修改订单" />
						</div>

						<div class="canordpop_reason tl">
							<p>
								<span class="canordpop_rea_icon"></span>如果您需要取消订单，请告诉我们取消原因，便于更好的服务
							</p>
							<ul>
								<li><label><input name="reason" type="radio"
										value="101">行程改变</label></li>
								<li><label><input name="reason" type="radio"
										value="102">预订重复</label></li>
								<li><label><input name="reason" type="radio"
										value="103">确认速度太慢</label></li>
								<li><label><input name="reason" type="radio"
										value="104">在别家找到了更好的酒店</label></li>
								<li><label><input name="reason" type="radio"
										value="105">价格太高</label></li>
								<li><label><input name="reason" type="radio"
										value="106">其他</label><input id="otherReason" value=""
									type="text" class="canordpop_rea_text" /></li>
							</ul>
						</div>
						<div class="canordpop_rea_btn">
							<input type="button" class="" id="confirmCancelOrder"
								value="取消订单">
						</div>
					</div>
				</div>

				<div id="canSuccess" class="none">
					<div class="canordpop">
						<div class="canordpop_suc">
							<div class="canordpop_suc_title">
								<i></i>取消成功！
							</div>
							<div class="canordpop_suc_pri">
								<p name="danbao_txt">
									本订单涉及退款<span class="c999 t14">￥</span><span class="cf60 t18">{0}</span>将于3-5个工作日退回至您的使用账户；
								</p>
							</div>
							<div class="canordpop_rea_btn">
								<input type="button" id="btnOk" value="确定">
							</div>
						</div>
					</div>
				</div>

				<div id="canFaild" class="none">
					<div class="canordpop canordpop_f">
						<div class="canordpop_suc">
							<div class="canordpop_fail_pri">
								<i></i>取消失败！
							</div>
							<div class="canordpop_suc_pri">
								<p class="tc">{0}</p>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript"
					src="${pageContext.request.contextPath }/statics/js/userlist/jquery1.8.3.min.js"></script>
				<script type="text/javascript">
						Date.prototype.DatePart = function(interval)  {   
									    var myDate = this;  
									    var partStr='';  
									    var Week = ['日','一','二','三','四','五','六'];  
									    switch (interval)  
									    {   
								            case 'w': partStr = Week[myDate.getDay()-1]; break; 
									    }  
									    return partStr;  
									}  

								$(function () {
									
									//计算周几
									for (var int = 0; int < $(".date_week").size(); int++) {
										var date_week=$(".date_week").eq(int).html();
										var d=new Date(date_week);
										$(".date_week").eq(int).html("周"+d.DatePart('w'));
									}
									
									//入住几晚
									for (var int = 0; int < $(".date_week").size(); int++) {
										var checkInDate=new Date($(".checkInDate").eq(int).val());//入住时间
										var checkOutDate=new Date($(".checkOutDate").eq(int).val());//退房时间
										var d=new Date(checkOutDate.getTime()-checkInDate.getTime());
										var day = parseInt(d/1000 / (24*60*60));//计算整数天数
										$(".day_1").eq(int).html(day);
									}
								})							
</script>

				<c:forEach items="${order}" var="order">
					
					<div class="my_list_detail">
						<div class="date left">
							<div class="date_week right" id="date_week">
								${order.presetItme}</div>
							<div class="month left">
								<fmt:formatDate value="${order.presetItme}" pattern="MM" />
								月
							</div>
							<div class="day left">
								<h1 class="font_wryh zh_font">
									<fmt:formatDate value="${order.presetItme}" pattern="dd" />
								</h1>
							</div>
							<div class="clear"></div>
							<input type="hidden" value="${order.checkInDate}"
								class="checkInDate" /> <input type="hidden"
								value="${order.checkOutDate}" class="checkOutDate" />
							<p class="tr ht_days c999 mt10">
								入住<span class="day_1">1</span>晚
							</p>
						</div>
						<div class="detail_box right">
							<div class="detail_one">
								<div class="detail_info" method="detail_info">

									<div class="detail_nmdt">
										<a href="" class="del_curr right"></a> <span>订单号：<b>${order.orderNo}</b></span>
										<span>预订时间：<b> <fmt:formatDate
													value="${order.presetItme}" pattern="yyyy-MM-dd HH:mm" />
										</b></span>
									</div>

									<ul>
										<li class="info_icon"><a href="#"><img
												src="${pageContext.request.contextPath }${order.hotel.fileUrl }"
												onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'"
												alt="" width="70" height="70" /></a></li>
										<li class="info_txt">
											<h1>
												<a class="font_wryh font_for_en" href="#">${order.hotel.hotelName}</a>
											</h1>
											<p>
												<span class="price" isrmb="true" cur="RMB" curprice="276">${order.payAmount}</span>元
												<span class="cbbb"></span>
											</p>
											<p method="addressphone">${order.hotel.hotelAddress}</p>
											<p class="info_txt_tel" method="addressphone">
												<span>电话:${order.hotel.hotelphone}</span>
											</p>
										</li>
										<li class="info_price trace_cancel">
											<h2>
												<span class="icon_trace"></span>
										<span <c:if test="${order.orderStatus==0}"> id='timeout'</c:if> > 
												<c:if test="${order.orderStatus==0}">
													待支付<input type="hidden" id="orderId" value="${order.id }" />
													<table border="0" style="display: inline-block;">
														<tr>
															<td>现在还有：
															</td>
															<td><span id="mmm"></span>分<span id="sss"></span>秒</td>
														</tr>
													</table>
												</c:if>
												<c:if test="${order.orderStatus==1}">
                             								已支付
                             								</c:if>
												<c:if test="${order.orderStatus==2}">
                             								已超时
                             								</c:if>
												<c:if test="${order.orderStatus==3}">
                             								 已经取消
                             								</c:if>
</span>
												<p class="t_w"></p>
											</h2>
											<a class="check" data="559640308"
											detailurl="/hotel/myhotelorderdetail_cn_559640308.html"
											method="viewOrderProgress">查看订单进度 <span class="icon"></span>
										</a> <input type="hidden" id="userAutograph559640308"
											value="0d773a34c6ed83e1873380261c7e0b63">
										</li>

										<li class="info_trace">
											<p></p>
										</li>
									</ul>
								</div>
								<div class="clear"></div>
								<div class="detail_ems" style="display: none"></div>
							</div>
						</div>
						<div class="clear"></div>
					</div>

				</c:forEach>


				<input type="hidden" id="OrderTotalPageCount" value="0" />
				<div class="no_result none" style="color: Black; display: none">
					您目前还没有订单哦~</div>

			</div>
			<div id="page_list" method="page_list" class="mt10"></div>
			<div id="couponTip"
				class="com_dialog com_widget com_widget-content com_corner-all com_draggable"
				style="width: 736px; z-index: 1001; display: none; float: left;">
				<ul class="couponIntroBox clx">
					<li>
						<!-- 拿静态图片方法 --> <img
						src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_01.png"
						width="345" height="195" alt="注册艺龙会员，获得800元返现券">
					</li>
					<li><img
						src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_02.png"
						width="345" height="195" alt="登录后，预订支持返现的酒店"></li>
					<li><img
						src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_03.png"
						width="345" height="195" alt="到酒店制服原价金额，并入住酒店"></li>
					<li><img
						src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_04.png"
						width="345" height="195" alt="离店三天后返现，随时支持提现"></li>
				</ul>
				<!-- cms end -->
			</div>

			<div id="feedbackWindow" class="none">
				<div class="fk_Box" style="height: 290px;">
					<form action="" style="">
						<input type="hidden" id="cashBackIden" />
						<h1 data-para="0">
							<span class="icon_gift"></span>提交反馈，享受优先处理特权
						</h1>
						<h1 class="none" data-para="1">
							<span class="icon_apply_me"></span>如您已经入住酒店，请帮助填写以下反馈信息，离店日期后3个工作日内将获得返现
						</h1>
						<ul class="form_ul" style="width: 350px; margin: 0 auto;">
							<li><label for="">房间号:</label> <input type="text"
								class="text gray " name="roomNo" id="roomNo" value="房间号1/房间号2" />
								<!--错误提示开始-->
								<div class="warning none" msgnull="请输入房间号" msgerr="请检查房间号格式">
									<span class="icon_alert"></span> 请输入房间号
								</div> <!--错误提示结束--></li>
							<li><label for="">入住人姓名:</label> <input type="text"
								class="text" name="checkInName" id="checkInName" />
								<div class="warning none" msgnull="请输入入住人姓名" msgerr="请检查姓名格式">
									<span class="icon_alert"></span> 请输入入住人姓名
								</div></li>
							<li><label for="">入住日期:</label> <input type="text"
								class="text" name="checkInDate" id="checkInDate" readonly="true" />
								<div class="warning none" msgnull="请输入入住日期">
									<span class="icon_alert"></span> 请输入入住日期
								</div></li>
							<li><label for="">离店日期:</label> <input type="text"
								class="text" name="departDate" id="departDate" readonly="true" />
								<div class="warning none" msgnull="请输入离店日期">
									<span class="icon_alert"></span> 请输入离店日期
								</div></li>

						</ul>
						<ul class="form_ul" style="width: 350px; margin: 0 auto;">
							<li><label for="">&nbsp;</label> <input
								method="feedbackSubmit" class="submitBtn" type="submit"
								value="提交" /><a method="feedbackCancel" style="cursor: pointer"
								class="cancel">取消反馈</a></li>
						</ul>
					</form>

					<!--反馈成功开始-->
					<div class="fk_success none">
						<h1>
							<span class="icon_smile"></span>提交成功
						</h1>
						<h6>感谢您的反馈，我们将在48小时内与酒店确认~</h6>
					</div>
					<!--反馈成功结束-->

					<!--loading开始-->
					<div class="icon_loading" style="display: none;">
						<div></div>
					</div>
					<!--loading结束-->
				</div>
			</div>

		</div>

		<div id="loading" class="none">
			<div class="tc">
				<img alt="loading"
					src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/loading3.gif' />
			</div>
		</div>

		<form id="applyBackCashForm" method="post"></form>
	</div>

	<div id="m_contentend" style="z-index: 200;"></div>
	<script type="text/javascript">
						var tjObj_rt2 = new Date();
					</script>
	<div id="m_adsContainer" style="display: none"></div>


	<script type="text/javascript">
						var HotelController = {
							cardNo: "240000000737318535",
							sixMonthPageCount: 0,
							twelveMonthPageCount: 0,
							totalPageCount: 1,
							isEn: false,
							reserNo: 0,
							couponMaxAccount: 0,
							inDate: null,
							expressWay: 0,
							invoicePay: 0,
							outDate: null,
							today: null,
							updateOrderHotelUrl: "http:\/\/hotel.elong.com\/updateOrder_0.html",
							customerName: null,
							infactCustomerList: null,
							checkInCustomerList: null,
							isHasNationality: false,
							invoiceInfoViewModel: null,
							orderCash: null,
							isForeignOrder: false,
							currentHost: "http:\/\/hotel.elong.com:80",
							myHost: "http:\/\/hotel.elong.com:80",
							currentLanguage: null,
							payProviderId: 0,
							isShowFeedBackBtn: false,
							ReserNo: 0,
							paymentFlowType: 0,
							hotelOrderListUrl: null,
							hotelOrderDetailUrl: null,
							hotelUrl: null,
							isLogin: true,
							enabledYesterday: false,
							serverTime: "2019-05-31",
							serverTimeHour: "2019-05-31 14:39:22",
							webHotelTjObj: null,
							needElongRisk: true,
							needCtripRisk: true,
							showLoginOption: true,
							showCommentInfo: true,
							commonStaticPath: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/common\/",
							hotelStaticJsPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/views\/",
							hotelStaticCssPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/css\/",
							hotelStaticJsPathTmapi: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/20190529_15.13907\/",
							hotelStaticCssPathTmapi: "\/\/file.40017.cn\/css40017cnproduct\/cn\/h\/elong_pc\/20190529_15.13907\/",
							appUrlVersion: "20190530062337",
							urlVersion: null,
							jsPath: "..\/..\/..\/web\/hotel\/views\/",
							basePath: "",
							curDate: "2019-05-31",
							fastConfirm: function(orderNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/fastconfirm", {
									orderNo: orderNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getOrderProgress: function(orderNo, autograph, isfromDetail, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getorderprogress", {
									orderNo: orderNo,
									autograph: autograph,
									isfromDetail: isfromDetail
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							confirmHotelOrderCancel: function(ReserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/confirmhotelordercancel", {
									ReserNo: ReserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							ajaxHotelOrderCancelSuccess: function(ReserNo, CancelReasonCode, CancelReason, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/ajaxhotelordercancelsuccess", {
									ReserNo: ReserNo,
									CancelReasonCode: CancelReasonCode,
									CancelReason: CancelReason
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							pagedOrderList: function(pageIndex, pageSize, sign, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/pagedorderlist", {
									pageIndex: pageIndex,
									pageSize: pageSize,
									sign: sign
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							cancelOrder: function(reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/cancelorder", {
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							collectCancelReason: function(reserNo, cancelReasonCode, cancelReason, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/colletcancelreason", {
									reserNo: reserNo,
									cancelReasonCode: cancelReasonCode,
									cancelReason: cancelReason
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							buildUserCache: function(reserNo, userStartDate, userEndDate, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/buildusercache", {
									reserNo: reserNo,
									userStartDate: userStartDate,
									userEndDate: userEndDate
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getOrderOperation: function(reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getorderoperation", {
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getPaymentProviderId: function(reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getpaymentproviderid", {
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getGoToPayInfo: function(ReserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getgotopayinfo", {
									ReserNo: ReserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getGoToPayInvoice: function(ReserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getgotopayinvoice", {
									ReserNo: ReserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							resendConfirmation: function(reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/resendconfirmation", {
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							changeCustomInfo: function(tel, email, name, reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/changecustominfo", {
									tel: tel,
									email: email,
									name: name,
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							wordValidate: function(customName, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/wordvalidate", {
									customName: customName
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							updateGuests: function(reserNo, model, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/updateguests", {
									reserNo: reserNo,
									model: model
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getInvoiceHistory: function(iCount, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getinvoicehistory", {
									iCount: iCount
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getInvoiceAddress: function(iCount, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getinvoiceaddress", {
									iCount: iCount
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							saveInvoiceInfo: function(invoiceInfoVM, opertionType, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/saveinvoiceinfo", {
									invoiceInfoVM: invoiceInfoVM,
									opertionType: opertionType
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getInvoiceDeliveryInfo: function(reserNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getinvoicedeliveryinfo", {
									reserNo: reserNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							saveFeedbackInfo: function(feedbackInfo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/savefeedbackinfo", {
									feedbackInfo: feedbackInfo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							hotelAgreed: function(orderNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/hotelagreed", {
									orderNo: orderNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							feedBackMessage: function(orderNo, notes, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/feedbackmessage", {
									orderNo: orderNo,
									notes: notes
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							claimInsurance: function(orderNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/insuranceclaim", {
									orderNo: orderNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							getApplyCashBackStatus: function(orderNo, isCanComment, isCanFeedBack, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/getapplycashbackstatus", {
									orderNo: orderNo,
									isCanComment: isCanComment,
									isCanFeedBack: isCanFeedBack
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							applyCashBack: function(orderNo, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/applycashback", {
									orderNo: orderNo
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							},
							append: function(amount, reserNo, couponMax, callback, E, httpmethod, dataType, timeoute, enabledCache) {
								E.ajax.exec("/ajax/myelong/append", {
									amount: amount,
									reserNo: reserNo,
									couponMax: couponMax
								}, callback, httpmethod, dataType, timeoute, enabledCache);
							}
						};
						var pageController = HotelController;
					</script>
	<script type="text/javascript">
						var hotelPageController = pageController;
						var tj_jsStartTime = new Date().getTime();
					</script>
	<script
		data-main='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/2018/09/11/views/myelong/hotelorderlist.js?20190530062337'
		src='//file.40017.cn/js40017cnproduct/cn/h/elong_pc/common/js/require.js?20190530062337'></script>

	<!-- 可信网站LOGO安装开始 -->
	<script type="text/JavaScript">
						function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 = [str1, CNNIC_RndNum(6)].join(''); document.getElementById(eleId).href = str1; //window.open(str1); } function CNNIC_RndNum(k)
						{ var rnd = [""]; for (var i = k; i != 0; i--) { rnd.push(Math.floor(Math.random() * 10)); } return rnd.join(''); }
					</script>
	<div
		style='position: absolute; top: 0px; left: 0px; z-index: 100; height: 1px; width: 1px; overflow: hidden; visibility: hidden; display: none'>

		<script type="text/javascript">
							;
						</script>

		<script type="text/javascript"
			src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/js/s_code.js"></script>
		<script language="JavaScript">
							var s_code = s.t();
							if (s_code) document.write(s_code);
						</script>
		<noscript>
			<img src="http://elongcom.122.2O7.net/b/ss/elongcom/1/H.1--NS/0"
				height="1" width="1" border="0" alt="" />
		</noscript>
		<script type="text/javascript"></script>
	</div>

</body>

			</html>

		</div>
	</div>
	<div id="m_contentend" style="z-index: 200;"></div>
	<script type="text/javascript">
			var tjObj_rt2 = new Date();
		</script>
	<div id="m_adsContainer" style="display: none"></div>

	<script type="text/javascript">
			var WebPartController = {
				staticUrl: "http:\/\/www.elongstatic.com\/web\/bus",
				urlVersion: "201401010800",
				jsPath: "..\/..\/..\/passport\/js\/",
				basePath: "",
				curDate: "2019-05-31"
			};
			var pageController = WebPartController;
		</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/userlist/require2.1.16.min.js"
		data-main="/js/webpart/webpart.js"></script>

	<!-- ===================== footer 20190521 start ===================== -->
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
					<a href="http://ebooking.elong.com/ebkauth/login" title="艺龙商家中心"
						rel="nofollow">商家中心</a>
				</dd>
			</dl>
			<dl>
				<dt>关于艺龙</dt>
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
					<a href="https://d.elong.com/a/contact" title="联系艺龙旅行网"
						rel="nofollow">联系我们</a>
				</dd>
			</dl>
			<dl>
				<dt>艺龙APP下载</dt>
				<dd class="pt10">
					<i class="cm_icon footer_info_app"></i>
				</dd>
			</dl>
			<dl>
				<dt>艺龙官方微信</dt>
				<dd class="pt10">
					<i class="cm_icon footer_info_wx"></i>
				</dd>
			</dl>
			<dl>
				<dt>同程艺龙小程序</dt>
				<dd class="pt10">
					<i class="cm_icon footer_info_xcx"></i>
				</dd>
			</dl>
		</div>
		<div class="clx"></div>
		<div class="footer_copy">
			&#169; 2000 - 2019 北京艺龙信息技术有限公司, eLong, Inc or its affiliates. All
			Rights Reserved. <i class="cm_icon"></i> <a rel="nofollow"
				target="_blank"
				href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/ICP_20180015.pdf">ICP证:合B2-20180015</a>
			<br> <a rel="nofollow" target="_blank"
				href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502026059">
					<i
					style="background-image: url(http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/img/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
					京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
				<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/hotel/eltk/eltk.html">《艺龙旅行网服务条款》</a><i
				class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a
				rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
		</div>
		<div class="footer_safe">
			<a class="cm_icon qua-1"
				href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN"
				rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a>
			<a title="艺龙网通过PCI认证" alt="艺龙网通过PCI认证" target="_blank" rel="nofollow"
				href="http://www.atsec.cn/cn/pci-attestation/Elong-PCIAttestation-atsec-PCI-DSS-C-01128.jpg"
				class="cm_icon qua-6">艺龙网通过PCI认证</a><a class="cm_icon qua-3"
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
		href="${pageContext.request.contextPath }/statics/css/userlist/styles.css">
		<!-- ===================== footer end ===================== -->

		<!-- 可信网站LOGO安装开始 -->
		<script type="text/JavaScript">
			function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 = [str1, CNNIC_RndNum(6)].join(''); document.getElementById(eleId).href = str1; } function CNNIC_RndNum(k) { var rnd = [""];
			for (var i = k; i != 0; i--) { rnd.push(Math.floor(Math.random() * 10)); } return rnd.join(''); }
		</script>

		<div
			style='position: absolute; top: 0px; left: 0px; z-index: 100; height: 1px; width: 1px; overflow: hidden; visibility: hidden; display: none'>

			<script type="text/javascript">
				;
			</script>

			<script type="text/javascript"
				src="${pageContext.request.contextPath }/statics/js/userlist/s_code.js"></script>
			<script language="JavaScript">
				var s_code = s.t();
				if (s_code) document.write(s_code);
			</script>
			<noscript>
				<img src="http://elongcom.122.2O7.net/b/ss/elongcom/1/H.1--NS/0"
					height="1" width="1" border="0" alt="" />
			</noscript>
			<script type="text/javascript"></script>

			<script type="text/javascript"
				src="${pageContext.request.contextPath }/statics/js/userlist/base64.js"></script>
		</div>
		<input id="end" disabled="disabled" name="end" value="${end }" /> <script
			ttype="text/javascript">
		$(function() {
					
						
				        //参考：可以通过跨域方式获取其他服务器的当前时间作为服务器当前时间
				        var oCity="北京"; //设置城市
				        $.ajax({
				            type:"GET", //默认是GET
				            url:"http://api.map.baidu.com/telematics/v3/weather?location=" + oCity + "&output=json&ak=ohA7QHfg0BBrpiY4kyuIAAsD",
				            dataType:"jsonp",
				            success:function(data){
				              //alert(data.date);
				            },
				            error:function(jqXHR){
				              //alert("信息错误" + jqXHR.status);
				            }
				        })
						
					})
		</script>
		<script>
    //时间为一位数时显示格式为："0X"
    function checkTime(i) {
        if (i < 10) {
            i = "0" + i;
        }
        return i;
    }

    //显示浏览器现在的时间
    function formatTime(timeVal) {
        var datePara = new Date(timeVal);//定义日期对象
        var yyyy = datePara.getFullYear();//通过日期对象的getFullYear()方法返回年
        var MM = datePara.getMonth() + 1;//通过日期对象的getMonth()方法返回月
        var dd = datePara.getDate();//通过日期对象的getDate()方法返回日
        var hh = datePara.getHours();//通过日期对象的getHours方法返回时
        var mm = datePara.getMinutes();//通过日期对象的getMinutes方法返回分
        var ss = datePara.getSeconds();//通过日期对象的getSeconds方法返回秒
        // 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09
        MM = checkTime(MM);
        dd = checkTime(dd);
        hh = checkTime(hh);
        mm = checkTime(mm);
        ss = checkTime(ss);

        //用于保存星期（getDay()方法得到星期编号）
        var day; 
        if (datePara.getDay() == 0) day = "星期日 "
        if (datePara.getDay() == 1) day = "星期一 "
        if (datePara.getDay() == 2) day = "星期二 "
        if (datePara.getDay() == 3) day = "星期三 "
        if (datePara.getDay() == 4) day = "星期四 "
        if (datePara.getDay() == 5) day = "星期五 "
        if (datePara.getDay() == 6) day = "星期六 "

        //document.getElementById('start').value = yyyy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss + " " + day;
        //setTimeout('formatTime()', 1000);//每一秒中重新加载formatTime()方法
        return yyyy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss; //+ " " + day;
    }
    
    //服务器现在的时间（这里只是测试，就用浏览器时间代替）
    var startTime = '';
    //活动截止时间endTime（以服务器时间为标准，即给定的时间）
    var end = '';
    var endTime = '';
    //活动截止时间（以浏览器时间为标准）
    var browserEndTime = '';
    //距离活动结束还剩余的时间（以浏览器为标准）
    var plus = '';

    //倒计时
    function setTimer() {
        if (!plus) {
            //服务器现在的时间（这里只是测试，就用浏览器时间代替）
            startTime = new Date();
            $("#start").val(formatTime(startTime));
            //活动截止时间endTime（预先给定的值）
            end = document.getElementById("end").value;
            endTime = new Date(end);
            //活动截止时间与当前时间的时间差
            plus = endTime - startTime;
        }
        else {
            //距离活动结束还剩余的时间，第二次以后就不需要再计算，直接自减即可
            plus -= 1000;
            //更新当前时间(getTime()获取时间转化成毫秒后的数值)
            startTime = new Date(startTime.getTime() + 1000);
            $("#start").val(formatTime(startTime));
        }

        var day = parseInt(plus / 1000 / 60 / 60 / 24);
        var hour = parseInt(plus / 1000 / 60 / 60) - day * 24;
        var minute = parseInt(plus / 1000 / 60) - parseInt(plus / 1000 / 60 / 60) * 60;
        var second = parseInt(plus / 1000) - parseInt(plus / 1000 / 60) * 60;

        // 如果分钟或小时的值小于10，则在其值前加0，比如如果时间是下午3点20分9秒的话，则显示15：20：09            
        day = checkTime(day);
        hour = checkTime(hour);
        minute = checkTime(minute);
        second = checkTime(second);
        
		$("#sss").html(second);
		$("#mmm").html(minute);
		if(second==0&&minute==0){
			$.get("TimeOut","orderId="+$("#orderId").val(),function(data){
				$('#timeout').html("已超时");
			});
		}
        //document.getElementById("p").innerHTML = "距离活动截止，还剩" + day + "天" + hour + "时" + minute + "分" + second + "秒";

        if (plus <= 1) {
            clearInterval(id);
        }
    }
    
    
    //每秒循环一次，刷新活动截止时间与当前时间的时间差
    var id = setInterval(setTimer, 1000);
    </script>
</body>
</html>
