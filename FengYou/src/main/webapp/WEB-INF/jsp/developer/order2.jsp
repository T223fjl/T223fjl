<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>国内酒店预订_价格查询_国际航班查询订购服务-elong.com 风游旅行网</title>
<link rel="icon"
	href="http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<meta name="keywords" content="国内酒店, 国内酒店查询,国内酒店预订" />
<meta name="description"
	content="国内酒店预订:风游旅行网为您提供国内酒店查询、查询以及国际航班预订等服务,在风游旅行网您可以享受到最低折扣的特价机票,高品质的预订服务，为您查询、选择、预订国内酒店提供最方便和快捷的服务！" />

<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>

<link rel="stylesheet" rev="stylesheet"
	href='${pageContext.request.contextPath }/statics/css/order/new2015.min.css'
	type="text/css" media="all" />
		<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath }/statics/css/order/order_edit_2016.css' />
<link href="${pageContext.request.contextPath }/statics/css/bootstrap.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath }/statics/js/userlist/jquery-1.12.4.js"></script>
		<script src="${pageContext.request.contextPath }/statics/js/userlist/bootstrap.js"></script>

</head>

<body>
	<div id="header" class="header">
		<div class="w1000 clearfix">
			<div class="right login_ewrap">
				<a> 欢迎您, </a> | <a href="http://my.elong.com/logout_cn.html">退出</a>
			</div>
			<h1 class="logo">
				<a title="风游旅行网" href="http://www.elong.com">风游旅行网</a>
			</h1>

		</div>
		<div class="w1000">
			<ul class="process clearfix">
				<li class="fin"><span></span> <b><s></s>订单填写</b></li>
				<li class="fin"><span></span> <b><s></s>在线支付</b></li>
				<li class="w-311"><span></span> <b><s></s>订单完成</b></li>
			</ul>
		</div>
	</div>
	<div class="content_wrap">
		<div class="w1000 clearfix">
			<div style="background-color: #F6FAFC; height: 150px;">
				<div class="ord_info" >
					<div class="ord_info_l" style="margin: 15px;padding-top: 10px;">
						<div class="ord_title" style="font-size: 20px; font-family:"宋体";">
							${hotel.hotelName }<span class="ord_num"
								style="font-size: 12px; color: #C3C3C3; margin-left: 5px;">订单号：${order.orderNo }</span>
						</div>
						<div class="ord_text" style="padding-top: 10px;">
							${house.houseType } <span style="margin-left: 10px;">|</span><span
								style="margin-left: 10px;">${day }晚</span><span
								style="margin-left: 10px;">|</span><span
								style="margin-left: 10px;">${order.houseCount }间（<c:if
										test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if> <c:if
										test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if> <c:if
										test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if>）</span>
						</div>
						<div style="padding-top: 10px;">
							<dl>
								<dt  style="font-size: 18px;">取消说明</dt>
								<dl>
									<dd>
										<i></i>取消规则： 订单一经确认成功，不可取消或变更；如未能如约入住，您的预付房费将不予退还。
									</dd>
								</dl>
								<dd>
									<i></i>如预订未成功，全额房费将原路退还。
								</dd>
								<dd></dd>
							</dl>
						</div>
					</div>
					<div class="ord_info_r" style="display: none">
						<p class="code">
							<img
								src="https://secure.elong.com/epay/cn/GetAppPay/559640308.html"
								width="74" height="74">
						</p>
						<p>手机扫码支付</p>
					</div>
					<div class="ord_info_m" style="float: right;position: relative;top:-70px;right: 150px;">
						<p class="" style="font-size: 20px;">
							支付金额：<span class="ord_price" style="color: #FD964A"><dfn class="symbol" style="color: #000000">¥</dfn>${order.payAmount } </span>
						</p>
						<div id="isOnTimeProduct" class="ss_tips_a" style="width:250px;left: -2px;top: 35px;">请在<span class="c49f">30分钟内</span>完成支付，过期自动取消。</div>						
					</div>
				</div>
			</div>
			<div style="border: 1px solid black;height: 300px;">
				<div class="container-fluid" style="border: 1px solid #ddd;">
						<ul class="nav nav-tabs" id="myTab" style="font-size: 20px;">
							<li class="active"><a href="#home" data-toggle="tab">支付宝</a></li>
							<li><a href="#a" data-toggle="tab">微信</a></li>
							<li><a href="#b" data-toggle="tab">银行卡</a></li>
							<li><a href="#c" data-toggle="tab">网银支付</a></li>
						</ul>
			
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active now" id="home">
								<div class="" style="margin-top: 10px;">
									<img src="../img/lesson4/two/1.jpg"/>
									<span>支付宝</span>
									<a onclick="pay()">下一步</a>
								</div>
							</div>
							<div class="tab-pane" id="a">
								<div class="col-md-12" style="margin-top: 10px;">
									<img src="../img/lesson4/two/2.jpg"/>
									<span>微信</span>
									<a>下一步</a>
								</div>
							</div>
							<div class="tab-pane" id="b">
								<div class="col-md-12" style="margin-top: 10px;">
									<img src="../img/lesson4/two/3.jpg"/>
									<span>银行卡</span>
									<a>下一步</a>
								</div>
							</div>
							<div class="tab-pane" id="c">
								<div class="col-md-12" style="margin-top: 10px;">
									<img src="../img/lesson4/two/4.jpg"/>
									<span>网银支付</span>
									<a>下一步</a>
								</div>
							</div>
						</div>
					</div>
					<form id="pay" style="display: none;" action="pay"  method="post" target="_blank">
						<input id="WIDout_trade_no" name="WIDout_trade_no" value="${order.orderNo }" />
						<input id="WIDsubject" name="WIDsubject"  value="${house.houseType }"/>
						<input id="WIDtotal_amount" name="WIDtotal_amount" value="${order.payAmount }" />
						<input id="WIDbody" name="WIDbody" />
					</form>
					<script type="text/javascript">
						$('#myTab a').click(function(e) {
							e.preventDefault();
							$(this).tab('show');
						})
						
						function pay() {
							//alert($("#WIDout_trade_no").val())
							$("#pay").submit();
						}
					</script>
					
	
			</div>
		</div>

	</div>
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
				<dt>同程风游小程序</dt>
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
				style="background-image: url(http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/img/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
				京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
			<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elongstatic.com/hotel/eltk/eltk.html">《风游旅行网服务条款》</a>
			<i class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a
				rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
		</div>
		<div class="footer_safe">
			<a class="cm_icon qua-1"
				href="https://trustsealinfo.websecurity.norton.com/splash?form_file=fdf/splash.fdf&dn=*.elong.com&lang=zh_CN"
				rel="nofollow" target="_blank" alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a>
			<a title="风游网通过PCI认证" alt="风游网通过PCI认证" target="_blank" rel="nofollow"
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
		href="${pageContext.request.contextPath }/statics/css/order/styles.css">
	<!-- ===================== footer end ===================== -->
	<!-- 可信网站LOGO安装开始 -->

</body>

</html>