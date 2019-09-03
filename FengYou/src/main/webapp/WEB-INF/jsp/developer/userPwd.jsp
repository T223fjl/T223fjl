<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>修改密码</title>
<link rel="icon"
	href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<script type="text/javascript">
			var tjObj_rt = new Date();
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/userlist/savior.js"></script>
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath }/statics/css/userlist/MyElong_common_2014.css'>
	<link rel="stylesheet" type="text/css" href='${pageContext.request.contextPath }/statics/css/userlist/MyElong2014_information.css'>
	<link href="${pageContext.request.contextPath }/statics/css/bootstrap.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/userlist/jquery-1.8.3.js"></script>

<style type="text/css">
.input-text {
    border: 1px solid #a1a1a1;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    padding: 6px 8px;
    font-size: 14px;
}
.input-button {
    border: 1px solid #0284E2;
    border-radius: 2px;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
    padding: 6px 10px;
    font-size: 14px;
    color: #ffffff;
    text-align: center;
    min-width: 80px;
    background-color: #0284E2;
    cursor: pointer;
}
.input-button:hover {
    background-color: #0F4AC2;
}
.input-button:active {
    background-color: #0F4AC2;
}
.forms-list {
    overflow: hidden;
    margin-bottom: 20px;
  
}
.forms-list label {
    width: 100px;
    display: block;
    text-align: right;
    float: left;
    height: 32px;
    line-height: 32px;
    font-size: 14px;
    color: #787878;
}
.forms-input {
    float: left;
}
.forms-additions {
    float: left;
    margin-left: 10px;
    overflow: hidden;
}
.forgot-login {
    float: right;
    width: 250px;
}
.forgot-login-div {
    margin-bottom: 20px;
    text-align: center;
    font-size: 14px;
}
.sign-wrapper {
    position: absolute;
    top: 255px;
    left: 50%;
    width: 800px;
    padding: 20px 30px;
    margin-left: -320px;
/*      background-color: rgba(0,0,0,0.1); */

   background-color: #ffffff;
  opacity:0.8;  
}
.sign-wrapper h3 {
    font-size: 16px;
    margin-bottom: 10px;
}
 .sign-forms { 
padding-left: 50px;
} 
.sign-forms .forms-list {
    margin-bottom: 15px;
}
.sign-forms .input-text {
    width: 200px;
}
.sign-forms .input-button {
    width: 218px;
}
.sign-forms .recode {
    width: 60px;
}
.recode-img {
    float: left;
    width: 80px;
    height: 30px;
    margin-right: 10px;
}
.forms-error {
    display: block;
    background-image: url(statics/images/register_cn/sprite.png);
    background-repeat: no-repeat;
    background-position: -348px -737px;
    font-size: 14px;
    color: #d35a3f;
    padding-left: 25px;
    line-height: 30px;
    float: left;
}
.forms-ok {
    display: block;
    width: 25px;
    height: 30px;
    background-image: url(statics/images/register_cn/sprite.png);
    background-repeat: no-repeat;
    background-position: -348px -699px;
}
</style>

</head>
<body>
	<!-- ===================== header 2019-04-29 start ===================== -->
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
				<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/userlist/styles.css">
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
						<!--弹出-->
						<div class="drop_box_log pt" style="display: none"
							id="div_user_center">
							<ul class='clx'>
								<li class='icon_d1'><b></b><a
									href="http://my.elong.com/hotel/MyHotelOrderList_cn.html?rnd=20190515101336"
									rel="nofollow">酒店订单</a></li>
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
		</div>
	
	<div style="height:100px;background-image: url('${pageContext.request.contextPath }/statics/images/userlist/user_bg.png');">
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

	<div class="content" style="margin-top: 20px;">
		<ul class="myElongNav">
			<li class="title"><a href="#"><span
					class="icon i05"></span>我的艺龙</a></li>
			<li class="title"><a><span class="icon i01"></span>订单管理</a></li>
			<li><a href="#">酒店订单</a></li>
			<li><a href="#">国际&#183;港澳台订单</a></li>
			<li><a href="#">出境wifi订单</a></li>
			<li><a href="#">机票订单</a></li>
			<li><a href="#">礼品卡订单</a></li>
			<li><a href="#">火车票订单</a></li>
			<li><a href="#">汽车票订单</a></li>
			<li class="title"><a><span class="icon i06"></span>我的记录</a></li>
			<li><a href="#">酒店点评</a></li>
			<li><a href="#">酒店收藏</a></li>
			<li class="title"><a><span class="icon i02"></span>账户管理</a></li>
			<li><a href="#">现金账户</a></li>
			<li><a href="#">里程</a></li>
			<li><a href="#">国际&#183;港澳台优惠券</a></li>
			<li><a href="#">礼品卡/红包充值</a></li>
			<li class="title"><a><span class="icon i03"></span>个人设置</a></li>
			<li><a href="UserInfo?id=${user.id}">个人资料</a></li>
			<li><a href="#">密码修改</a></li>
		</ul>
		<!-- ===================== header end ===================== -->
		<div class="rightMain" style="width: 842px; margin: 0 auto;">
		
			<div class="container-fluid" style="margin-top: 20px;">
				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a href="#home" data-toggle="tab">密码修改</a></li>
					<div class="accountOff" id="accountOff" style="margin-left: 720px; margin-top: 10px; font-size: 14px;">
						<a href="logout">账户注销</a>
					</div>
				</ul>
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane active now" id="home">
						<div class="sign-wrapper clearfix">
							<form>
								<div class="sign-forms">
								<!-- 手机号码 -->
									<div class="forms-list">
										<label><span class="important">*</span> 原密码：</label>
										<input type="hidden" name="id" value="${user.pwd}" id="passwordold"/>
										<input type="hidden" name="id" value="${user.id}" id="id"/>
										<div class="forms-input">
											<input maxlength="15"
												data-bind="value: oldpassword,valueUpdate: 'afterkeydown'"
												type="password" class="input-text" id="oldpassword" />
										</div>
										<div class="forms-additions">
											<span
												data-bind="visible: oldpassword.isModified() && oldpassword.isValid()"
												class="forms-ok"></span> <span class="forms-error"
												data-bind="validationMessage: oldpassword"> </span>
										</div>
									</div>
									<!-- 密码-->
									<div class="forms-list">
										<label><span class="important">*</span>新密码：</label>
										<div class="forms-input">
											<input maxlength="15"
												data-bind="value: password,valueUpdate: 'afterkeydown'"
												type="password" class="input-text" id="pwd1" />
										</div>
										<div class="forms-additions">
											<span
												data-bind="visible: password.isModified() && password.isValid()"
												class="forms-ok" style="display: none;"></span> <span
												class="forms-error" data-bind="validationMessage: password"></span>
										</div>
									</div>
								<!-- 确认密码 -->
									<div class="forms-list">
										<label><span class="important">*</span> 确认密码：</label>
										<div class="forms-input">
											<input maxlength="15"
												data-bind="value: password2,valueUpdate: 'afterkeydown'"
												type="password" class="input-text" id="pwd2" />
										</div>
										<div class="forms-additions">
											<span
												data-bind="visible: password2.isModified() && password2.isValid()"
												class="forms-ok" style="display: none;"></span> <span
												class="forms-error" data-bind="validationMessage: password2"></span>
										</div>
									</div>
									<!-- 验证码-->
									<div class="forms-list">
										<label><span class="important">*</span>输入验证码：</label>
										<div class="forms-input">
										<input class="input-text" style="width: 60px;" id="inputCode" type="text" method="CheckValidateCode_Dynamic" language="cn" data-bind="value: ValidateCode,valueUpdate: 'afterkeydown'">
										</div>
										<div class="forms-additions" style="padding-left: 10px;padding-right: 10px;margin-top: 3px;">
											<span id="validateCode" onclick="createCode(4)" style="padding:0px 10px;font-size: 18px;"></span>
										<a href="javascript:void(0)" onclick="createCode(4)">换一张</a> <span
										id="validate_code_tip_info"></span>
										</div>
										<div class="forms-additions" style="margin-left: 20px;">
											<span data-bind="visible: ValidateCode.isModified() && ValidateCode.isValid()"></span> 
											<span class="forms-error"  style="display: none;"  data-bind="validationMessage: ValidateCode"></span>
											<span class="forms-ok" style="display: none;" id="ok" ></span>
											<span class="forms-error"  style="display: none;" id="error" ></span>
							
										</div>
									</div>
								
									<div class="forms-list" >
										<label></label>
										<div class="forms-input">
										<input type="button" data-bind="visible: !inSubmiting(),click: Register"
											class="input-button" id="regBtn" value="注 册"/> <img
											data-bind="visible: inSubmiting" src="images/loading.gif"
											style="display: none;" />
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>	
			</div>			
		</div>
	<script src="${pageContext.request.contextPath }/statics/js/register/knockout-2.3.0.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/register/knockout.validation.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/register/common.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/register/ko.common.min.js"></script>
	<script src="${pageContext.request.contextPath }/statics/js/register/account.min.js"></script>
	<script>
	var passwordold=$('#passwordold').val();
	var id=$('#id').val();
		var ViewModel = function() {       
			var inputCode = document.getElementById("inputCode").value;
			var self = this;
			self.oldpassword = ko.observable().extend({
				required : true,			
				equal:{
	                params:passwordold,
	                message:"和原密码不一致"
	            }
			}); 
			self.password = ko.observable().extend({
				required : true,
				minLength : 6,
				maxLength : 15
			});
			self.password2 = ko.observable().extend({
				required : true,
				equal:{
	                params:self.password,
	                message:"确认密码和新密码不一致"
	            }
			});
			self.ValidateCode = ko.observable().extend({
				required : true,
				});
			self.agree = ko.observable(true);
			self.initChecker = function() {
				setTimeout(function() {
					$('#agreeChecker').addClass('checked');
				}, 100);
			}
			self.initChecker();
			self.inSubmiting = ko.observable(false);    
			self.Register = function() {
			self.errors = ko.validation.group(self);
			if (!self.isValid()) {
				self.errors.showAllMessages();
				return;
			}
			self.inSubmiting(true);
			var inputCode =document.getElementById("inputCode").value;
				$.post('DevModifyPwd', {
					id:id,
					oldpassword : self.oldpassword(),
					password : self.password(),
					ValidateCode : self.ValidateCode(),
					inputCode:inputCode
				}, function(data) {
					if (data == "success") {
						location="http://localhost:8080/FengYou/login.jsp";
					} else if (data == "failure") {
						tipShow('注册失败！', function() {
						});
						location="http://localhost:8080/FengYou/register.jsp";
					} else if (data == "existence") {
						self.inSubmiting(false);
						tipShow('验证码错误！', function() {
						});
					}
				});
			};
		}
		ko.validation.init({
			decorateElement : true,
			insertMessages : false,
			errorMessageClass : 'forms-error'
		});
		ko.validation.configure();
		ko.applyBindings(new ViewModel());
	</script>
		</div>
	
	<script type="text/javascript">
	//页面加载时，生成随机验证码
    window.onload=function(){
     createCode(4);    
    }
	//生成验证码的方法
    function createCode(length) {
        var code = "";
        var codeLength = parseInt(length); //验证码的长度
        var checkCode = document.getElementById("validateCode");
        ////所有候选组成验证码的字符，当然也可以用中文的
        var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); 
        //循环组成验证码的字符串
        for (var i = 0; i < codeLength; i++)
        {
            //获取随机验证码下标
            var charNum = Math.floor(Math.random() * 62);
            //组合成指定字符验证码
            code += codeChars[charNum];
        }
        if (checkCode)
        {
            //为验证码区域添加样式名
            checkCode.className = "code";
            //将生成验证码赋值到显示区
            checkCode.innerHTML = code;
        }
	}
	</script>
	
</body>
</html>