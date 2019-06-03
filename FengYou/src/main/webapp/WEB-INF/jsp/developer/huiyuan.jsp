<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<title>我的酒店订单</title>
		<link rel="icon" href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740" type="image/x-icon">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/huiyuan/savior.js"></script>
		<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/statics/css/huiyuan/EL_common.css" type="text/css" media="all" />
		<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/statics/css/huiyuan/MyElong_cn.css" type="text/css" media="all" />
		<link rel="stylesheet" rev="stylesheet" href="${pageContext.request.contextPath }/statics/css/huiyuan/MyElong_common_2014.css" type="text/css" media="all" />

		<!-- <link rel="stylesheet" type="text/css" href='http://www.elongstatic.com/web/myelong/css/MyElong_common_2014.css?t=201401010800'>
 -->
		<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath }/statics/css/huiyuan/MyElong2014_hotel.css'>

		<!-- 汽车票页面和其他页面不共用一个css -->

	</head>

	<body>
		<!-- ===================== header 2019-04-29 start ===================== -->
		<link href="${pageContext.request.contextPath }/statics/css/vendors.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/header.css">
		<header class="com-header">
			<!-- 导航条开始 -->
			<div class="header-bar">
				<div class="header-content clearfix">
					<div class="header-bar-position"><span class="header-icon icon-header_location"></span><span class="current-city">湖南</span><a class="change-city" href="">切换城市</a>
						<div class="near-citys">[<a class="city-guess" href="">郴州</a><a class="city-guess" href="https://lf.meituan.com">廊坊</a><a class="city-guess" href="">固安县</a>]</div>
						<div class="user-entry"><a class="growth-entry user-importent">立即登录</a><a class="extra-entry">注册</a></div>
					</div>
					<nav class="header-bar-nav">
						<ul class="header-nav-first">
							<li class="has-child"><a href="nofollow" href="" target="_blank">请登录</a></li>
							<li class="has-child"><a href="" target="_blank">快速注册</a></li>
							<li class="has-child"><a href="" target="_blank">会员中心</a></li>
							<li class="has-child"><a href="" target="_blank">帮助中心</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<!-- 导航条结束 -->
		</header>
		<!-- 顶导航 -->
		<div id="header" class="hr_warp">
			<!-- logo和搜索栏开始-->
			<div class="hr_container">
				<div class="hr_container_logo">
					<a href=""><img src="${pageContext.request.contextPath }/statics/images/logo/mg_logo1.png" alt="风游"></a>
					<h1>风游</h1>
				</div>
				<!--logo和搜索栏之间的空格开始-->
				<div class="hr_city">
					<div class="hr_city_change" style="display: none;">
						<span class="hr_city_site" id="citysite"></span>
						<i class="icon iconfont icon-xiajiantou"></i>
					</div>
					<div class="hr_city_sub" id="hr_city_sub">
					</div>
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
					<input type="text" placeholder="酒店所在省份" class="hr_search_input" id="hr_search_input" data-url="" />
					<!--
					<div class="hr_search_sokey">
						<a title="香港" href="http://www.mangocity.com/lvyou/xianggang/"> 香港 </a>
						<a title="泰国" href="http://www.mangocity.com/lvyou/taiguo/"> 泰国 </a>
						<a title="三亚" href="http://www.mangocity.com/lvyou/sanya/"> 三亚 </a>
					</div>-->
					<a id="hr_search_btn" class="hr_search_btn" href="javascript:void(0)">搜索</a>
				</div>
			</div>
			<!-- logo和搜索栏结束-->
			<!-- 主要内容 ]]-->
			<!-- 主导航 [[-->
			<div id="mainnav" class="hr_mainnav_warp">
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
			<!-- 主导航 ]]-->
		</div>

		<!-- ===================== header end ===================== -->

		<div class="content" style="margin-top:20px;">
			<!-- ===================== header start ===================== -->

			<ul class="myElongNav">
				<li class="title"><a href="http://my.elong.com/index_cn.html"><span class="icon i05"></span>我的风游</a></li>
				<li class="title"><a><span class="icon i01"></span>订单管理</a></li>
				<li class="title"><a><span class="icon i06"></span>我的记录</a></li>
				<li><a href="/hotel/notrevieworderlist_cn.html?rnd=1557392200364">酒店点评</a></li>
				<li><a href="/hotel/hotelfavlist_cn.html?rnd=1557392200364">酒店收藏</a></li>
				<li class="title"><a><span class="icon i03"></span>个人设置</a></li>
				<li><a href="/me_personalcenter_cn.html?rnd=1557392200364">个人资料</a></li>
				<li><a href="/modpassword_cn.html?rnd=1557392200364">密码修改</a></li>
				<li class="codePic">
					<img src="http://www.elongstatic.com/web/myelong/pic/codePic.png" width="80" alt="">
					<!--<img src="../../../../myelong/pic/codePic.png" width="80" alt="">-->
					<span class="codeTxt"></span>
					<span class="codeArr"></span>
				</li>
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
					<title>
						我的酒店订单</title>
					<link rel="icon" href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/pic/favicon.ico?t=201411070740" type="image/x-icon" />
					<meta name="keywords" content="" />
					<meta name="description" content="" />
					<script type="text/javascript">
						var tjObj_rt = new Date();
					</script>
					<link rel="stylesheet" type="text/css" href='//file.40017.cn/js40017cnproduct/cn/h/elong_pc/common/css/new2015.min.css?20190507162918' type="text/css" media="all" />
					<link rel="stylesheet" type="text/css" href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/myelong/css/MyElong_common_2014.css" />
					<link rel="stylesheet" type="text/css" href='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/2018/09/11/css/order_list_2015.css?20190507162918' />
				</head>
				<body>
					<div class="rightMain">
						<div class="my_list">
							<div class="orderMtop">
								<p>
								</p>
								<div id="OrderRangeTab" class="MEselBox none">
									<input name="" type="text" readonly="readonly" class="MEsel" style="width: 140px;" value="6个月订单" id="orderCondition" />

									<ul id="OrderRangeItems" style="width: 115px; display: none;">
										<li method="SixMonth" style="width: 115px;">6个月订单</li>
										<li method="TwelveMonth">6-12个月订单</li>
									</ul>
								</div>
								<span class="orderMinfo">您可以查看最近6个月内的订单，6个月前订单请致电95711查询</span>
								<p>
								</p>
								<!-- 		
      			<a id="MyCouponTip" href="#" class="xfqBut"></a>
      		     -->
							</div>

							<div id="placeContent" style="color:#e8eff6">

								<div id="priceMo" class="none">
									<p class="tl"><span class="bold">温馨提醒: </span>&nbsp;您到酒店需要支付<span class="cf60">{0}{1}</span>。因汇率浮动人民币仅供参考。</p>
								</div>
								<div id="canReason" class="none">
									<div class="canordpop">
										<div class="canordpop_info">
											<div class="canordpop_info_pri left">
												<p class="t14 bold mt20" id="refund_txt">
													取消将扣除金额</p>
												<p class="mt20" id="refund_price">
													<span class="c999">￥</span><span class="cf60">{0}</span></p>
											</div>
											<div id="cancelrules" class="canordpop_info_poli left t12">
												<p class="mt20">
													订单变更取消政策：</p>
												<p class="mt10" id="rule_txt">
													{1}
												</p>
												<i class="icon"></i>
											</div>
										</div>
										<div class="canordpop_change clx" id="modOrderDiv">
											<span class="canordpop_cha_icon"></span>
											<p>
												只是想修改日期或更换房型，您可以去</p>
											<input type="button" class="canordpop_cha_btn" id="dialogModOrder" value="修改订单" />
										</div>

										<div class="canordpop_reason tl">
											<p>
												<span class="canordpop_rea_icon"></span>如果您需要取消订单，请告诉我们取消原因，便于更好的服务</p>
											<ul>
												<li><label><input name="reason" type="radio" value="101" >行程改变</label></li>
												<li><label><input name="reason" type="radio" value="102">预订重复</label></li>
												<li><label><input name="reason" type="radio" value="103">确认速度太慢</label></li>
												<li><label><input name="reason" type="radio" value="104">在别家找到了更好的酒店</label></li>
												<li><label><input name="reason" type="radio" value="105">价格太高</label></li>
												<li><label><input name="reason" type="radio" value="106">其他</label><input id="otherReason" value="" type="text" class="canordpop_rea_text" /></li>
											</ul>
										</div>
										<div class="canordpop_rea_btn">
											<input type="button" class="" id="confirmCancelOrder" value="取消订单">
										</div>
									</div>
								</div>

								<div id="canSuccess" class="none">
									<div class="canordpop">
										<div class="canordpop_suc">
											<div class="canordpop_suc_title">
												<i></i>取消成功！</div>
											<div class="canordpop_suc_pri">
												<p name="danbao_txt">
													本订单涉及退款<span class="c999 t14">￥</span><span class="cf60 t18">{0}</span>将于3-5个工作日退回至您的使用账户；</p>
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
												<i></i>取消失败！</div>
											<div class="canordpop_suc_pri">
												<p class="tc">
													{0}
												</p>
											</div>
										</div>
									</div>
								</div>

								<input type="hidden" id="OrderTotalPageCount" value="0" />
								<div class="no_result none" style="color: Black; display: none">
									您目前还没有订单哦~
								</div>

							</div>
							<div id="page_list" method="page_list" class="mt10"></div>
							<div id="couponTip" class="com_dialog com_widget com_widget-content com_corner-all com_draggable" style="width: 736px; z-index: 1001; display: none; float: left;">
								<ul class="couponIntroBox clx">
									<li>
										<!-- 拿静态图片方法 --><img src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_01.png" width="345" height="195" alt="注册艺龙会员，获得800元返现券"></li>
									<li>
										<img src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_02.png" width="345" height="195" alt="登录后，预订支持返现的酒店"></li>
									<li>
										<img src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_03.png" width="345" height="195" alt="到酒店制服原价金额，并入住酒店"></li>
									<li>
										<img src="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/couponIntro_04.png" width="345" height="195" alt="离店三天后返现，随时支持提现"></li>
								</ul>
								<!-- cms end -->
							</div>

							<div id="feedbackWindow" class="none">
								<div class="fk_Box" style="height: 290px;">
									<form action="" style="">
										<input type="hidden" id="cashBackIden" />
										<h1 data-para="0"><span class="icon_gift"></span>提交反馈，享受优先处理特权</h1>
										<h1 class="none" data-para="1"><span class="icon_apply_me"></span>如您已经入住酒店，请帮助填写以下反馈信息，离店日期后3个工作日内将获得返现</h1>
										<ul class="form_ul" style="width: 350px;margin: 0 auto;">
											<li>
												<label for="">房间号:</label>
												<input type="text" class="text gray " name="roomNo" id="roomNo" value="房间号1/房间号2" />
												<!--错误提示开始-->
												<div class="warning none" msgnull="请输入房间号" msgerr="请检查房间号格式">
													<span class="icon_alert"></span> 请输入房间号
												</div>
												<!--错误提示结束-->
											</li>
											<li>
												<label for="">入住人姓名:</label>
												<input type="text" class="text" name="checkInName" id="checkInName" />
												<div class="warning none" msgnull="请输入入住人姓名" msgerr="请检查姓名格式">
													<span class="icon_alert"></span> 请输入入住人姓名
												</div>
											</li>
											<li>
												<label for="">入住日期:</label>
												<input type="text" class="text" name="checkInDate" id="checkInDate" readonly="true" />
												<div class="warning none" msgnull="请输入入住日期">
													<span class="icon_alert"></span> 请输入入住日期
												</div>
											</li>
											<li>
												<label for="">离店日期:</label>
												<input type="text" class="text" name="departDate" id="departDate" readonly="true" />
												<div class="warning none" msgnull="请输入离店日期">
													<span class="icon_alert"></span> 请输入离店日期
												</div>
											</li>

										</ul>
										<ul class="form_ul" style="width: 350px;margin: 0 auto;">
											<li>
												<label for="">&nbsp;</label>
												<input method="feedbackSubmit" class="submitBtn" type="submit" value="提交" /><a method="feedbackCancel" style="cursor:pointer" class="cancel">取消反馈</a>
											</li>
										</ul>
									</form>

									<!--反馈成功开始-->
									<div class="fk_success none">
										<h1><span class="icon_smile"></span>提交成功</h1>
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
							<div class="tc"><img alt="loading" src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/loading3.gif' /></div>
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
							totalPageCount: 0,
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
							serverTime: "2019-05-09",
							serverTimeHour: "2019-05-09 16:56:40",
							webHotelTjObj: null,
							needElongRisk: true,
							needCtripRisk: true,
							showLoginOption: true,
							showCommentInfo: true,
							commonStaticPath: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/common\/",
							hotelStaticJsPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/views\/",
							hotelStaticCssPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/css\/",
							hotelStaticJsPathTmapi: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/201957_14.10fe5\/",
							hotelStaticCssPathTmapi: "\/\/file.40017.cn\/css40017cnproduct\/cn\/h\/elong_pc\/201956_18.1d48c\/",
							appUrlVersion: "20190507162918",
							urlVersion: null,
							jsPath: "..\/..\/..\/web\/hotel\/views\/",
							basePath: "",
							curDate: "2019-05-09",
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
					<script data-main='${pageContext.request.contextPath }/statics/js/huiyuan/hotelorderlist.js' src='${pageContext.request.contextPath }/statics/js/huiyuan/require.js'></script>

					<!-- 可信网站LOGO安装开始 -->
					<script type="text/JavaScript">
						function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 = [str1, CNNIC_RndNum(6)].join(''); document.getElementById(eleId).href = str1; //window.open(str1); } function CNNIC_RndNum(k)
						{ var rnd = [""]; for (var i = k; i != 0; i--) { rnd.push(Math.floor(Math.random() * 10)); } return rnd.join(''); }
					</script>
					<div style='position: absolute; top: 0px; left: 0px; z-index: 100; height: 1px; width: 1px;
        overflow: hidden; visibility: hidden;display:none'>

						<script type="text/javascript">
							;
						</script>

						<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/huiyuan/s_code.js"></script>
						<script language="JavaScript">
							var s_code = s.t();
							if (s_code) document.write(s_code);
						</script>
						<noscript>
            <img src="http://elongcom.122.2O7.net/b/ss/elongcom/1/H.1--NS/0" height="1" width="1"
                border="0" alt="" /></noscript>
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
				curDate: "2019-05-09"
			};
			var pageController = WebPartController;
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/register_cn/require2.1.16.min.js" data-main="/js/webpart/webpart.js"></script>

		<!-- ===================== footer 20190403 start ===================== -->
		<div class="clear"></div>
		<div class="footer" r="3">
			<div class="footer_info">
				<dl> <dt>加盟合作</dt>
					<dd> <a href="http://hotel.elong.com/union/join.html#?" title="酒店加盟" rel="nofollow">酒店加盟</a> </dd>
					<dd> <a href="http://open.elong.com/" title="机票酒店分销联盟" rel="nofollow">开放平台</a> </dd>
					<dd> <a href="http://promotion.elong.com/hotel/cn/elongagent/elongagent.html " title="旅游产品代理合作" rel="nofollow">代理合作</a> </dd>
					<dd> <a href="http://promotion.elong.com/web/adservice/adservice.html" title="在线广告服务" rel="nofollow">广告服务</a> </dd>
					<dd> <a href="http://ebooking.elong.com/ebkauth/login" title="艺龙商家中心" rel="nofollow">商家中心</a> </dd>
				</dl>
				<dl> <dt>关于艺龙</dt>
					<dd> <a href="http://hotel.elong.com/directory/" title="酒店大全">酒店大全</a> </dd>
					<dd> <a href="http://ihotel.elong.com/sitemap/" title="国际酒店">国际酒店</a> </dd>
					<dd> <a href="http://promotion.elong.com/web/insurance/index.html" title="旅行保险">旅行保险</a> </dd>
					<dd> <a href="http://promotion.elong.com/index/cn/campus/index.html" title="校园招聘" rel="nofollow">校园招聘</a> </dd>
					<dd> <a href="https://d.elong.com/a/contact" title="联系艺龙旅行网" rel="nofollow">联系我们</a> </dd>
				</dl>
				<dl> <dt>艺龙APP下载</dt>
					<dd class="pt10"> <i class="cm_icon footer_info_app"></i> </dd>
				</dl>
				<dl> <dt>艺龙官方微信</dt>
					<dd class="pt10"> <i class="cm_icon footer_info_wx"></i> </dd>
				</dl>
				<dl> <dt>艺龙官方小程序</dt>
					<dd class="pt10"><i class="cm_icon footer_info_xcx"></i></dd>
				</dl>
			</div>
			<div class="clx"></div>
			<div class="footer_copy"> &#169; 2000 - 2019 郴州风游信息技术有限公司, eLong, Inc or its affiliates. All Rights Reserved. <i class="cm_icon"></i> <a rel="nofollow" target="_blank" href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/ICP_20180015.pdf">ICP证:合B2-20180015</a>				<br>
				<a rel="nofollow" target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502026059"> <i style=" background-image: url(http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/img/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i> 京公网安备11010502026059号</a> <i class="cm_icon"></i>
				<a rel="nofollow" target="_blank" href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank" href="http://m.elongstatic.com/hotel/eltk/eltk.html">《艺龙旅行网服务条款》</a>
				<i class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a></div>
			<div class="footer_safe"> <a class="cm_icon qua-1" href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN" rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a> <a title="艺龙网通过PCI认证" alt="艺龙网通过PCI认证" target="_blank"
					rel="nofollow" href="http://www.atsec.cn/cn/pci-attestation/Elong-PCIAttestation-atsec-PCI-DSS-C-01128.jpg" class="cm_icon qua-6">艺龙网通过PCI认证</a><a class="cm_icon qua-3" href="http://www.itrust.org.cn/Home/Index/satification_certificate/wm/MY2019042401.html"
					rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a> <a class="cm_icon qua-5" href="https://ss.knet.cn/verifyseal.dll?sn=e14021111010646180fggu000000&amp;ct=df&amp;a=1&amp;pa=500267" rel="nofollow" onclick="CNNIC_change('urlknet')"
					tabindex="-1" id="urlknet" target="_blank" title="可信用网站身份验证" alt="可信用网站身份验证">可信用网站身份验证</a> <a class="cm_icon qua-4" href="http://search.szfw.org/cert/l/CX20120918001652001722" rel="nofollow" target="_blank" title="诚信示范企业" alt="诚信示范企业">诚信示范企业</a>
				<a alt="品牌官网认证" title="品牌官网认证" target="_blank" rel="nofollow" href="http://si.trustutn.org/info?sn=912170105026585086807&amp;certType=1" class="cm_icon qua-7">品牌官网认证</a>
			</div>
		</div>
		<link rel="stylesheet" type="text/css" href="//m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/css/styles.css?20181218">
		<!-- ===================== footer end ===================== -->

		<!-- 可信网站LOGO安装开始 -->
		<script type="text/JavaScript">
			function CNNIC_change(eleId) { var str = document.getElementById(eleId).href; var str1 = str.substring(0, (str.length - 6)); str1 = [str1, CNNIC_RndNum(6)].join(''); document.getElementById(eleId).href = str1; } function CNNIC_RndNum(k) { var rnd = [""];
			for (var i = k; i != 0; i--) { rnd.push(Math.floor(Math.random() * 10)); } return rnd.join(''); }
		</script>

		<div style='position: absolute; top: 0px; left: 0px; z-index: 100; height: 1px; width: 1px;
        overflow: hidden; visibility: hidden;display:none'>

			<script type="text/javascript">
				;
			</script>

			<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/huiyuan/s_code.js"></script>
			<script language="JavaScript">
				var s_code = s.t();
				if (s_code) document.write(s_code);
			</script>
			<noscript>
                                    <img src="http://elongcom.122.2O7.net/b/ss/elongcom/1/H.1--NS/0" height="1" width="1"
                                         border="0" alt="" /></noscript>
			<script type="text/javascript"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/huiyuan/jquery1.8.3.min.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/huiyuan/base64.js"></script>

		</div>
		<!--                          -->
	</body>

</html>