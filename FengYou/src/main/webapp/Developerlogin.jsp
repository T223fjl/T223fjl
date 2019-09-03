<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>登录</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>登录</title>
<link rel="icon"
	href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/login/el_common_1.css">

<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath }/statics/js/userlist/jquery-1.12.4.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/userlist/bootstrap.js"></script>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
}

img {
	border: 0;
}

a {
	text-decoration: none;
	color: #36c;
}

a:hover {
	color: #f60;
}

.clear {
	clear: both;
	height: 0;
	line-height: 0;
	margin: 0 auto;
	font-size: 1px;
}

.none {
	display: none;
}

.mt20 {
	margin-top: 20px;
	margin-left: 40px;
}

body {
	background-color: #e8eff6;
}

.head, .container, .footer {
	width: 1000px;
	margin: 0 auto;
}

.head {
	margin-top: 20px;
	height: 100px;
	padding: 25px 0;
}

.footer {
	text-align: center;
	padding: 20px 0 20px;
}

.footer p {
	color: #555555;
	font-size: 12px;
	line-height: 30px;
}

.footer p a {
	color: #555555;
	font-size: 12px;
	margin: 0 5px;
}

.footer p a:hover {
	color: #f60;
}

.footer .mobile a span {
	width: 18px;
	height: 22px;
	margin: 0 5px 0 30px;
}

.footer .mobile a.iphone span.icon {
	background-position: 0 -277px;
}

.footer .mobile a.android span.icon {
	background-position: -25px -276px;
}

.footer .mobile a.windows span.icon {
	background-position: -50px -277px;
}

.footer .mobile a.other span.icon {
	background-position: -77px -277px;
}

.footer .mobile a.iphone:hover span.icon {
	background-position: 0 -304px;
}

.footer .mobile a.android:hover span.icon {
	background-position: -25px -303px;
}

.footer .mobile a.windows:hover span.icon {
	background-position: -50px -304px;
}

.footer .mobile a.other:hover span.icon {
	background-position: -77px -304px;
}

.phonenum_wrap {
	height: 28px;
	overflow: visible !important;
}

.phonenum {
	width: 105px;
	height: 28px;
	float: left;
	background: url(static/images/login/midify_tel.png) no-repeat 75px -1px;
	border: 1px solid #ccc;
	margin: 0 8px 0 0;
	line-height: 28px;
	cursor: pointer;
	padding: 0 0 0 5px;
	position: relative;
	overflow: visible;
	font-size: 12px;
	z-index: 11;
}

.phonenum:hover {
	background: url(static/images/login/midify_tel.png) no-repeat 75px -43px;
}

.phonenum ul {
	width: 100%;
	border: 1px solid #ccc;
	position: absolute;
	left: -1px;
	top: 28px;
}

.phonenum ul li {
	height: 28px;
	background-color: #FFF;
	padding: 0 5px;
	margin-bottom: 0;
}

.phonenum ul li:hover {
	background-color: #EAEAEA;
}

.inputbox .phonenum {
	height: 33px;
	line-height: 33px;
	background-position: 75px 0px;
	border-radius: 2px;
}

.inputbox .phonenum:hover {
	background-position: 75px -42px;
}

.inputbox .phonenum ul {
	top: 33px;
	border-radius: 2px;
	overflow: hidden;
}

.inputbox .phonenum ul li {
	line-height: 28px;
}

.submitBtn {
	font-family: Microsoft YaHei, SimHei, Arial, Helvetica, sans-serif;
	display: block;
	border: none;
	background: url(static/images/login/myelong_login.png) no-repeat 0
		-348px;
	width: 200px;
	height: 40px;
	line-height: 40px;
	color: #fff;
	font-size: 18px;
	margin-top: 30px;
	text-align: center;
	cursor: pointer;
}

.submitBtn:hover {
	color: #fff;
	background-position: 0 -388px;
}

.submitBtn span {
	width: 68px;
	margin: 0 auto;
	display: inline-block;
	text-align: left;
}

/*注册成功页*/
.successBox {
	width: 640px;
	margin: 0 auto;
}

.successBox h1 {
	font-size: 24px;
	font-family: Microsoft YaHei, SimHei, Arial, Helvetica, sans-serif;
	padding: 10px 0 0 175px;
	color: #555;
}

.successBox h1.en {
	padding-left: 80px;
}

.successBox h1 span.icon {
	width: 40px;
	height: 40px;
	background-position: -2px -75px;
	margin-right: 10px;
}

.successBox p {
	padding: 0 0 20px 175px;
	font: 18px Microsoft YaHei, SimHei, Arial, Helvetica, sans-serif;
	color: #555;
}

.successBox p span {
	color: #ff6315;
}

.successBox p span a {
	background: #36c;
	border-radius: 3px;
	color: #fff;
	display: inline-block;
	font-family: microsoft yahei;
	line-height: 100%;
	padding: 0.5em 1em;
	text-align: center;
	text-decoration: none;
}

.successBox p .suc {
	width: 98px;
	height: 71px;
	padding: 34px 5px 0 21px;
	display: inline-block;
	font: 14px/22px Simsun;
	font-style: normal;
	background: url(static/images/login/myelong_login.png) no-repeat 0
		-460px;
	*vertical-align: -20px;
}

.successBox p span a:hover {
	background: #148;
}

.successBox p a {
	font-size: 14px;
	margin: 0 10px;
}

.successBox div.mailBox {
	width: 640px;
	height: 80px;
	background-color: #fffadd;
	line-height: 80px;
	text-align: center;
	position: relative;
	color: #555;
	margin: 20px 0 40px 0;
	font-size: 16px;
	font-family: Microsoft YaHei, SimHei, Arial, Helvetica, sans-serif;
}

.successBox div.mailBox span a {
	font-size: 14px;
}

.successBox div.mailBox span.icon {
	width: 80px;
	height: 80px;
	position: absolute;
	left: 0;
	top: 0;
	background-position: 0 -132px;
}

.container .m_pic {
	width: 1000px;
	text-align: center;
	margin-left: -30px;
	margin-bottom: -30px;
}

.successBox .mt100 {
	margin-top: 100px;
}

.successBox p.pn {
	padding: 0 0 20px 155px;
	line-height: 100px;
	margin-bottom: 100px;
}

/*登陆页*/
.loginbox {
	width: 1000px;
	height: 350px;
	margin: 0px auto;
	background-color: #fff;
	position: relative;
	zoom: 1;
}

.regbtn {
	text-align: right;
	width: 1000px;
	margin: -30px auto 10px auto;
}

.regbtn a {
	font-size: 16px;
	font-weight: bolder;
}

.loginbox .pic {
	width: 620px;
	/* 	height: 350px; */
	float: left;
}

.loginbox .pic a img:hover {
	opacity: 0.9;
}

.loginbox .formbox {
	/* 	width:300px; */
	width: 360px;
	height: 322px;
	padding: 24px 45px 0px;
	float: right;
	*height: 325px;
	*padding-top: 20px;
	position: relative;
}

.loginbox .formbox h1 {
	font-size: 18px;
	color: #555;
	font-family: Microsoft YaHei, SimHei, Arial, Helvetica, sans-serif;
	font-weight: normal;
}

.loginbox .formbox .inputbox {
	position: relative;
	width: 100%;
	height: 35px;
}

.loginbox .formbox .en_style {
	white-space: nowrap;
}

.loginbox .formbox .inputbox .icon {
	width: 30px;
	height: 30px;
	margin-left: 6px;
}

.loginbox .formbox .inputbox .input_tip {
	width: 277px;
	padding-left: 6px;
	background-color: #FFEEED;
	border: 1px solid #FFD1CF;
	color: #E61300;
	font-size: 12px;
	line-height: 18px;
	position: absolute;
	top: 35px;
	left: 0;
	z-index: 10;
}

.loginbox .formbox .inputbox .input_tip_yzm {
	width: 277px;
}

.loginbox .formbox .inputbox input {
	box-shadow: inset 0px 4px 9px -5px rgba(0, 0, 0, .2);
	position: absolute;
	z-index: 2;
	width: 237px;
	height: 21px;
	line-height: 21px;
	padding: 6px 15% 6px 3px;
	left: 0;
	top: 0;
	background-color: transparent;
	border: 1px solid #cccccc;
	border-radius: 2px;
	color: #ccc;
	font-size: 14px;
}

.loginbox .formbox .inputbox input.blur {
	color: #999;
}

.loginbox .formbox .inputbox input:focus, .loginbox .formbox .inputbox input.focus
	{
	box-shadow: none;
	color: #555;
}

.loginbox .formbox .login_id {
	margin-top: 20px;
	*z-index: 10;
}

.loginbox .formbox .login_pw {
	margin-top: 10px;
}

.loginbox .errorBox .login_id {
	margin-top: 5px;
}

.loginbox .errorBox .login_pw {
	margin-top: 20px;
}

.loginbox .formbox .login_code img {
	margin-left: 158px;
	vertical-align: middle;
	width: 70px;
	height: 35px;
}

.loginbox .formbox .login_code a {
	/* 	border: 1px solid black; */
	margin-left: 205px;
	font-size: 12px;
	position: relative;
	top: -20px;
}

.loginbox .formbox span.tip {
	position: absolute;
	display: none;
}

.loginbox .formbox .login_id .icon {
	background-position: -108px -271px;
	float: right;
}

.loginbox .formbox .login_pw .icon {
	background-position: -135px -271px;
	float: right;
}

.loginbox .formbox .login_code input {
	width: 139px;
}

.loginbox .formbox .err input {
	border: 1px solid #E81300;
}

.loginbox .formbox .forget {
	height: 12px;
	line-height: 12px;
	width: 285px;
}

.loginbox .formbox .forget {
	margin-top: 10px;
}

.loginbox .errorBox .forget {
	margin: 20px 0 13px 0;
}

.loginbox .formbox .forget span {
	font-size: 12px;
	color: #555;
	height: 12px;
	line-height: 12px;
}

.loginbox .formbox .forget span input {
	vertical-align: middle;
	margin-top: -3px;
	margin-right: 5px;
}

.loginbox .formbox .forget a {
	margin-left: 80px;
	font-size: 12px;
	vertical-align: middle;
}

.loginbox .formbox .forget .icon {
	width: 12px;
	height: 12px;
	margin-right: 3px;
	*height: 14px;
}

.loginbox .formbox .forget .on {
	background-position: -55px -102px;
	*background-position: -55px -102px;
	_background-position: -55px -102px;
}

.loginbox .formbox .forget .off {
	background-position: -67px -102px;
	*background-position: -67px -101px;
	_background-position: -67px -102px;
}

.loginbox .formbox .loginbtn {
	font: 18px Microsoft YaHei;
	display: block;
	text-align: center;
	width: 240px;
	height: 40px;
	line-height: 40px;
	color: #fff;
	background-color: #ff8800;
	border-radius: 2px;
	margin-top: 20px;
}

.loginbox .formbox .loginbtn:hover {
	background-color: #ee6600;
}

.loginbox .formbox .login_style {
	width: 290px;
	height: 28px;
	font-size: 12px;
	color: #555;
}

.loginbox .formbox .login_style {
	margin-top: 20px;
}

.register_tip {
	width: 1000px;
	margin: 0 auto;
	margin-top: 20px;
	height: 15px;
	padding-right: 12px;
	text-align: right;
	color: #999999;
	font-size: 12px;
	line-height: 15px;
}

.gTip {
	width: 100%;
	height: 100%;
	position: fixed;
	z-index: 9999;
}

.gTipContent {
	background-color: #ffffff;
	border-left: 5px solid #f77924;
	text-align: center;
	padding: 30px 20px;
	width: 360px;
	line-height: 24px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
	margin: auto;
	margin-top: 100px;
	font-size: 14px;
}
</style>

</head>
<body>
	<div class="head">
		<div class="logo" id="RedirectHomeSite">
			<img
				src="${pageContext.request.contextPath }/statics/images/login/mg_logo1.png"
				width="200px">
		</div>
	</div>

	<div class="loginbox">
		<div class="pic">
			<a href="http://localhost:8080/FengYou/toIndex" target="_blank">
				<img
				src="${pageContext.request.contextPath }/statics/images/login/login_banner1.jpg"
				width="620" height="350" alt="常住30天" />
			</a>
		</div>
		<!-- 扫码登录 -->

		<div id="NoCodeLogin" class="formbox" style="margin-top: 10px;">
			<ul class="nav nav-pills list-inline" id="myTab">
				<li class="active"><a href="#home" data-toggle="pill">普通登录</a></li>
				<li><a href="#a" data-toggle="pill">手机动态密码登录</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active now" id="home">
					<div id="ElongLogin" language="cn">
						<div class="inputbox login_id">
							<span class="icon"></span> <input class="blur" type="text"
								id="UserName" name="devCode" placeholder='用户名/卡号/手机号/邮箱'
								value="test001" language="cn" style="height: 30px;" />
							<div class="input_tip" name="accounterrortip"
								style="display: none;">您输入的用户名和密码不匹配，请重新输入！</div>
						</div>

						<div class="inputbox login_pw" id="password_tip">
							<span class="icon"></span> <input class="blur" type="password"
								placeholder='密码' value="123456" name="devPassword"
								id="UserPassword" style="height: 30px;">
						</div>
						<div class="inputbox login_pw" style="display: none"
							id="input_password">
							<span class="icon"></span><input class="blur" type="password"
								id="PassWord">
						</div>

						<div class="forget">
							<span> <label> <input id="remberMeText"
									type="checkbox" value="" />两个月内免登录
							</label>
							</span> <a href="">忘记密码</a>
						</div>
						<a class="loginbtn" href="javascript:void(0);"
							onclick="validateCode()" usable="true"
							style="text-decoration: none;">登录</a>
					</div>
				</div>
				<div class="tab-pane" id="a">
					<div id="DynamicLogin">
						<div class="inputbox login_id">
							<div class="phonenum" method="showPhoneTypes">
								<span id="PhoneType" value="1" method="showPhoneTypes"
									style="height: 32px;">中国大陆+86</span>
								<ul id="PhoneTypeList" style="display: none;"></ul>
							</div>
							<input id="userPhone" class="phonenum_input" type="text"
								value='请输入手机号' name="ValidateUserPhone"
								style="height: 33px; width: 130px; margin-left: 110px;" />
						</div>
						<div class="inputbox login_code" id="ValidateCodeDiv"
							style="display: block; margin-top: 10px;">
							<input class="blur" id="inputCode" type="text" placeholder="验证码"
								language="cn" style="height: 30px;"> <span
								id="checkCode" class="code" onclick="createCode(4)"
								style="width: 50px; margin-left: 150px; font-size: 19px;"></span>
							<a href="#" onclick="createCode(4)">换一张</a>
						</div>
						<div class="inputbox phone_pw" style="margin-top: 10px;">
							<input id="input_DynamicCode" class="blur" type="text"
								style="width: 115px; height: 34px;" onblur="blurPhone()"
								value="输入动态码" /> <a class="btn" id="GetDynamicCode"
								useful="true"
								style="margin-left: 125px; background-color: #3377DD; color: #fff"
								onclick="clickPhone()">获取动态密码</a>
							<div id="DynamicCodeErroTip" class="input_tip"
								style="display: none"></div>
						</div>
						<div
							style="border: 1px solid #FFD1CF; width: 235px; top: -2px; background-color: #FFEEED; position: relative; text-align: center; display: none;"
							id="yzm">动态密码错误，请重新输入</div>
						<div class="forget" style="margin-top: 10px; height: 20px;">
							<span> <label> <input id="remember4Dynamic"
									type="checkbox" value="" name="rememberMe" />记住我
							</label>
							</span>
						</div>
						<a class="loginbtn" onclick="validateCodePhone()" usable="true"
							style="margin-top: 5px; text-decoration: none;">登录</a>
						<!--bind phone-->
						<div class="bind-phone">
							<p class="mt20">
								用户未绑定手机号？<a>请先注册在登录</a>
							</p>

						</div>
						<!--bind phone-->
					</div>

				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/statics/js/register/common.min.js"></script>

	<script type="text/javascript">
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		})
	</script>

	<div class="register_tip">
		<a href="register.jsp" title="立即注册">立即注册<i></i></a>
	</div>
	<!--底部-->
	<div class="footer">
		<p class="mobile">
			<a class="iphone" href="#" target="_blank"><span class="icon"></span>iPhone
				/ iPad</a> <a href="#" target="_blank" class="android"><span
				class="icon"></span>Android</a>
		</p>
		<p>
			<a href="#">代理合作</a>| <a href="#">广告服务</a>| <a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;©
			2000 - 2019 郴州SIX科技技术有限公司, six, Inc or its affiliates. All Rights
			Reserved.
		</p>
		<input type="hidden" id="loginLevel" value="2" />
	</div>
	<!--底部-->
	<script type="text/javascript">
		//页面加载时，生成随机验证码
		window.onload = function() {
			createCode(4);
		}

		//生成验证码的方法
		function createCode(length) {
			var code = "";
			var codeLength = parseInt(length); //验证码的长度
			var checkCode = document.getElementById("checkCode");
			////所有候选组成验证码的字符，当然也可以用中文的
			var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b',
					'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
					'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
					'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
					'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
					'Y', 'Z');
			//循环组成验证码的字符串
			for (var i = 0; i < codeLength; i++) {
				//获取随机验证码下标
				var charNum = Math.floor(Math.random() * 62);
				//组合成指定字符验证码
				code += codeChars[charNum];
			}
			if (checkCode) {
				//为验证码区域添加样式名
				checkCode.className = "code";
				//将生成验证码赋值到显示区
				checkCode.innerHTML = code;
			}
		}

		//普通登录验证
		function validateCode() {
			//获取用户名
			var devCode = document.getElementById("UserName").value;

			//获取密码
			var devPassword = document.getElementById("UserPassword").value;

			if (devCode == null || devCode.length == 0) {
				tipShow('用户名不能为空', function() {
				});
				return false;
			}

			if (devPassword == null || devPassword.length == 0) {
				tipShow('密码不能为空', function() {
				});
				return false;
			}
			location.href = "dologin?name=" + devCode + "&pwd=" + devPassword;
		}

		//倒计时
		var wait = 60;
		get_code_time = function(o) {
			if (wait == 0) {
				o.removeAttribute("disabled");
				$('#userPhone').css("disabled", false);
				o.value = "免费获取验证码";
				wait = 60;
			} else {
				o.setAttribute("disabled", true);
				$('#userPhone').css("disabled", true);
				o.value = wait + "秒后重新获取";
				wait--;
				setTimeout(function() {
					get_code_time(o)
				}, 1000)
			}
		}

		//手机号码是否在不在
		function clickPhone() {
			var o = this;
			//获取手机号码
			var userPhone = document.getElementById("userPhone").value;
			$.ajax({
				url : 'sale.json',
				type : 'POST',
				data : {
					phone : userPhone
				},
				success : function(data) {
					if (data == "false") {
						tipShow('手机号码未注册,请重新到注册页面注册会员！', function() {
						});
						return false;
					} else if (data == "true") {
						$.post('find_Code', {
							mobileNo : userPhone
						}, function(data) {
						});
						get_code_time(o);
					}
				}
			});
		}

		//手机登录验证
		function validateCodePhone() {
			//获取手机号码
			var userPhone = document.getElementById("userPhone").value;
			if (userPhone == null || userPhone.length == 0
					|| userPhone == "请输入手机号") {
				tipShow('请输入合格的手机号码', function() {
				});
				return false;
			}
			//获取显示区生成的验证码
			var checkCode = document.getElementById("checkCode").innerHTML;
			//获取输入的验证码
			var inputCode = document.getElementById("inputCode").value;
			console.log(checkCode);
			console.log(inputCode);
			if (inputCode.length <= 0) {
				tipShow('请输入验证码！', function() {
				});
			} else if (inputCode.toUpperCase() != checkCode.toUpperCase()) {
				tipShow('验证码输入有误！', function() {
				});
				createCode(4);
			}

			//获取动态验证码
			var DynamicCode = document.getElementById("input_DynamicCode").value;
			if (DynamicCode.length <= 0 || DynamicCode == "输入动态码") {
				tipShow('请输入验证码！', function() {
				});
				return false;
			}

			//获取动态验证码进行对比
			$.ajax({
				url : 'blur.json',
				type : 'POST',
				data : {
					DynamicCode : DynamicCode,
					userPhone:userPhone
				},
				success : function(data) {
					if (data == "false") {
						$("#yzm").css("display", "block");
						return false;
					} else if (data == "true") {
						location.href ="/FengYou/toIndex";
					}
				}
			});

			// 			location.href = "dologin?name=" + devCode + "&pwd=" + devPassword;
		}
	</script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/login/query1.8.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/login/index.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/login/require2.1.16.min.js"
		data-main="${pageContext.request.contextPath }/statics/js/login/login.js"></script>
</body>

</html>