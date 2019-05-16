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
		<link rel="icon" href="http://www.elongstatic.com/common/pic/favicon.ico?t=201411070740" type="image/x-icon" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/login/el_common_1.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/login/myelong_login_2016.css">
		<!--<script type="text/javascript" src="static/js/savior.js"></script>-->
	</head>

	<body>

		<div class="head">
			<div class="logo" id="RedirectHomeSite"><img src="${pageContext.request.contextPath }/statics/images/login/mg_logo1.png" width="200px"></div>
		</div>

		<div class="loginbox">

			<div class="pic">
				<a href="#首页" target="_blank">
					<img src="${pageContext.request.contextPath }/statics/images/login/login_banner1.jpg" width="620" height="350" alt="常住30天" /></a>
			</div>
			<!-- 扫码登录 -->

			<div id="NoCodeLogin" class="formbox phonebox errorBox" style="display: block">
				<!-- 
                <div id="HKTip" class="el-poptip"
                     style="width: 265px; position: absolute; left: 108px; top: -28px;">
                    <div class="el-poptip-shadow">
                        <div class="el-poptip-container">

                            <div class="el-poptip-arrow el-poptip-arrow-7">
                                <em>◆</em> <span>◆</span>
                            </div>

                            <a href="javascript:;" class="el-poptip-close"
                               onclick="$('#HKTip').hide()">×</a>

                            <p>港澳台手机用户请使用“手机动态密码登录”</p>
                        </div>

                    </div>
                </div>
            -->
				<div class="nav_login_user" id="LoginTypeChoose">
					<label>
                    <input name="loginType" type="radio" method="normalLogin" checked="checked">
普通登录                </label>
					<label>
						<span>
						<input name="loginType" type="radio" method="dynamicLogin" >手机动态密码登录
						</span>
                </label>
				</div>
				<span>${error}</span>
				<div id="ElongLogin" language="cn">
					<div class="inputbox login_id">
						<span class="icon"></span>
						<input class="blur" type="text" id="UserName" name="devCode" placeholder='用户名/卡号/手机号/邮箱'  value="test001" language="cn" />

						<div class="input_tip" name="accounterrortip" style="display: none;">您输入的用户名和密码不匹配，请重新输入！</div>
					</div>

					<div class="inputbox login_pw" id="password_tip">
						<span class="icon"></span><input class="blur" type="password" placeholder='密码' value="123456" name="devPassword" id="UserPassword">
					</div>
					<div class="inputbox login_pw" style="display:none" id="input_password">
						<span class="icon"></span><input class="blur" type="password" method="PassWord" id="PassWord">
					</div>

					<div class="inputbox login_code err" id="ValidateCodeDiv" style="display: block;">
						<input class="blur" id="inputCode" type="text" placeholder="验证码" method="CheckValidateCode_Dynamic" language="cn">
						<div id="checkCode" class="code"  onclick="createCode(4)" style="float: right;margin-right: 80px" ></div><br/>
						<a href="#"  onclick="createCode(4)" style="float: right;margin-right: 80px">换一张</a>
					</div>

					<div class="forget">
						<span>
						<label>
							<input id="remberMeText" type="checkbox" value="" />两个月内免登录 </label> 
						</span>

						<a href="">忘记密码</a>
					</div>
					<a class="loginbtn" href="javascript:void(0);" onclick="validateCode()" usable="true" method="LoginSubmit">登录</a>

					<!--   <div class="login_style">
                <span>使用其它账号登录：</span>
                &lt;!&ndash; <a class="icon s_weixin" href="#?" method="hrefWeixin">微信</a> &ndash;&gt;
                <a class="icon s_qq" href="#?" method="hrefQQ">qq</a>
                <a class="icon s_sina" href="#?" method="hrefSina">新浪微博</a>
                <a class="icon s_zfb" href="#?" method="hrefAlipay">支付宝</a>
                <a class="icon s_renren" href="#?" method="hrefRenRen">人人</a>
            </div>-->

				</div>
				<div id="DynamicLogin" style="display: none">
					<div class="inputbox login_id">
						<div class="phonenum" method="showPhoneTypes">
							<span id="PhoneType" value="1" method="showPhoneTypes">中国大陆+86</span>
							<ul id="PhoneTypeList" style="display: none;"></ul>
						</div>

						<input id="userPhone" class="blur phonenum_input" type="text" value='请输入手机号' name="ValidateUserPhone" />

						<div id="UserPhoneErroTip" class="input_tip" style="display: none"></div>
					</div>
					<div class="inputbox login_code err" id="VCodeDiv" style="display: block;">
						<input class="blur" id="inputCode" type="text" value="验证码" method="CheckValidateCode_Dynamic" language="cn">
						<div id="checkCode" class="code"  onclick="createCode(4)" ></div>
						<a href="#"  onclick="createCode(4)">换一张</a>
					</div>
					<div class="inputbox phone_pw">
						<input id="input_DynamicCode" class="blur" type="text" value='输入动态密码' method="ValidateDynamicCode" />
						<a class="btn" id="GetDynamicCode" useful="true" method="GetDynamicCode">获取动态密码</a>

						<div id="DynamicCodeErroTip" class="input_tip" style="display: none"></div>
					</div>

					<div class="forget">
						<span>
							<span class="icon off" id="remember4Dynamic" name="rememberMe"></span>
						<span id="remember4DynamicTxt">记住我</span>
						</span>
					</div>

					<a class="loginbtn" href="validateCode()" usable="true" method="DynamicLoginSubmit">登录</a>

					<!--bind phone-->
					<div class="bind-phone">
						<p class="mt20">用户未绑定手机号？</p>
						<div class="bind-phonetip" style="display:none;">
							<p class="tip1"><i></i>未注册的用户，请先注册</p>
							<p class="tip2"><i></i>已经注册但仍未绑定手机号的用户，请拨打<a>400-666-1166</a>联系客服绑定手机。</p>
						</div>
					</div>
					<!--bind phone-->
				</div>
			</div>

		</div>

		<div class="register_tip"><a href="register_cn.jsp" title="立即注册">立即注册<i></i></a></div>

		<!--底部-->
		<div class="footer">
			<p class="mobile">
				<a class="iphone" href="#" target="_blank"><span
                class="icon"></span>iPhone / iPad</a>
				<a href="#" target="_blank" class="android"><span
                class="icon"></span>Android</a>
			</p>

			<p>
				<a href="#">代理合作</a>|
				<a href="#">广告服务</a>|
				<a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;© 2000 - 2019 郴州SIX科技技术有限公司, six, Inc or its affiliates. All Rights Reserved.
			</p>
			<input type="hidden" id="loginLevel" value="2" />
		</div>
		<!--底部-->

		<script type="text/javascript">
			var LoginController = {
				nextUrl: "https:\/\/ylong\/login_cn.html",
				targetUrl: null,
				language: "cn",
				existGuid: false,
				callBackName: "jsonpCallback",
				regBoxDes: {
					"RegBox_Registing": "\u6CE8\u518C\u4E2D",
					"SmsCodeSendFail": "\u9A8C\u8BC1\u7801\u53D1\u9001\u5931\u8D25\uFF0C\u70B9\u51FB\u91CD\u65B0\u83B7\u53D6",
					"RegBox_Mobile_Des": "\u624B\u673A\u53F7",
					"RegBox_SmsCode_Error": "\u77ED\u4FE1\u9A8C\u8BC1\u7801\u9519\u8BEF\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165",
					"RegBox_Email_Null": "\u90AE\u7BB1\u6709\u8BEF",
					"RegBox_Mobile_Error": "\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u624B\u673A\u53F7",
					"SmsCode_ReachCountLimit": "\u60A8\u5DF2\u8FBE\u5230\u4ECA\u5929\u83B7\u53D6\u9A8C\u8BC1\u7801\u7684\u6700\u9AD8\u6B21\u6570",
					"RegBox_MobileError": "\u624B\u673A\u53F7\u5DF2\u88AB\u4F7F\u7528\uFF0C\u8BF7\u66F4\u6362\u5176\u4ED6\u624B\u673A\u53F7",
					"lang": "cn",
					"RegBox_Password_LengthError": "\u5BC6\u7801\u57286-30\u4E2A\u5B57\u7B26\u6216\u6570\u5B57\u5185",
					"RegBox_BothPassword_Error": "\u4E24\u6B21\u8F93\u5165\u5BC6\u7801\u4E0D\u4E00\u81F4",
					"RegValidateMobile_HadReg_Error": "\u624B\u673A\u53F7\u5DF2\u88AB\u4F7F\u7528\uFF0C\u8BF7\u66F4\u6362\u5176\u4ED6\u53F7\u7801\u3002",
					"SmsCode_GetSmsAfter": "\u79D2\u540E\u91CD\u65B0\u83B7\u53D6",
					"RegBox_Password_Null": "\u5BC6\u7801\u4E0D\u80FD\u4E3A\u7A7A",
					"RegBox_Validate_Error": "\u8BF7\u8F93\u5165\u6B63\u786E\u9A8C\u8BC1\u7801",
					"RegBox_Mobile_Null": "\u8BF7\u8F93\u5165\u624B\u673A\u53F7",
					"SmsCode_GetSmsCodeDes": "\u83B7\u53D6\u77ED\u4FE1\u9A8C\u8BC1\u7801",
					"SmsCodeDisabled": "\u9A8C\u8BC1\u7801\u5DF2\u5931\u6548\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6",
					"RegBox_Mobile_HagReg": "\u8BE5\u624B\u673A\u53F7\u5DF2\u88AB\u6CE8\u518C",
					"RegBox_SixOr30Char": "6-30\u4E2A\u5B57\u7B26\u6216\u6570\u5B57\u7EC4\u6210\uFF0C\u8BF7\u91CD\u65B0\u8F93\u5165",
					"RegBox_SmsCode_Null": "\u8BF7\u8F93\u5165\u77ED\u4FE1\u9A8C\u8BC1\u7801",
					"RegBox_Regist_Now": "\u7ACB\u5373\u6CE8\u518C",
					"RegValidateMobile_Input_Error": "\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u624B\u673A\u53F7\u3002",
					"RegSystemDefault": "\u7CFB\u7EDF\u7E41\u5FD9\uFF0C\u8BF7\u7A0D\u540E\u518D\u8BD5\uFF01",
					"RegBox_MobileAndEmail_Null": "\u90AE\u7BB1\/\u624B\u673A\u53F7",
					"RegBox_Password_Similar": "\u5BC6\u7801\u4E0E\u5DF2\u5F55\u5165\u7684\u624B\u673A\u53F7\u6216\u90AE\u7BB1\u76F8\u4F3C",
					"RegBox_Validate_Null": "\u8BF7\u8F93\u5165\u56FE\u5F62\u9A8C\u8BC1\u7801",
					"SmsCodeOutOfDate": "\u9A8C\u8BC1\u7801\u5DF2\u5931\u6548\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6",
					"SmsCode_MultiPhone": "\u5BF9\u4E0D\u8D77\uFF0C\u60A8\u7684\u624B\u673A\u53F7\u7ED1\u5B9A\u591A\u4E2A\u827A\u9F99\u8D26\u53F7\uFF0C\u8BF7\u66F4\u6362\u624B\u673A\u53F7",
					"RegBox_RePassword_Null": "\u8BF7\u91CD\u65B0\u8F93\u5165\u5BC6\u7801",
					"SmsCode_OtherError": "\u51FA\u73B0\u5176\u4ED6\u9519\u8BEF\uFF0C\u8BF7\u91CD\u65B0\u83B7\u53D6",
					"RegBox_Validate_Des": "\u9A8C\u8BC1\u7801",
					"RegBox_EmailError": "\u90AE\u7BB1\u5DF2\u88AB\u4F7F\u7528\uFF0C\u8BF7\u66F4\u6362\u5176\u4ED6\u90AE\u7BB1",
					"SmsCodeTimeLimit": "\u4E00\u5206\u949F\u5185\u83B7\u53D6\u9A8C\u8BC1\u7801\u592A\u9891\u7E41\uFF0C\u8BF7\u7A0D\u540E\u83B7\u53D6",
					"SmsCodeInputError": "\u9A8C\u8BC1\u7801\u8F93\u5165\u9519\u8BEF"
				}
			};
			var pageController = LoginController;
			
			//页面加载时，生成随机验证码
		    window.onload=function(){
		     createCode(4);    
		    }

		    //生成验证码的方法
		    function createCode(length) {
		        var code = "";
		        var codeLength = parseInt(length); //验证码的长度
		        var checkCode = document.getElementById("checkCode");
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
		    
		    //检查验证码是否正确
		    function validateCode()
		    {
		    	//获取用户名
		    	var devCode=document.getElementById("UserName").value;
		    	
		    	//获取密码
		    	var devPassword=document.getElementById("UserPassword").value;
		    		
		        //获取显示区生成的验证码
		        var checkCode = document.getElementById("checkCode").innerHTML;
		        //获取输入的验证码
		        var inputCode = document.getElementById("inputCode").value;
		        console.log(checkCode);
		        console.log(inputCode);
		        if (inputCode.length <= 0)
		        {
		            alert("请输入验证码！");
		        }
		        else if (inputCode.toUpperCase() != checkCode.toUpperCase())
		        {
		            alert("验证码输入有误！");
		            createCode(4);
		        }
		        else
		        {
		            alert("验证码正确！");
		         
		        }  
		        
		        if(devCode==null||devCode.length==0){
		        	alert("用户名不能为空");
		        }
		        if(devPassword==null||devPassword.length==0){
		        	alert("密码不能为空");
		        }
		        
		        location.href="dologin?name="+devCode+"&pwd="+devPassword;
		    } 
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/login/query1.8.3.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/js/login/index.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/login/require2.1.16.min.js" data-main="${pageContext.request.contextPath }/statics/js/login/login.js"></script>

	</body>

</html>