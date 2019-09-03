<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>注册</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>注册</title>
<link rel="icon"
	href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740"
	type="image/x-icon" />
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup,
	tt, var, dd, dl, dt, li, ol, ul, fieldset, form, label, legend, table,
	caption, tbody, tfoot, thead, tr, th, td, button, input, textarea {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	font-size: 100%;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	background-color: #E8EFF6;
	/* background-image: url("${pageContext.request.contextPath }/statics/images/register_cn/未标题-2.jpg"); */
}

img {
	border: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

q:before, q:after, blockquote:before, blockquote:after {
	content: "";
}

ol, ul {
	list-style: none;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: normal;
}

a {
	text-decoration: none;
	color: #333;
}

a:hover {
	color: #000;
}

html, body {
	width: 100%;
	height: 100%;
}

body {
	font: 12px/20px "Hiragino Sans GB", "Microsoft Yahei", Helvetica, Arial,
		sans-serif;
}

.hide {
	display: none !important;
}

.f14 {
	font-size: 14px;
}

.pull-right {
	float: right;
}

.orange {
	color: #F70;
}

.important {
	color: #ff0000;
}

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
	background-color: #0284E2;
}

.input-button:active {
	background-color: #0078D7;
}

.forgot-wrapper {
	position: absolute;
	top: 110px;
	left: 50%;
	width: 800px;
	padding: 20px 30px 60px 30px;
	margin-left: -435px;
	background-color: #ffffff;
	display: none;
}
/* .forgot-forms { */
/*     float: left; */
/* } */
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
	top: 155px;
	left: 50%;
	width: 800px;
	padding: 20px 30px;
	margin-left: -435px;
	/*      background-color: rgba(0,0,0,0.1); */
	background-color: #ffffff;
	opacity: 0.8;
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

.recode-refresh {
	display: block;
	float: left;
	height: 30px;
	line-height: 30px;
	background-image: url(../images/sprite.png);
	background-repeat: no-repeat;
	background-position: -348px -658px;
	padding-left: 25px;
	color: #666666 !important;
}

.sign-forms a {
	color: #f07d2c;
}

.sign-wrapper .forgot-login {
	margin-top: 90px;
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

<script
	src="${pageContext.request.contextPath }/statics/js/register/jquery-1.7.2.min.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/register/jquery.ui-1.10.2.min.js"></script>
<script type="text/javascript">
	var wait = 120;
	function time(i) {//o为按钮的对象，这里是60秒过后，提示文字的改变 
		if (wait == 0) {
			i.attr("disabled", false);
			$('#mobileNo').attr("disabled", false);
			$("#captchaText").val("");
			i.val("免费获取验证码");//改变按钮中value的值 
			wait = 120;
			return;
		} else {
			i.attr("disabled", true);//倒计时过程中禁止点击按钮 
			$('#mobileNo').attr("disabled", true);
			$("#captchaText").val($("#captcha").val());
			i.val(wait + "秒后重新获取");//改变按钮中value的值 
			wait--;
			setTimeout(function() {
				time(i);//循环调用 
			}, 1000);
		}
	}

	$(function() {
		$('#sendCodeBtns').click(function() {
			var mobileNo = $.trim($('#mobileNo').val());
			var patrn = /^1[3|4|5|7|8]\d{9}$/;
			if (!patrn.exec(mobileNo)) {
				tipShow('请输入正确手机号', function() {
				});
				return false;
			}
			;
			$.ajax({
				url : 'sale.json',
				type : 'POST',
				data : {
					phone : $('#mobileNo').val()
				},
				success : function(data) {
					if (data == "false") {
						time($(this));
// 						$.post('find_Code', {
// 						mobileNo : $('#mobileNo').val()
// 						}, function(data) {
							
// 						});
					} else if (data == "true") {
						tipShow('手机号码已被注册,请重新输入！', function() {
						});
						return;
					}
				}
			});

		})
	});
</script>
</head>
<body>
	<div style="width: 500px; margin-left: 270px; margin-top: 20px;">
		<div style="margin: 10px">
			<span><img
				src="${pageContext.request.contextPath }/statics/images/login/mg_logo1.png"
				width="300px"
				style="position: relative; bottom: -17px; left: -60px;"></span><span
				style="font-size: 24px; margin-left: -90px;"><strong>注册新会员</strong></span><span
				style="margin-left: 10px;">已有风游帐号？<a
				href="http://localhost:8080/FengYou/login.jsp">直接登录</a></span>
		</div>
	</div>

	<div class="sign-wrapper clearfix">
		<form>
			<div class="sign-forms">
				<!-- 手机号码 -->
				<div class="forms-list">
					<label><span class="important">*</span> 手机号：</label>
					<div class="forms-input">
						<input maxlength="15"
							data-bind="value: mobileNo,valueUpdate: 'afterkeydown'"
							type="text" class="input-text" id="mobileNo" />
					</div>
					<div class="forms-additions">
						<span
							data-bind="visible: mobileNo.isModified() && mobileNo.isValid()"
							class="forms-ok"></span> <span class="forms-error"
							data-bind="validationMessage: mobileNo"> </span>
					</div>
				</div>
				<!-- 用户名 -->
				<div class="forms-list">
					<label><span class="important">*</span>用户名：</label>
					<div class="forms-input">
						<input maxlength="20"
							data-bind="value: name,valueUpdate: 'afterkeydown'" type="text"
							class="input-text" />
					</div>
					<div class="forms-additions">
						<span class="forms-error" data-bind="validationMessage: name"></span>
					</div>
				</div>

				<!-- 密码-->
				<div class="forms-list">
					<label><span class="important">*</span> 密码：</label>
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

				<!-- 邮箱 -->
				<div class="forms-list">
					<label><span class="important">*</span>邮箱：</label>
					<div class="forms-input">
						<input maxlength="30"
							data-bind="value: email,valueUpdate: 'afterkeydown'" type="text"
							class="input-text" />
					</div>
					<div class="forms-additions">
						<span class="forms-error" data-bind="validationMessage: email"></span>
					</div>
				</div>

				<!-- 验证码-->
				<div class="forms-list">
					<label><span class="important">*</span>输入验证码：</label>
					<div class="forms-input">
						<input class="input-text" style="width: 60px;" id="inputCode"
							type="text" method="CheckValidateCode_Dynamic" language="cn"
							data-bind="value: ValidateCode,valueUpdate: 'afterkeydown'">
					</div>
					<div class="forms-additions"
						style="padding-left: 10px; padding-right: 10px; margin-top: 3px;">
						<span id="validateCode" onclick="createCode(4)"
							style="padding: 0px 10px; font-size: 18px;"></span> <a
							href="javascript:void(0)" onclick="createCode(4)">换一张</a> <span
							id="validate_code_tip_info"></span>
					</div>
					<div class="forms-additions" style="margin-left: 20px;">
						<span
							data-bind="visible: ValidateCode.isModified() && ValidateCode.isValid()"></span>
						<span class="forms-error" style="display: none;"
							data-bind="validationMessage: ValidateCode"></span> <span
							class="forms-ok" style="display: none;" id="ok"></span> <span
							class="forms-error" style="display: none;" id="error"></span>

					</div>
				</div>

				<!-- 短信验证码-->
				<div class="forms-list">
					<label><span class="important">*</span>短信验证码：</label>
					<div class="forms-input">
						<input maxlength="6"
							data-bind="value: captcha,valueUpdate: 'afterkeydown'"
							type="text" class="input-text recode" />
					</div>
					<div class="forms-additions">
						<input type="button" class="input-button" id="sendCodeBtns"
							style="width: 130px;" value="免费获取验证码" />
					</div>
					<input type="hidden" id="captchaText">
				</div>

				<div class="forms-list">
					<label></label>
					<div class="forms-input">
						<input type="button"
							data-bind="visible: !inSubmiting(),click: Register"
							class="input-button" id="regBtn" value="注 册" /> <img
							data-bind="visible: inSubmiting" src="images/loading.gif"
							style="display: none;" />
					</div>
				</div>
			</div>
		</form>
	</div>

	<script
		src="${pageContext.request.contextPath }/statics/js/register/knockout-2.3.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/knockout.validation.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/common.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/ko.common.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/account.min.js"></script>
	<script>
		var ViewModel = function() {
			var inputCode = document.getElementById("inputCode").value;
			var captchaText=document.getElementById("captchaText").value;
			var self = this;
			self.mobileNo = ko.observable().extend({
				required : true,
				// 	                required: {
				// 	                    params: true,
				// 	                    message: "请输入名称"
				// 	                }
				pattern : {
					message : '请正确输入11位手机号码',
					params : /^1[3|4|5|7|8]\d{9}$/
				},
				validation : {
					params : true,
					async : true,
					validator : function(val, opts, callback) {
						$.ajax({
							url : 'sale.json',
							type : 'POST',
							data : {
								phone : val
							},
							success : function(data) {
								if (data == "true") {
									callback(false)
								} else if (data == "false") {
									callback(true);
								}
							}
						})
					},
					message : '手机已注册,请重新输入！'
				}
			});
			self.password = ko.observable().extend({
				required : true,
				minLength : 6,
				maxLength : 15
			});
			self.password2 = ko.observable().extend({
				required : true,
				equal : self.password
			});
			self.email = ko.observable().extend({
				required : true,
				email : true
			});
			self.ValidateCode = ko.observable().extend({
				required : true,
			});
			self.captcha = ko.observable().extend({
				required : true,
				maxLength : 7
			});
			self.name = ko.observable().extend({
				required : true,
				minLength : 1,
				maxLength : 15
			});
			self.agree = ko.observable(true);
			self.initChecker = function() {
				setTimeout(function() {
					$('#agreeChecker').addClass('checked');
				}, 100);
			}
			self.initChecker();
			self.inSubmiting = ko.observable(false);
			self.toggleAgree = function(data, event) {
				setTimeout(function() {
					var check = $(event.target);
					if (self.agree())
						self.agree(false);
					else
						self.agree(true);
				}, 100);
			}
			self.Register = function() {
				self.errors = ko.validation.group(self);
				if (!self.isValid()) {
					self.errors.showAllMessages();
					return;
				}
				if (!self.agree()) {
					tipShow('您必须同意协议才能提交', function() {
					});
					return;
				}
				self.inSubmiting(true);
				var inputCode = document.getElementById("inputCode").value;
				$
						.post(
								'register',
								{
									phone : self.mobileNo(),
									password : self.password(),
									email : self.email(),
									userName : self.name(),
									captcha :captchaText,
									ValidateCode : self.ValidateCode(),
									inputCode : inputCode
								},
								function(data) {
									if (data == "success") {
										location = "http://localhost:8080/FengYou/login.jsp";
									} else if (data == "failure") {
										tipShow('注册失败！', function() {
										});
										location = "http://localhost:8080/FengYou/register.jsp";
									} else if (data == "error") {
										self.inSubmiting(false);
										tipShow('短信验证码错误！', function() {
										});
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

	<script type="text/javascript">
		//页面加载时，生成随机验证码
		window.onload = function() {
			createCode(4);
		}
		//生成验证码的方法
		function createCode(length) {
			var code = "";
			var codeLength = parseInt(length); //验证码的长度
			var checkCode = document.getElementById("validateCode");
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
	</script>



</body>
</html>