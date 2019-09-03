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
		<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/statics/js/userlist/savior.js"></script>
		<link rel="stylesheet" type="text/css"
			href='${pageContext.request.contextPath }/statics/css/userlist/MyElong_common_2014.css'>
			<link rel="stylesheet" type="text/css"
				href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2014_information.css'>
				<link
					href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
					rel="stylesheet" />
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/statics/js/userlist/jquery-1.8.3.js"></script>
				<script type="text/javascript">
								$(function() {
									$("#input1ID").click(function() {
										
										$("#idcard1").css("display","none"); 
										$("#idcard2").css("display","block");
										
										$("#email1").css("display","none"); 
										$("#email2").css("display","block"); 
										
										$("#phone1").css("display","none"); 
										$("#phone2").css("display","block"); 
										
										$("#address1").css("display","none"); 
										$("#address2").css("display","block"); 
										
										$("#birthday1").css("display","none"); 
										$("#birthday2").css("display","block"); 
										
										$(".checkbox").css("display","block");
										$(".checkbox").css("display","block");
										
										$(this).hide();
										$("#update").show();
										
								});
								});
				
							      function del(id){
							    	  if(confirm("确认删除吗")){
							    	 	 $.post("delete","id="+id,
								    	  function(date){
								    		  alert(date);
								    		  if(date=="yes"){
								    			  $("#"+id+"").remove();
								    		  }else{
								    			  alert("删除失败");
								    		  }
								    	  });
							    	  }
							      }
		</script>

				<style type="">
.input-text {
	border: 1px solid #a1a1a1;
	border-radius: 2px;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
	-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
	padding: 2px 4px;
	/*   font-size: 14px; */
}
/* 		th{ */
/* 		width: 10%; */
/* 		} */
</style>
</head>
<body>
	<!-- ===================== headerstart ===================== -->
	<div id="header" class="header" v='20190429' b='myelong' g='1' lg='t'>
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
							<li class="has-child"><a href="UserInfo?id=${loginUser.id}">会员中心</a></li>
						</c:if>
						<c:if test="${loginUser.name==null }">
							<li class="has-child"><a
								href="http://localhost:8080/FengYou/login.jsp" target="_blank">请登录</a></li>
							<li class="has-child"><a href="" target="_blank">快速注册</a></li>
							<li class="has-child"><a
								href="http://localhost:8080/FengYou/login.jsp">会员中心</a></li>
						</c:if>
						<li class="has-child"><a href="" target="_blank">帮助中心</a></li>
					</ul>
					</nav>
				</div>
			</div>
			<!-- 导航条结束 --> </header>
			<!--导航-->
			<div class="nav_box" style="margin-top: 0px;">
				<div id="nav" class="response_wrap3"
					style="width: 1200px; margin-left: 170px;">
					<ul class="link" id="channelMenu">
						<li sid="28632"><a href="toIndex" title="风游旅行网" id="nav_home">首页</a></li>
						<li sid="28639"><a title="酒店预订"
							href="http://hotel.elong.com/" id="nav_hotels">国内酒店</a></li>
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
							<li sid="28640"><a href="http://bus.elong.com/ly"
								title="汽车票">汽车票</a></li>
							<li><a href="http://trip.elong.com/" title="旅游指南">旅游指南</a></li>
							<li><a href="https://tmc.ly.com/" title="商旅" target='_blank'>商旅</a></li>
					</ul>
					<div class="account" method="dvAccount"
						style="margin-right: 190px;">
						<div class="log_on" id="user_display_div">
							<span> <a id="n_user_name"
								href="http://my.elong.com/index_cn.html?rnd=20190515101336"
								title="">欢迎您：${loginUser.name}</a>
							</span>
						</div>
					</div>
				</div>
			</div>
	</div>
	<div
		style="height:100px;background-image: url('${pageContext.request.contextPath }/statics/images/userlist/user_bg.png');">
		<div style="width: 320px; margin-left: 200px; padding-top: 8px;">
			<div style="width: 90px; float: left;">
				<img
					src="${pageContext.request.contextPath }/statics/images/userlist/userImage.jpg"
					width="80px;" style="padding-left: 3.5px" />
			</div>
			<div style="width: 200px; float: right; height: 80px; color: #fff">
				<p style="font-size: 22px; margin-top: 15px;">
					<strong>晚上好，尊敬的会员</strong>
				</p>
				<p style="margin-top: 10px;">
					手机：<span id="hfPhone"></span>
				</p>
			</div>
			<input type="hidden" value="${user.phone}" id="phone" />
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			var phone = $("#phone").val();
			var mphone = phone.substr(3, 4);
			var lphone = phone.replace(mphone, "****");
			$("#phone").attr("value", phone);
			$("#hfPhone").text(lphone);
		})
	</script>

	<div class="content" style="margin-top: 0px;">
		<!-- ===================== header start ===================== -->
		<ul class="myElongNav">
			<li class="title"><a href="#"><span class="icon i05"></span>我的风游</a>
			</li>
			<li class="title"><a><span class="icon i01"></span>订单管理</a></li>
			<li><a href="toOrderDetails?userId=${user.id}">酒店订单</a></li>
			<li><a href="#">国际&#183;港澳台订单</a></li>
			<li><a href="#">出境wifi订单</a></li>
			<li class="title"><a><span class="icon i06"></span>我的记录</a></li>
			<li><a href="#">酒店收藏</a></li>
			<li class="title"><a><span class="icon i02"></span>账户管理</a></li>
			<li><a href="#">现金账户</a></li>
			<li><a href="#">里程</a></li>
			<li><a href="">国际&#183;港澳台优惠券</a></li>
			<li><a href="#">礼品卡/红包充值</a></li>
			<li class="title"><a><span class="icon i03"></span>个人设置</a></li>
			<li><a href="#">个人资料</a></li>
			<li><a href="UserPwd?id=${user.id}">密码修改</a></li>
		</ul>
		<!-- ===================== header end ===================== -->
		<link
			href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
			rel="stylesheet" />
		<script
			src="${pageContext.request.contextPath }/statics/js/userlist/jquery-1.12.4.js"></script>
		<script
			src="${pageContext.request.contextPath }/statics/js/userlist/bootstrap.js"></script>
		<div class="rightMain">
			<form action="DevModifyUser" method="post" enctype="multipart/form-data">
				<div class="container-fluid" style="margin-top: 20px;">
					<ul class="nav nav-tabs" id="myTab">
						<li class="active"><a href="#home" data-toggle="tab">基本资料</a></li>
						<li><a href="#b" data-toggle="tab">常用旅客信息</a></li>
						<div class="accountOff" id="accountOff"
							style="margin-left: 720px; margin-top: 10px; font-size: 14px;">
							<a href="logout">账户注销</a>
						</div>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active now" id="home">
							<!-- 基本资料 -->
							<div>
								<div style="display: block;" id="basicInformation">
									<!--用户资料修改 start-->
									<div class="mod_user_inf_mt clx">
										<dl>
											<dd class="avatar_name">
												<img
													src="${pageContext.request.contextPath }/statics/images/userlist/userImage.jpg"
													alt="" width="40%" height="40%" />
												<c:if test="${user.status==0}">
													<a href="void;"
														style="margin-right: 20px; margin-left: 30px">超级管理员</a>
												</c:if>
												<c:if test="${user.status==1}">
													<a href="void;">管理员</a>
												</c:if>

												<c:if test="${user.status==2 }">
													<a href="void;">普通会员</a>
												</c:if>
												<p style="display: none;">用户名4-20字节，数字，字母，下划线</p>
											</dd>
											<dd class="ass_card">
												<span id="idcard1">身份证：${user.idcard} </span> <span
													id="idcard2" style="display: none;">身份证： <input
													type="text" value="${user.idcard}" name="idcard"
													id="inputDis" class="input-text" />
												</span>
											</dd>
										</dl>
									</div>
									<div class="mod_user_inf_mc">
										<dl>
											<dt>基本信息</dt>
											<dd>
												<ul>
													<li style="padding-left: 23px;"><span>性别：</span> <span>
															<c:if test="${user.sex==1}">
																<input type="radio" id="sex" value="1" name="sex"
																	checked="checked" /> 男&nbsp;&nbsp;&nbsp; 
	                            							    <input type="radio" id="sex1"
																	value="2" name="sex" id="sex" /> 女 
	                            							</c:if>
													</span> <span> <c:if test="${user.sex==2}">
																<input type="radio" id="sex" value="1" name="sex" /> 男&nbsp;&nbsp;&nbsp; 
	                            								<input type="radio" id="sex1"
																	value="2" name="sex" checked="checked" /> 女 
	                         								</c:if>
													</span></li>

													<li><span id="email1" style="padding-left: 23px;">邮箱：${user.email}
													</span> <span id="email2"
														style="display: none; padding-left: 23px;">邮箱： <input
															type="text" name="email" class="input_info"
															value="${user.email}" style="width: 150px" id="email" />
													</span></li>

													<li><span id="phone1" style="padding-left: 23px;">电话：${user.phone}</span>
														<span id="phone2"
														style="display: none; padding-left: 23px;">电话： <input
															type="text" name="phone" class="input_info"
															value="${user.phone}" style="width: 150px" id="phonee" />
													</span></li>
													<li><span id="address1">所在地址：${user.address} </span> <span
														id="address2" style="display: none;">所在地址： <input
															type="text" name="address" class="input_info"
															value="${user.address}" style="width: 150px" id="address" />
													</span></li>

													<li><span id="birthday1">出生日期：<fmt:formatDate
																value="${user.birthday}" pattern="yyyy-MM-dd" />
													</span> <input type="hidden" name="id" value="${user.id}" /> <span
														id="birthday2" style="display: none;">出生日期： <input
															type="text" name="birthday" class="input_info"
															value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" />"
															style="width: 150px" id="birthday" />
													</span></li>

													<li class="checkbox"
														style="display: none; padding-left: 23px;"><span
														class="promotion_ipt"> <input type="checkbox"
															checked="checked" id="recPromotionMsg" class="w20 mr5"
															value="0" />同意接受风游发送的短信促销信息
													</span></li>

													<li class="checkbox"
														style="display: none; padding-left: 23px;"><span
														class="promotion_ipt"> <input type="checkbox"
															checked="checked" id="recPromotionEmail" class="w20 mr5"
															value="0" />同意接受风游发送的邮件促销信
													</span></li>

													<li class="clearfix">
														<div class="sub_btn">
															<input type="button"
																style="background-color: blue; color: white;"
																id="input1ID" value="编辑" class="btn" /> <input
																type="submit" class="btn" value="保存修改"
																style="display: none; color: #FFFFFF; background: blue;"
																id="update" />
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
						<div class="tab-pane" id="b">
							<!-- 旅客信息 -->
							<div style="width: 800px; margin-top: 20px;">
								<table>
									<tr style="font-size: 18px; background-color: #F3F9FF">
										<th
											style="width: 10%; text-align: center; border: 1px solid #ddd; padding: 5px;">姓名</th>
										<th
											style="width: 10%; text-align: center; border: 1px solid #ddd;">电话</th>
										<th
											style="width: 10%; text-align: center; border: 1px solid #ddd;">证件类型</th>
										<th
											style="width: 10%; text-align: center; border: 1px solid #ddd;">证件号码</th>
										<th
											style="width: 10%; text-align: center; border: 1px solid #ddd;">操作</th>
									</tr>

									<c:forEach var="trip" items="${trip}" varStatus="status">
										<tr
											<c:if test="${status.index%2==1}">style="background-color: #F3F9FF;"</c:if>
											id="${trip.id}" align="center">
											<td
												style="border: 1px solid #ddd; padding: 5px; font-size: 14px;">${trip.linkUserName}</td>
											<td style="border: 1px solid #ddd;">${trip.linkPhone}</td>
											<c:if test="${trip.linkIdCardType==0}">
												<td style="border: 1px solid #ddd;">身份证</td>
											</c:if>
											<c:if test="${trip.linkIdCardType==1}">
												<td style="border: 1px solid #ddd;">护照</td>
											</c:if>
											<c:if test="${trip.linkIdCardType==2 }">
												<td style="border: 1px solid #ddd;">学生证</td>
											</c:if>
											<c:if test="${trip.linkIdCardType==3 }">
												<td style="border: 1px solid #ddd;">军人证</td>
											</c:if>
											<c:if test="${trip.linkIdCardType==4 }">
												<td style="border: 1px solid #ddd;">驾驶证</td>
											</c:if>
											<c:if test="${trip.linkIdCardType==5 }">
												<td style="border: 1px solid #ddd;">旅行证</td>
											</c:if>
											<td style="border: 1px solid #ddd;">${trip.linkIdCard}</td>
											<td style="border: 1px solid #ddd;"><a
												style="text-decoration: none;" onclick="del(${trip.id})">删除</a></td>
										</tr>
									</c:forEach>

								</table>
							</div>
						</div>
					</div>

				</div>
			</form>
			<script type="text/javascript">
				$('#myTab a').click(function(e) {
					e.preventDefault();
					$(this).tab('show');
				})
			</script>
		</div>
	</div>
	<!-- ===================== footer  start ===================== -->
	<div class="footer" r="3">
		<div class="footer_info">
			<dl>
				<dt>加盟合作</dt>
				<dd>
					<a href="#" title="酒店加盟" rel="nofollow">酒店加盟</a>
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
					style="background-image: url(http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/img/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
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
		href="${pageContext.request.contextPath }/statics/css/userlist/styles.css">
		<!-- ===================== footer end ===================== -->
</body>
</html>