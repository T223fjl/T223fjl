//===================================================================
//  :	myelong注册.js
//      Copyright (C) 2015 Elong
//  	Elong JavaScript Template Autocreate
//  	2016/5/3 15:28:15
//      register.js
//  	author:YanxiSir
//
//===================================================================
require.config({
	baseUrl: "/passport/js/common-js",
	paths: {
		"plugins": "plugins"
	}
});
require(['jquery', 'web', 'plugins/validatorClass', 'fingerprint.pc'], function($, E, validatorClass, Finger) {
	var viewModelData = RegisterController.viewModel;
	this.regDes = RegisterController.regDes;
	var registerPage = E.module.create({
		options: {},
		init: function() {
			this.validator = new validatorClass();
			$("#IshaveCardReg").prop("checked", false);
			this.getConstID();
		},
		initDom: function() {
			this.language = lang;
			this.newUserUp = $("#NewUserUp");
			this.regBaseMessageRegion = $("#regBaseMessage").find("input");
			//有卡注册模块
			this.cooperationCard = $("#CooperationCard");
			this.isHaveCardReg = $("#IshaveCardReg");
			this.cardType = $("dl.Card");
			this.cardParentType = $("#cardParentType");
			this.cardChildType = $("#cardChildType");
			this.cardRegCardNo = $("#cardRegCardNo");
			this.cardRegCardPwd = $("#cardRegCardPwd");
			this.phoneNumRegion = $("#phoneNum");
			this.mobile = $("#mobile");
			this.email = $("#email");
			this.password = $("#password");
			this.rePassword = $("#rePassword");
			this.validateCode = $("#validateCode");
			this.validateImg = $("#validateImg");
			this.smsCodeInput = $("#smsCodeInput");
			this.getSMSCodeBtn = $("#getSmsCode");
			this.onAdditionBtn = $("#OnAddition");
			this.addition = $(".addition");
			this.readItems = $("#readItems");
			this.regRulesItems = $("#items");
			this.isHadReadItems = $("#isHadReadItems");
		},
		initEvent: function() {
			this.newUserUp.bind("click", E.addEvent(this, this.clickNewUserUpRegion));
			this.newUserUp.bind("keydown", E.addEvent(this, this.newUserUpMouseDown));
			this.regBaseMessageRegion.bind("focus", E.addEvent(this, this.onFocusRegBaseMessageRegion));
			this.regBaseMessageRegion.bind("blur", E.addEvent(this, this.onBlurRegBaseMessageRegion));
			this.getSMSCodeBtn.bind("click", E.addEvent(this, this.getSmsCodeBtnClick));
			this.bindChangeEvent(this.cooperationCard, E.addEvent(this, this.changeCooperateionCardDiv));
			this.phoneNumRegion.bind("click", E.addEvent(this, this.clickPhoneNumRegion));
			this.validateImg.bind("mouseover", E.addEvent(this, this.validateImgOnMouseOver));
			this.validateImg.bind("mouseout", E.addEvent(this, this.validateImgOnMouseOut));
			this.onAdditionBtn.bind("click", E.addEvent(this, this.onClickOnAdditionReg));
			this.readItems.bind("click", E.addEvent(this, this.onClickRuledItems));
			//初始化方法
			this.judgeShowHaveCardReg();
		},
		clickNewUserUpRegion: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "validateHref":
				case "validateImg":
					this.refreshVCodeImg();
					$(".input_wrong").hide();
					break;
				case "regSubmit":
					{
						this.hideTipMessage();
						element.attr("disabled", true);
						element.attr("value", regDes.IsHavingRegUser);
						this.submitRegisterInfoValidate();
					}
					break;
			}
		},
		getConstID: function() {
			var _this = this;
			var options = {
				appId: '8a627b6a532dd7277e2027d3d3530925', // 唯一标识，必填
				server: 'https://sec.ly.com/yf/udid/c1', // ConstID 服务接口，必填
			};
			_dx.ConstID(options, function(e, id) {
				if (e) {
					console.log('error: ' + e);
					return;
				}
				_this.ConstID = id;
			});
		},
		getSmsCodeBtnClick: function(evt) {
			var element = $("#mobile");
			var userPhone = element.val();
			var extendUserPhone = this.getExtendUserPhone(userPhone);
			if (this.stringIsEmpty(extendUserPhone) || !this.validator.valid(extendUserPhone, "mobile")) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidateMobile_Input_Error);
				return false;
			}
			//先验证图形验证码
			var vCode = this.validateCode.val();
			if (this.stringIsEmpty(vCode)) {
				this.showTipMessage(this.validateCode, "icon input_wrong", regDes.RegValidateCodeInfo);
				return false;
			}
			if (this.getSMSCodeBtn.attr("userful") == "true") {
				var that = this;
				var params = "?mobile=" + extendUserPhone + "&imgCode=" + vCode + "&ConstID=" + that.ConstID;
				$.get("/passport/ajax/reg/getDynamicCode" + params,
					function(res) {
						if (res.success) {
							var msg = "";
							switch (res.data.returnCode) {
								case "000":
									that.hideTipMessage();
									// $(".input_wrong").hide();
									that.showTipMessage(element, "icon input_right", "");

									function time() {
										var left = 60;
										return function() {
											if (left == 0) {
												clearInterval(count);
												$("#getSmsCode").html(regDes.SmsCode_GetSmsCodeDes);
												$("#getSmsCode").attr("userful", "true");
												$("#getSmsCode").attr("class", "messcode");
												left = 60;
											} else {
												$("#getSmsCode").html(left + regDes.SmsCode_GetSmsAfter);
												left--;
											}
										}
									};
									if ($("#getSmsCode").attr("userful", "true")) {
										var cc = time();
										$("#getSmsCode").attr("userful", "false");
										$("#getSmsCode").attr("class", "messcode remesscode");
										var count = setInterval(function() {
											cc();
										}, 1000);
									}
									break;
								default:
									that.showTipMessage($("#mobile"), "icon input_wrong", res.data.err);
									that.refreshVCodeImg();
							}
						} else {
							switch (res.data + "") {
								case "200":
									that.showTipMessage(that.validateCode, "icon input_wrong", regDes.RegValidateCode_Input_Error);
									break;
								default:
									that.showTipMessage($("#mobile", "icon input_wrong", res.data.err));
									break;
							}
							that.refreshVCodeImg();
							return;
						}
					});
			}
		},
		submitRegisterInfoValidate: function() {
			var checkSMSCode = true;
			if ($("#mobile").attr("isDynamic") == "false") {
				checkSMSCode = true;
			} else {
				checkSMSCode = this.validateSMSCode($("input#smsCodeInput"));
			}
			if (this.validateCard() && this.validateMobile(this.mobile) && checkSMSCode && this.validateEmail(this.email) && this.validatePassowrd(this.password) && this.validateRePassowrd(this.rePassword) && ((this.language == "cn" && this.isHadReadItems.is(':checked')) || this.language.toLowerCase() == "en")) {
				var that = this;
				this.getRegInfo();
				var that = this;
				var emailFlag = this.validateEmail($("input#email"), function() {
					if (lang == "en") {
						//提交注册信息
						that.submitRegisterInfo();
					} else {
						var mobileFlag = that.validateMobile($("input#mobile"), function() {
							//提交注册信息
							that.submitRegisterInfo();
						});
						if (mobileFlag == "false") {
							//账号存在，提示出错
							that.showTipMessage($("input#mobile"), "icon input_wrong", regDes.RegValidateMobile_HadReg_Error);
						}
					}
				});
				if (emailFlag == "false") {
					//账号存在，提示出错
					that.showTipMessage($("input#email"), "icon input_wrong", regDes.RegValidateMobile_HadReg_Error);
				}
			} else {
				if (!this.isHadReadItems.is(':checked')) {
					if (this.language.toLowerCase() == "cn") {
						this.showTipMessage($("#readItems"), "icon wrong", regDes.RegValidate_ReadAndCheck_Rules);
					}
				}
			}
			this.unlockRegSubmitBtn();
		},
		//提交注册信息
		submitRegisterInfo: function() {
			var that = this;
			//if ($("#mobile").attr("isDynamic") != "false") {
			if (viewModelData.isHaveCardReg == 1) {
				var cardNo = viewModelData.cardRegCardNo;
				if (isNaN(parseInt(cardNo))) {
					alert("联名卡卡号必须为数字");
					return;
				}
				if (cardNo.length > 19) {
					alert("联名卡卡号不能超过19位");
					return;
				}
			}
			this.lockRegSubmitBtn();
			var data = {};
			viewModelData.ConstID = that.ConstID;
			data.viewModelStr = JSON.stringify(viewModelData);
			data.language = lang;
			data.token = window.fingerPrintToken || ''
				//var tmp = JSON.stringify(viewModelData);
				//var data = {"viewModelStr": tmp};
			var that = this;
			$.post("/passport/ajax/reg/regSubmit", data, function(res) {
				console.log(res);
				console.log(res.data.returnCode + "");
				if (res.success) {
					var backUrl = that.request("backUrl");
					if (backUrl) {
						//常春藤逻辑
						backUrl = backUrl.replace("#?", "");
						var joinString = "?";
						if (backUrl.indexOf("?") > -1) {
							joinString = "&";
						}
						if (res.data.returnCode == "000") {
							window.location.href = backUrl + joinString + "userid=" + res.data.newCardNo;
						} else {
							window.location.href = backUrl + joinString + "errmsg=" + res.data.errMsg;
						}
						return;
					}
					switch (res.data.returnCode + "") {
						case "0":
						case "00":
						case "000":
							{
								if (lang == "en") {
									//英文邮箱注册成功
									var gCode = res.data.newCardNo;
									window.location.href = "https://secure.elong.com/passport/regactivate_en.html?language=en&gCode=" + gCode;
									break;
								}
								var isEnSite = window.location.host.indexOf("elong.net") > 0 ? true : false;
								var backUrl = that.request("redirecturl");
								if (backUrl) {
									backUrl = decodeURIComponent(backUrl).replace("#?", "");
								} else if (lang == "cn" && websiteType == "standard") {
									backUrl = "https://secure.elong.com/passport/regsuccess_" + res.data.newCardNo + "_cn.html";
								} else if (lang == "en" && websiteType == "standard") {
									backUrl = "https://secure.elong.com/passport/regsuccess_" + res.data.newCardNo + "_en.html";
								} else {
									//配置的nextUrl
									backUrl = "";
								}
								backUrl = $.trim(backUrl);
								window.location.href = "http://my.elong.com/Connection_cn.html?SessionTag=" + res.data.stag + "&SessionGuid=" + res.data.sguid + "&nextUrl=" + encodeURIComponent(backUrl) + "&expireTime=0";
							}
							break;
						case "305":
							{ //验证码错误
								that.showTipMessage(that.smsCodeInput, "icon input_wrong", regDes.RegValidateCode_Input_Error);
							}
							break;
						case "302":
							{ //过期
								that.showTipMessage(that.smsCodeInput, "icon input_wrong", regDes.SmsCodeOutOfDate);
							}
							break;
						case "303":
							{ //不可用
								that.showTipMessage(that.smsCodeInput, "icon input_wrong", regDes.SmsCodeDisabled);
							}
							break;
						case "322":
							{ //错误
								that.showTipMessage(that.smsCodeInput, "icon input_wrong", regDes.SmsCodeInputError);
							}
							break;
						case "216":
							{ //RegSystemMobileError
								that.showTipMessage($("input#mobile"), "icon input_wrong", regDes.RegSystemMobileError);
							}
							break;
						case "120":
						case "239":
							{ //RegSystemEmailError
								that.showTipMessage($("input#email"), "icon input_wrong", regDes.RegSystemEmailError);
							}
							break;
						case "80":
							{ //RegSystemDefault
								that.showTipMessage($("#regSubmit"), "icon wrong", regDes.RegSystemDefault);
							}
							break;
						case "50":
							{ //RegValidateMobile_Input_Error
								that.showTipMessage($("input#mobile"), "icon input_wrong", regDes.RegValidateMobile_Input_Error);
							}
							break;
						default:
							//注册失败
							that.showTipMessage($("#regSubmit"), "icon wrong", regDes.RegSystemDefault);
							break;
					}
				}
				that.unlockRegSubmitBtn();
				that.refreshVCodeImg();
			});
			//} else {
			//    this.lockRegSubmitBtn();
			//    var tmp = JSON.stringify(viewModelData);
			//    var data = {"viewModelStr": tmp};
			//    $.post("/passport/ajax/reg/regSubmit", data, function (res) {
			//        if(res.success){
			//
			//        }else{
			//
			//        }
			//    });
			//}
		},
		request: function(paras) {
			var url = location.href;
			var paraString = url.substring(url.indexOf("?") + 1, url.length).split("&");
			var paraObj = {};
			for (i = 0; j = paraString[i]; i++) {
				paraObj[j.substring(0, j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=") + 1, j.length);
			}
			var returnValue = paraObj[paras.toLowerCase()];
			if (typeof(returnValue) == "undefined") {
				return "";
			} else {
				return returnValue;
			}
		},
		newUserUpMouseDown: function(evt) {
			if (evt.keyCode == 13) {
				this.newUserUp.find("input[method='regSubmit']").click();
			}
		},
		clickPhoneNumRegion: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "showPhoneTypes":
					if ($("#phoneTypeList").is(":visible")) {
						$("#phoneTypeList").hide();
					} else {
						$.get("/passport/ajax/reg/getPhoneAcListReg", function(res) {
							switch (res.success) {
								case true:
									var phoneListHtml = "";
									var phoneList = res.data;
									for (var i = 0; i < phoneList.length; i++) {
										if (phoneList[i].acId == 1 || phoneList[i].acId == 5) {
											phoneListHtml += "<li value=\"" + phoneList[i].acId + "\"" + " method=\"selectPhoneType\">" + phoneList[i].acDsc + "</li>";
										} else {
											phoneListHtml += "<li value=\"" + phoneList[i].acId + "\"" + " method=\"selectPhoneType\">" + phoneList[i].acDsc + "</li>";
										}
									}
									$("#phoneTypeList").html(phoneListHtml);
									$("#phoneTypeList").show();
									break;
								case false:
									return;
									break;
								default:
									break;
							}
						});
					}
					break;
				case "selectPhoneType":
					var phoneType = element.attr("value");
					$("#phoneTypeList").hide();
					$("#phoneType").attr("value", phoneType);
					switch (phoneType) {
						case "1":
						case "5":
							var phoneAc = this.isEn ? "CN(+86)" : "中国大陆+86";
							$("#phoneType").html(phoneAc);
							break;
						case "2":
						case "6":
							var phoneAc = this.isEn ? "HK(+852)" : "中国香港+852";
							$("#phoneType").html(phoneAc);
							break;
						case "3":
						case "7":
							var phoneAc = this.isEn ? "MC(+853)" : "中国澳门+853";
							$("#phoneType").html(phoneAc);
							break;
						case "4":
						case "8":
							var phoneAc = this.isEn ? "TW(+886)" : "中国台湾+886";
							$("#phoneType").html(phoneAc);
							break;
					}
					break;
				default:
					break;
			}
		},
		judgeShowHaveCardReg: function() {
			if (this.isHaveCardReg.prop("checked")) {
				this.cardType.show();
				this.isHaveCardReg.val(1);
			} else {
				this.cardType.hide();
				this.isHaveCardReg.val(0);
			}
		},
		changeCooperateionCardDiv: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "checkRegType":
					this.judgeShowHaveCardReg();
					break;
				case "selectCardParentType":
					$("#cardregview").hide();
					this.showElongCardPwd();
					$.get("/passport/ajax/reg/getChildRegCardType?parentType=" + this.cardParentType.val(),
						function(res) {
							switch (res.success) {
								case true:
									$("#cardChildType").find("option").remove();
									var childTypeList = res.data;
									if (childTypeList && childTypeList.length > 0) {
										for (var i = 0; i < childTypeList.length; i++) {
											var str = "<option value=" + childTypeList[i].cardProxyId + ">" + childTypeList[i].childCardName + "</option>";
											$("#cardChildType").append(str);
										}
									}
									break;
								case false:
									break;
								default:
									break;
							}
						});
					break;
			}
		},
		onClickOnAdditionReg: function(evt) {
			if (this.addition.css("display") == "none") {
				this.addition.css("display", "block");
				this.onAdditionBtn.val("1");
			} else {
				this.addition.css("display", "none");
				this.onAdditionBtn.val("0");
			}
		},
		onClickRuledItems: function(evt) {
			if (!this.regRulesItems.is(":visible")) {
				this.regRulesItems.show();
			} else if (this.regRulesItems.is(":visible")) {
				this.regRulesItems.hide();
			}
		},
		//复用函数
		showElongCardPwd: function() {
			if (this.cardParentType.val() == "19") {
				this.newUserUp.find("dt[method='cardName']").hide();
				this.newUserUp.find("dd[method='childCardName']").hide();
				this.newUserUp.find("dt[method='eLongCardPwd']").show();
				this.newUserUp.find("dd[method='elongCardValue']").show();
			} else {
				this.newUserUp.find("dt[method='cardName']").show();
				this.newUserUp.find("dd[method='childCardName']").show();
				this.newUserUp.find("dt[method='eLongCardPwd']").hide();
				this.newUserUp.find("dd[method='elongCardValue']").hide();
			}
		},
		showTipMessage: function(element, icon, message) {
			element.parent().find("span#tip").remove();
			var content = "";
			if (icon.indexOf("icon wrong") != -1) {
				content = "<span id=\"tip\" method = \"tip\"><i class=\"" + icon + "\"></i>" + message + "<\/span>";
			} else {
				content = "<span id=\"tip\" method = \"tip\" class=\"" + icon + "\">" + message + "<\/span>";
			}
			if (element.attr("id") && element.attr("id").toLowerCase() == "validatecode") {
				$("span#validate_code_tip_info").html(content);
			} else {
				element.after(content);
			}
		},
		refreshVCodeImg: function() {
			var url = $("#validateImg").attr("src");
			var date = new Date();
			url = url.split('?')[0];
			url = url + "?t=" + date.getTime();
			$("#validateImg").attr("src", url);
		},
		validateImgOnMouseOver: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "validateImg":
					{
						element.css("cursor", "pointer");
					}
					break;
			}
		},
		validateImgOnMouseOut: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "validateImg":
					{
						element.css("cursor", "");
					}
					break;
			}
		},
		hideTipMessage: function() {
			$("span[method='tip']").hide();
		},
		removeTipMessage: function(element) {
			element.parent().find("span#tip").remove();
			if (element.attr("id").toLowerCase() == "validatecode") {
				$("span#validate_code_tip_info").html("");
			}
		},
		// 每个输入框被点中的时候，后方出现提示语
		onFocusRegBaseMessageRegion: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			var emptyTipClassName = "icon input_remind";
			switch (method) {
				case "validateEmail":
					{
						$("#phoneTypeList").hide();
						var tipMessage = regDes.RegValidateEmailInfo;
						this.removeTipMessage(element);
						if (!this.stringIsEmpty(element.val())) {
							this.validateEmail(element);
						}
					}
					break;
				case "smsCodeInput":
					$("#phoneTypeList").hide();
					this.removeTipMessage(element);
					if (this.stringIsEmpty(element.val())) {
						this.showTipMessage(element, emptyTipClassName, "请填写接收到的短信验证码");
					} else {
						this.validateSMSCode(element);
					}
					break;
				case "validateMobile":
					{
						$("#phoneTypeList").hide();
						var tipMessage = regDes.RegValidateMobileInfo;
						this.removeTipMessage(element);
						if (this.stringIsEmpty(element.val())) {
							this.showTipMessage(element, emptyTipClassName, tipMessage);
						} else {
							this.validateMobile(element);
						}
					}
					break;
				case "validatePassword":
					{
						$("#phoneTypeList").hide();
						var tipMessage = regDes.RegValidatePasswordInfo;
						this.removeTipMessage(element);
						if (this.stringIsEmpty(element.val())) {
							this.showTipMessage(element, emptyTipClassName, tipMessage);
							if (element.parents("li").hasClass("pass_level")) {
								element.parents("li").removeClass("pass_level");
							}
						} else {
							this.validatePassowrd(element);
						}
					}
					break;
				case "validateRePassword":
					{
						$("#phoneTypeList").hide();
						var tipMessage = regDes.RegValidateRePasswordInfo;
						this.removeTipMessage(element);
						if (this.stringIsEmpty(element.val())) {
							this.showTipMessage(element, emptyTipClassName, tipMessage);
						} else {
							this.validateRePassowrd(element);
						}
					}
					break;
				case "ValidateCode":
					{
						$("#PhoneTypeList").hide();
						var tipMessage = regDes.RegValidateCodeInfo;
						this.rmoveTipMessage(element);
					}
					break;
			}
		},
		//每个输入框失焦时的事件
		onBlurRegBaseMessageRegion: function(evt) {
			var element = E.event.element(evt);
			var method = element.attr("method");
			switch (method) {
				case "validateEmail":
					{
						this.removeTipMessage(element);
						if (!this.stringIsEmpty(element.val())) {
							this.validateEmail(element);
						}
					}
					break;
				case "validateMobile":
					{
						this.removeTipMessage(element);
						if (!this.stringIsEmpty(element.val())) {
							this.validateMobile(element);
						}
					}
					break;
				case "smsCodeInput":
					this.removeTipMessage(element);
					break;
				case "validatePassword":
					{
						this.removeTipMessage(element);
						if (!this.stringIsEmpty(element.val())) {
							this.validatePassowrd(element);
							if (!element.parents("li").hasClass("pass_level")) {
								element.parents("li").addClass("pass_level");
							}
							//增加密码强度提示
							var strength = ["Weak", "Medium", "Strong"];
							var tipmsg = "Password Security:";
							if (lang == "cn") {
								strength = ["弱", "中", "强"];
								tipmsg = "密码强度：";
							}
							var pw = element.val();
							//[a-zA-Z]
							var regex = /[a-zA-Z]/;
							var hasletter = pw.search(regex) != -1 ? 1 : 0;
							regex = /[0-9]/;
							var hasDigit = pw.search(regex) != -1 ? 1 : 0;
							var hasSpecialCh = hasletter == 1 && hasDigit == 1 ? 1 : 0;
							var pwLevel = hasletter + hasDigit + hasSpecialCh;
							var msg = document.getElementById("pwstrengthtxt");
							var level = pwLevel > 0 ? pwLevel - 1 : 0;
							msg.innerHTML = "";
							msg.innerHTML = tipmsg + strength[level];
							$(msg).show();
							$("#pwstrength").find("s").each(function(i) {
								if (i <= level) {
									$(this).show();
								} else {
									$(this).hide();
								}
							});
							$("#pwstrength").show();
						} else {
							if ($("#pwstrengthtxt").is(":visible")) {
								$("#pwstrengthtxt").hide();
							}
							if ($("#pwstrength").is(":visible")) {
								$("#pwstrength").hide();
							}
						}
					}
					break;
				case "validateRePassword":
					{
						this.removeTipMessage(element);
						if (!this.stringIsEmpty(element.val())) {
							this.validateRePassowrd(element);
						}
					}
					break;
				case "validateCode":
					{}
					break;
			}
		},
		//验证艺龙卡注册
		validateCard: function(element) {
			if (lang == "cn" && websiteType == "standard") {
				if (this.isHaveCardReg.is(':checked')) {
					if (this.cardParentType.val() == "19") {
						if (this.stringIsEmpty(this.cardRegCardNo.val())) {
							$error(this.cardRegCardNo, regDes.RegElongCard_Empty_Error);
							return false;
						}
						if (isNaN(this.cardRegCardNo.val())) {
							$error(this.cardRegCardNo, regDes.RegElongCard_Input_Error);
							return false;
						}
						return true;
					} else {
						if (this.stringIsEmpty(this.cardRegCardNo.val())) {
							$error(this.cardRegCardNo, regDes.RegUinonCard_Error);
							return false;
						}
						return true;
					}
				} else {
					//未选择持卡注册直接注册
					return true;
				}
			} else {
				//英文网无持卡注册和联盟
				return true;
			}
		},
		//验证手机号
		validateMobile: function(element, callback) {
			var result = this.validateMobileLocal(element);
			if (result) {
				var userPhone = element.val();
				var extendUserPhone = userPhone;
				if (lang != "en") {
					extendUserPhone = this.getExtendUserPhone(userPhone);
				}
				if (lang == "en" && extendUserPhone == "") {
					return true;
				}
				var that = this;
				//that.showTipMessage(element, "icon input_right", "");
				if (callback) {
					callback();
				}
				return true;
			}
			return result;
		},
		validateMobileLocal: function(element) {
			if (lang == "en") {
				if (this.stringIsEmpty(element.val())) {
					return true;
				}
			}
			if (this.stringIsEmpty(element.val())) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidateMobile_Empty_Error);
				return false;
			} else {
				var userPhone = element.val();
				if (lang == "en") {
					if (!this.validator.valid(userPhone, "mobile")) {
						this.showTipMessage(element, "icon input_wrong", regDes.RegValidateMobile_Input_Error);
						return false;
					} else {
						return true;
					}
				} else {
					var extendUserPhone = this.getExtendUserPhone(userPhone);
					if (!this.validator.valid(extendUserPhone, "mobile")) {
						this.showTipMessage(element, "icon input_wrong", regDes.RegValidateMobile_Input_Error);
						return false;
					} else {
						return true;
					}
				}
			}
		},
		validateSMSCode: function(element) {
			if (this.stringIsEmpty(element.val())) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidateSMSCode_Empty_Error);
				return false;
			}
			return true;
		},
		validateEmail: function(element, callback) {
			var result = this.validateEmailLocal(element);
			if (result) {
				var userEmail = element.val();
				var that = this;
				//that.showTipMessage(element, "icon input_right", "");
				if (callback) {
					callback();
				}
				return true;
			}
			return result;
		},
		validateEmailLocal: function(element) {
			if (this.stringIsEmpty(element.val())) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidateEmail_Empty_Error);
				return false;
			} else {
				var pattern = /^\w+((-\w+)|(\.\w+))*\@{1}yahoo\.(cn|com\.cn)$/;
				if (pattern.test(element.val().toLowerCase())) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidateEmail_Yahoo_Error);
					return false;
				}
				if (!this.validateString(element.val(), "email")) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidateEmail_Input_Error);
					return false;
				} else {
					return true;
				}
			}
		},
		validatePassowrd: function(element) {
			var passLength = element.val().length;
			var passValue = element.val();
			if (passValue == "" || passValue == null || !passValue) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Empty_Error);
				return false;
			} else {
				for (i = 0; i < element.val().length; i++) {
					var c = element.val().charCodeAt(i);
					if (c >= 0 && c <= 127) {
						continue;
					} else {
						this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Input_Error);
						return false;
					}
				}
				//增加密码不能是邮箱和手机验证
				if (this.email.val().indexOf(element.val()) >= 0) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Email_Mobile_Error);
					return false;
				}
				if (this.mobile.val().indexOf(element.val()) >= 0) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Email_Mobile_Error);
					return false;
				}
				if (passLength < 6 || passLength > 30) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Input_Error);
					return false;
				} else {
					this.showTipMessage(element, "icon input_right", "");
					return true;
				}
			}
		},
		validateRePassowrd: function(element) {
			var passLength = element.val().length;
			var passValue = element.val();
			if (passValue == "" || passValue == null || !passValue) {
				this.showTipMessage(element, "icon input_wrong", regDes.RegValidateRePassword_Empty_Error);
				return false;
			} else {
				for (i = 0; i < element.val().length; i++) {
					var c = element.val().charCodeAt(i);
					if (c >= 0 && c <= 127) {
						continue;
					} else {
						this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Input_Error);
						return false;
					}
				}
				if (passLength < 6 || passLength > 30) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidatePassword_Input_Error);
					return false;
				}
				if (element.val() != this.password.val()) {
					this.showTipMessage(element, "icon input_wrong", regDes.RegValidateRePassword_Reapt_Error);
					return false;
				} else {
					this.showTipMessage(element, "icon input_right", "");
					return true;
				}
			}
		},
		stringIsEmpty: function(str) {
			if ("undefined" == str || str == "") {
				return true;
			}
			return false;
		},
		validateString: function(str, type) {
			switch (type) {
				case "mobile":
					if (isNaN(str) || str.length == 11) {
						return true;
					}
					return false;
					break;
				case "email":
					var pattern = /^\w+((-\w+)|(\.\w+))*\@{1}\w+((-\w+)|(\.\w+))*\.{1}\w{2,4}(\.{0,1}\w{2,4}){0,4}$/;
					if (pattern.test(str.toLowerCase())) {
						return true;
					}
					return false;
					break;
				case "elongcard":
					break;
				default:
					break;
			}
			return false;
		},
		getExtendUserPhone: function(userPhone) {
			var phoneType = $("#phoneType").attr("value");
			var extendUserPhone;
			switch (phoneType) {
				case "1":
				case "5":
					extendUserPhone = userPhone;
					break;
				case "2":
				case "6":
					extendUserPhone = "852" + userPhone;
					break;
				case "3":
				case "7":
					extendUserPhone = "853" + userPhone;
					break;
				case "4":
				case "8":
					extendUserPhone = "886" + userPhone;
					break;
			}
			return extendUserPhone;
		},
		bindChangeEvent: function(region, handler) {
			region.find("select").bind("change", handler);
			region.find("input").bind("change", handler);
		},
		unbindChangeEvent: function(region) {
			region.find("select").unbind("change");
			region.find("input").unbind("change");
		},
		lockRegSubmitBtn: function() {
			$("#NewUserUp").find("input[method='regSubmit']").attr("disabled", true);
			$("#NewUserUp").find("input[method='regSubmit']").attr("value", regDes.IsHavingRegUser);
		},
		unlockRegSubmitBtn: function() {
			$("#NewUserUp").find("input[method='regSubmit']").removeAttr("disabled");
			$("#NewUserUp").find("input[method='regSubmit']").attr("value", regDes.RegValidate_AgeeRules_Info);
		},
		getRegInfo: function() {
			viewModelData.isHaveCardReg = this.isHaveCardReg.val();
			viewModelData.cardParentTypeValue = this.cardParentType.val();
			viewModelData.cardChildTypeValue = this.cardChildType.val();
			var suppressAllMailings = "1";
			if (!$("#getSalesPromotionMsgCheckBox").is(':checked')) {
				suppressAllMailings = "3";
			}
			viewModelData.suppressAllMailings = suppressAllMailings;
			var userPhone = this.mobile.val();
			if (isEn) {
				viewModelData.mobile = userPhone
			} else {
				viewModelData.mobile = this.getExtendUserPhone(userPhone);
			}
			viewModelData.smsCode = this.smsCodeInput.val();
			viewModelData.email = this.email.val();
			viewModelData.password = encodeURIComponent(this.password.val());
			viewModelData.rePassword = encodeURIComponent(this.rePassword.val());
			viewModelData.cardRegCardNo = this.cardRegCardNo.val().replace(/^\s+|\s+$/gm, '');
			viewModelData.cardRegCardPassword = this.cardRegCardPwd.val();
			viewModelData.validateCode = this.validateCode.val();
			//如果选择个性化信息，给个性化手机信息属性赋值
			if (this.onAdditionBtn.val() == "1") {
				viewModelData.isPersonCollect = "true";
				viewModelData.prefCity = $("#prefCityInput").val();
				viewModelData.businessTripRate = $("#NewUserUp").find("input[type='radio'][name='BusinessRate']:checked").val();
				viewModelData.prefBuinessHotelPrice = $("#NewUserUp").find("input[type='radio'][name='BusinessHotel']:checked").val();
				viewModelData.travelRate = $("#NewUserUp").find("input[type='radio'][name='TravelRate']:checked").val();
				viewModelData.prefTravelHotelPrice = $("#NewUserUp").find("input[type='radio'][name='TravelHotel']:checked").val();
			}
		}
	});
	new registerPage;
});