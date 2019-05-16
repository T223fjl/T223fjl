<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>个人中心</title>
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
		<link rel="stylesheet" rev="stylesheet"
			href="${pageContext.request.contextPath }/statics/css/userlist/EL_common.css?t=201401010800"
			type="text/css" media="all" />
		<link rel="stylesheet" rev="stylesheet"
			href="${pageContext.request.contextPath }/statics/css/userlist/MyElong_cn.css?t=201401010800"
			type="text/css" media="all" />
		<link rel="stylesheet" rev="stylesheet"
			href="${pageContext.request.contextPath }/statics/css/userlist/MyElong_common_2014.css?t=201401010800"
			type="text/css" media="all" />
		<link rel="stylesheet" type="text/css"
			href='${pageContext.request.contextPath }/statics/css/userlist/EL_common.css?t=201401010800'>
			<link rel="stylesheet" type="text/css"
				href='${pageContext.request.contextPath }/statics/css/userlist/MyElong_common_2014.css?t=201401010800'>
				<link rel="stylesheet" type="text/css"
					href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2014_information.css?t=201401010800'>
					<link rel="stylesheet" type="text/css"
						href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2018_information.css'>
						<link rel="stylesheet" type="text/css"
							href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2019_information.css'>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/userlist/jquery-1.8.3.js"></script>					
<script type="text/javascript">
$(function(){

	$("form").submit(function(){	
		if($("#idcard").val()==""){
			alert("身份证不能为空");	
			return false;
		}
		
		var check=true;
		if($("#phone").val()==""){
			alert("电话不能为空！");
			check=false;
		}
		if($("#address").val()==""){
			alert("地址不能为空");
			check=false;
		}
		if($("#status").val()==0){
			alert("性别不能为空");
			check=false;
		}
	/* 	if(date.test($("#birthday").val())==false){
			alert("日期格式不正确");
			check=false;
		}	 */
		return check;
	});
	
});

</script>
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
						value="240000000738038850" /> <input type="hidden"
						id="hidden_user_name" value="" />
					<div class="log_on" id="user_display_div">
						<span> <b class='user_leve_pt'></b> <a id="n_user_name"
							href="http://my.elong.com/index_cn.html?rnd=20190515101336"
							title="">欢迎您：${loginUser.name}</a> </span>
					</div>
					<!--弹出-->
					<div class="drop_box_log pt" style="display: none"
						id="div_user_center">
						<ul class='clx'>
							<li class='icon_d1'><b></b><a
								href="http://my.elong.com/hotel/MyHotelOrderList_cn.html?rnd=20190515101336"
								rel="nofollow">酒店订单</a></li>
							<li class='icon_d2' style="display: none;"><b></b><a
								href="http://my.elong.com/GrouponOrder_cn.html?rnd=20190515101336"
								rel="nofollow">团购订单</a></li>
							<li class='icon_d3'><a
								href="http://my.elong.com/Flight/FlightOrder_cn.html?rnd=20190515101336"
								rel="nofollow">机票订单</a></li>
							<li class='icon_d4'><a
								href="http://my.elong.com/train/orderlist?rnd=20190515101336"
								rel="nofollow">火车票订单</a></li>
							<li class='icon_d5'><b></b><a
								href="http://my.elong.com/CashCoupon_cn.html?flag=Cash&rnd=20190515101336"
								rel="nofollow">现金账户</a></li>
							<li class='icon_d6'><b></b><a
								href="http://my.elong.com/ly/lyOrderFill?rnd=20190515101336"
								rel="nofollow">汽车票订单</a></li>
							<li class='icon_d7'><b></b><a
								href="http://my.elong.com/hotel/hotelfavlist_cn.html?rnd=20190515101336"
								rel="nofollow">酒店收藏</a></li>
							<li class='icon_d8'><b style='display: none;'
								id='comment_notice'>9</b> <a id="n_comment_a"
								href="http://my.elong.com/Hotel/reviewedorderlist_cn.html?rnd=20190515101336"
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

			<li><a href="/hotel/myhotelorderlist_cn.html?rnd=1557886415492">酒店订单</a></li>

			<li><a href="/ihotel/orderlist_cn.html?rnd=1557886415492">国际&#183;港澳台订单</a></li>

			<li><a href="/ihotel/wifiorderlist.html?rnd=1557886415492">出境wifi订单</a></li>

			<li><a href="/flight/flightorder_cn.html?rnd=1557886415492">机票订单</a></li>


			<li><a
				href="/presentCard/presentCardOrderList?rnd=1557886415492">礼品卡订单</a></li>

			<li><a href="/train/orderlist?rnd=1557886415492">火车票订单</a></li>

			<li><a href="/ly/lyOrderFill?rnd=1557886415492">汽车票订单</a></li>

			<li class="title"><a><span class="icon i06"></span>我的记录</a></li>

			<li><a
				href="/hotel/notrevieworderlist_cn.html?rnd=1557886415492">酒店点评</a></li>

			<li><a href="/hotel/hotelfavlist_cn.html?rnd=1557886415492">酒店收藏</a></li>

			<li class="title"><a><span class="icon i02"></span>账户管理</a></li>

			<li><a href="/cashcoupon_cn.html?rnd=1557886415492">现金账户</a></li>

			<li><a href="/point_cn.html?rnd=1557886415492">里程</a></li>

			<li><a href="/ihotel/mycoupon_cn.html?rnd=1557886415492">国际&#183;港澳台优惠券</a></li>

			<li><a href="/presentCard/presentCardValidate?rnd=1557886415492">礼品卡/红包充值</a></li>

			<li class="title"><a><span class="icon i03"></span>个人设置</a></li>

			<li><a href="/me_personalcenter_cn.html?rnd=1557886415492">个人资料</a></li>

			<li><a href="/modpassword_cn.html?rnd=1557886415492">密码修改</a></li>
			<li class="title"><a><span class="icon i04"></span>我的社区</a></li>

			<li><a href="http://lvyou.elong.com/home/?rnd=1557886415492">我的社区首页</a></li>


			<li class="codePic">
				<!--   <img src="http://www.elongstatic.com/web/myelong/pic/codePic.png" width="80" alt=""> -->
				<!--<img src="../../../../myelong/pic/codePic.png" width="80" alt="">-->
				<span class="codeTxt"></span> <span class="codeArr"></span>
			</li>
		</ul>


		<!-- ===================== header end ===================== -->

		<script type="text/javascript">
			var _LANGUAGE = "cn";
			var _JSPATH = "/passport/js/";
			var TK = "cnqxtchm";
		</script>

		<style type="text/css">
.pagePN {
	font-size: 12px;
	border: 1px solid #cde;
	color: #37d;
	padding: 5px 8px;
	margin-left: 5px;
}

.pageDot {
	font-size: 12px;
	border: 1px solid #cde;
	color: #37d;
	padding: 5px 8px;
	cursor: default;
	margin-left: 5px;
}

.pageChoosed {
	color: #fff !important;
	font-size: 12px;
	border: 1px solid #37d;
	background-color: #37d;
	padding: 5px 8px;
	margin-left: 5px;
}

a.pageChoosed:hover {
	font-size: 12px;
	border: 1px solid #37d;
	background-color: #fff;
	color: #37d !important;
	padding: 5px 8px;
	margin-left: 5px;
}

a.pageDot:hover {
	color: #37d;
}

a.pagePN:hover {
	color: #cde;
}
</style>

		<div class="rightMain"
			style="width: 842px; position: relative; margin: 0 auto;"
			data-bind="click:closeAllOptions,css:{rightMain:true,en:_LANGUAGE=='en'}">
			<div class="my_list my_comment_view" style="padding: 0;">
				<div class="collectTab clx">
					<ul>
						<li data-bind="click: clickTag.bind($data,'basicInformation')">
							<a href="#"
							data-bind="css:{on:tagToBeShowed()=='basicInformation'}"> <span>基本资料</span>
						</a>
						</li>
						<li data-bind="click: clickTag.bind($data,'address')"><a
							href="#" data-bind="css:{on:tagToBeShowed()=='address'}"> <span>常用地址</span>
						</a></li>
						<li data-bind="click: clickTag.bind($data,'travellerInfo')">
							<a href="#" data-bind="css:{on:tagToBeShowed()=='travellerInfo'}">
								<span>常用旅客信息</span>
						</a>
						</li>
					</ul>
					<div class="accountOff" id="accountOff" style="margin-left:550px"><a href="logout">账户注销</a></div>
				</div>

				<script>
					var accountOffDialogue = document
							.getElementById('accountOffDialogue');
					var body = document.body;
					function showAccountOffDialogue() {
						accountOffDialogue.style.display = 'block';
						body.style.overflow = 'hidden';
					}
					function hideAccountOffDialogue() {
						accountOffDialogue.style.display = 'none';
						body.style.overflow = 'auto';
					}
				</script>
				<form action="modifyUser" method="post" enctype="multipart/form-data">
					<!-- 基本资料 -->
					<div data-bind="if:basicInformationTagKeepShow">
						<div style="display: block;" id="basicInformation"
							data-bind="visible:tagToBeShowed()=='basicInformation',with:basicInformation">
							<!--用户资料修改 start-->
							<div class="mod_user_inf_mt clx">
								<dl>
									<dd class="avatar_name">
										<span class="avatar_80"> <b title="testtest"
											data-bind="text:memberLevelName"></b>
										</span> 
						
												<img src="${pageContext.request.contextPath }/statics/images/userlist/userImage.jpg" alt="" width="40%" height="40%" /> 
										<c:if test="${user.status==0}">
											<a href="void;"
												data-bind="visible:!editing(),click:$parent.basicInformation_edit">超级管理员</a>
										</c:if>
										<c:if test="${user.status==1}">
											<a href="void;"
												data-bind="visible:!editing(),click:$parent.basicInformation_edit">管理员</a>
										</c:if>

										<c:if test="${user.status==2 }">
											<a href="void;"
												data-bind="visible:!editing(),click:$parent.basicInformation_edit">普通会员</a>
										</c:if>


										<p data-bind="visible:usernameRepetition"
											style="display: none;">用户名4-20字节，数字，字母，下划线</p>
									</dd>
									<dd class="ass_card">
										<span>身份证： <input type="text"  value="${user.idcard}" name="idcard"/>
							</span>
									</dd>


									<!--        <dd class="comp_inf">
                            <span>资料完整度：</span>
                            <span class="scale_po"><b data-bind="style: {width: $parent.basicInformation_completeRate() +'%'}"></b></span>
                            <div class="if_tips"><b>ko text:$parent.basicInformation_completeRate()-->
									<!--/ko%</b>
                            	ko if:$parent.basicInformation_completeRate()!=100,去完善个人偏好吧~/ko
                            	ko if:$parent.basicInformation_completeRate()==100  您已经全部填完:)/ko
                            </div>
                        </dd> -->


								</dl>
							</div>

							<div class="mod_user_inf_mc">
								<dl>
									<dt>基本信息</dt>
									<dd>
										<ul>
											<li><span class="pr20">性别</span> <span class="pr20">
													<c:if test="${user.sex==1}">
														<input type="radio" id="sex" value="1" name="sex"
															checked="checked" /> 男&nbsp;&nbsp;&nbsp; 
                            <input type="radio" id="sex1" value="2"	name="sex"  id="sex"/> 女 
                            </c:if>
											</span> <span class="pr20"> <c:if test="${user.sex==2}">
														<input type="radio" id="sex" value="1" name="sex" /> 男&nbsp;&nbsp;&nbsp; 
                            <input type="radio" id="sex1" value="2"
															name="sex" checked="checked" /> 女 
                            </c:if>
											</span></li>
											<li><span class="pr20">邮箱</span> <span class="pr20"
												data-bind="visible:!mailEditing(),text:getStarMail,click:maidEdit">
											</span> <span> <input type="text" name="email"
													class="input_info"
													data-bind="visible:mailEditing,hasFocus:mailEditing,value:mail"
													value="${user.email}" style="width: 150px" id="email"></span></li>
											<br />
											<li><span class="pr20">电话</span> <span class="pr20"
												data-bind="visible:!mailEditing(),text:getStarMail,click:maidEdit">
											</span> <span> <input type="text" name="phone"
													class="input_info"
													data-bind="visible:mailEditing,hasFocus:mailEditing,value:mail"
													value="${user.phone}" style="width: 150px" id="phone"></span></li>
											<br />
											<li><span class="promotion_ipt"><input
													type="checkbox" checked="checked" id="recPromotionMsg"
													data-bind="checked:recPromotionMsgChecked" name=""
													class="w20 mr5" value="0">同意接受艺龙发送的短信促销信息</span></li>
											<li><span class="promotion_ipt"><input
													type="checkbox" checked="checked" id="recPromotionEmail"
													data-bind="checked:recPromotionEmailChecked" name=""
													class="w20 mr5" value="0">同意接受艺龙发送的邮件促销信息</span></li>
											<br />
											<li><span class="pr20">所在地址</span> <span class="pr20">
													<!--ko text:mobile--> <!--/ko--> <input type="text"
													name="address" class="input_info"
													data-bind="visible:mailEditing,hasFocus:mailEditing,value:mail"
													value="${user.address}" style="width: 150px" id="address">
											</span></li>
											<br />
											<li><span class="pr20">出生日期</span> <span class="pr20">
													<!--ko text:mobile--> <!--/ko--> <input type="hidden"
													name="id" value="${user.id}" /> <input type="text"
													name="birthday" class="input_info"
													data-bind="visible:mailEditing,hasFocus:mailEditing,value:mail"
													value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" />" style="width: 150px" id="address"/>
											</span></li>


											<br />
											<li class="clearfix">
												<div class="sub_btn">
													<button type="submit"
														style="background-color: blue; color: white;">保存修改</button>

												</div>
											</li>

										</ul>
									</dd>
								</dl>
							</div>

							</dd>
							</dl>
						</div>
						<!--用户资料修改 end-->
					</div>
			</div>


			<!-- 地址 -->
			<div data-bind="if:addressTagKeepShow">
				<div style="display: block;"
					data-bind="visible:tagToBeShowed()=='address',with:address">

					<!--每日信息开始  -->
					<div class="my_usedcontact_wrap my_usedadd_wrap mt20"
						style="padding: 0 20px 20px 20px;">
						<div class="add_new clx">
							<div class="search_name right">
								<p>填写常用地址，帮您快速完成预订</p>
							</div>
							<a href="" data-bind="click:showNewAddressBoxClick"
								class="add_new_btn left"
								style="border-radius: 3px; background: #37d; padding: 0 15px; font: 12px/30px Microsoft Yahei; color: #fff; height: 30px;"><b>
									+ </b>添加新地址</a>
						</div>

						<div class="usedcontact_list">

							<div
								data-bind="slideVisible:showNewAddressBox,template:{name:'addressInfo_editor',data:newAddress}"></div>

							<!-- ko foreach: {data:addressList,afterAdd:addFadeIn,beforeRemove:removeFadeOut,beforeMove:moveAnimate} -->
							<div name="div1"
								data-bind="fadeVisible:!editing(),with:addressForDisplay">
								<div name="div2"
									data-bind="template:{name:'addressInfo_display'}"></div>
							</div>
							<div name="div3"
								data-bind="fadeVisible:editing(),with:addressForEdit"
								style="display: none;">
								<div name="div4"
									data-bind="template:{name:'addressInfo_editor'}"></div>
							</div>
							<!-- /ko -->


						</div>
					</div>
				</div>
			</div>

			<!-- 旅客信息 -->
			<div data-bind="if:travelerInfoTagKeepShow">
				<div style="display: block;" id="travellerInfo"
					data-bind="visible:tagToBeShowed()=='travellerInfo',with:tourist">

					<!--每日信息开始  -->
					<div class="my_usedcontact_wrap mt20">
						<div class="add_new clx">

							<a href="" data-bind="click:showNewTouristBoxClick"
								class="add_new_btn left"
								style="border-radius: 3px; background: #37d; padding: 0 15px; font: 12px/30px Microsoft Yahei; color: #fff; height: 30px;"><b>
									+ </b>添加新旅客</a>
						</div>



						<div class="usedcontact_list">

							<div
								data-bind="slideVisible:showNewTouristBox,template:{name:'touristInfo_editor',data:newTourist}"></div>

							<div id="travelerPage1"
								style="padding: 20px 20px 0 20px; text-align: right;"></div>

							<!--ko foreach:{data:touristList,afterAdd:addFadeIn,beforeRemove:removeFadeOut,beforeMove:moveAnimate}-->
							<div name="div1"
								data-bind="fadeVisible:!editing(),with:touristForDisplay">
								<div name="div2"
									data-bind="template:{name:'touristInfo_display'}"></div>
							</div>
							<div name="div3" data-bind="if:keepEditorShow">
								<div data-bind="fadeVisible:editing(),with:touristForEdit">
									<div name="div4"
										data-bind="template:{name:'touristInfo_editor'}"></div>
								</div>
							</div>
							<!--/ko-->

							<div id="travelerPage2" style="padding: 20px; text-align: right;"></div>

						</div>


					</div>
				</div>
			</div>
			</form>
		</div>

	</div>


	<!-- tourcard -->
	<script type="text/html" id="tourcard">

    </script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/userlist/jquery1.8.3.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/userlist/knockoutjs3.2.0.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/userlist/require2.1.16.min.js"
		data-main="${pageContext.request.contextPath }/statics/js/userlist//minmain.js"></script>
	</div>
	<div id="m_contentend" style="z-index: 200;"></div>
	<script type="text/javascript">
		var tjObj_rt2 = new Date();
	</script>
	<div id="m_adsContainer" style="display: none"></div>

	<script type="text/javascript">
		var PersonalCenterController = {
			urlVersion : "201401010800",
			jsPath : "..\/..\/..\/passport\/js\/",
			basePath : "",
			curDate : "2019-05-15"
		};
		var pageController = PersonalCenterController;
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
				<dt>艺龙官方小程序</dt>
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
		href="${pageContext.request.contextPath }/statics/css/userlist/styles.css?20181218">
		<!-- ===================== footer end ===================== -->


		<!-- 可信网站LOGO安装开始 -->
		<script type="text/JavaScript">
			function CNNIC_change(eleId) {
				var str = document.getElementById(eleId).href;
				var str1 = str.substring(0, (str.length - 6));
				str1 = [ str1, CNNIC_RndNum(6) ].join('');
				document.getElementById(eleId).href = str1;
			}
			function CNNIC_RndNum(k) {
				var rnd = [ "" ];
				for (var i = k; i != 0; i--) {
					rnd.push(Math.floor(Math.random() * 10));
				}
				return rnd.join('');
			}
		</script>

		<div
			style='position: absolute; top: 0px; left: 0px; z-index: 100; height: 1px; width: 1px; overflow: hidden; visibility: hidden; display: none'>

			<script type="text/javascript">
				;
			</script>

			<script type="text/javascript"
				src="${pageContext.request.contextPath }/statics/js/userlist/s_code.js?201401010800"></script>
			<script language="JavaScript">
				var s_code = s.t();
				if (s_code)
					document.write(s_code);
			</script>
			<noscript>
				<img src="http://elongcom.122.2O7.net/b/ss/elongcom/1/H.1--NS/0"
					height="1" width="1" border="0" alt="" />
			</noscript>
			<script type="text/javascript"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath }/statics/js/userlist/jquery1.8.3.min.js"></script>
			<script type="text/javascript"
				src="${pageContext.request.contextPath }/statics/js/userlist/base64.js"></script>

		</div>
		<!--                          -->
</body>
</html>