require.config({
	baseUrl: HotelController.commonStaticPath + "js/",
	paths: {
		PageList: HotelController.hotelStaticJsPath + "myelong/PageList",
		calendar: HotelController.hotelStaticJsPath + "common/calendar"
	}
}), require(["jquery", "web", "PageList", "calendar", "plugin/error", "plugin/dialog_new", "plugin/tip_new"], function($, E, PageList) {
	var hotelorderlist = E.module.create({
		init: function() {
			this.initializeDOM(), this.initializeEvent(), this.initializeServerData(), this.initializePageList(HotelController.totalPageCount), this.render()
		},
		render: function() {},
		initializeServerData: function() {
			this.isEn = HotelController.isEn, this.langString = HotelController.isEn ? "en" : "cn"
		},
		initializePageList: function(e) {
			var t = this.isEn;
			this.pageList = new PageList({
				language: this.langString,
				pageIndex: 1,
				pageCount: e,
				previousPage: t ? "Previous" : "上一页",
				nextPage: t ? "Next" : "下一页",
				onClickPage: E.addEvent(this, function(e) {
					this.pgClick(e, 1)
				})
			}), 0 == e && $("#placeContent .no_result").show(), this.maxUp, this.canUpload
		},
		initializeDOM: function() {
			this.orderCondition = $("#orderCondition"), this.orderTabItems = $("#OrderRangeItems"), this.myCouponTip = $("#MyCouponTip"), this.couponTipWin, this.orderNum, this.feedbackWin, this.modifyAtags = $(".info_trace [method=modify]"), this.continuePay = $(".info_trace [method=continuePay]"), this.sendSuccessHtml = HotelController.isEn ? '<div class="com_dialog-content com_widget-content">The confirmation has been resent to you. Please check it in a while. </div>' : '<div class="com_dialog-content com_widget-content">信息发送成功，请稍候查收！</div>', this.sendSuccessHtmlTemp = '<div class="com_dialog-content com_widget-content">{0}</div>', this.sendFailHtml = HotelController.isEn ? '<div class="com_dialog-content com_widget-content">Sorry, you\'ve met a failure. Please try again in a while.  </div>' : '<div class="com_dialog-content com_widget-content">信息发送失败，请稍候再试！</div>', this.hotelOrderAgreeHtml = '<div class="com_dialog-content com_widget-content"><div class="sucess_con"><p class="sucess_txt"><span class="sucess_icon mr10"></span>提交成功</p><p>我们会尽快处理，请您稍后查看订单状态。</p></div></div>', this.hotelApplyCbFailHtml = '<div class="canordpop canordpop_f"><div class="canordpop_suc"><div class="canordpop_fail_pri"><i></i>取消失败！</div><div class="canordpop_suc_pri"><p class="tc">抱歉，由于网络错误，请您刷新页面后重新操作取消。</p></div></div></div>', this.hotelApplyCbSuccessHtml = '<div class="canordpop canordpop_f"><div class="canordpop_suc"><div class="canordpop_suc_title"><i></i>申请成功！</div><div class="canordpop_suc_pri"><p class="tc">恭喜，返现申领成功，您的返现会在离店后三个工作日内到账</p></div></div></div>', this.hotelOrderReplyHtml = '<div class="com_dialog-content com_widget-content"><div class="reply_con"><p><textarea name="" id="order_reply_content" cols="30" rows="10">您补充的信息，我们会尽快同酒店核实。</textarea></p><p class="mt20"><input name="" id="hotel_order_reply_submit" class="submit_input" type="button" value="提交"><a id="hotel_order_reply_cancel" href="#">取消</a></p><p class="tip mt20"><span class="error_icon"></span>如有紧急订单问题，请拨打艺龙24小时服务热线：4009-333333</p></div>', this.specialCharEscapeMap = {
				"&": "&amp;",
				"<": "&lt;",
				">": "$gt;",
				'"': "&quot;",
				"'": "$#x27;",
				"/": "$#x2F;"
			}, this.InitFilterSpeciaCharSet(this.specialCharEscapeMap)
		},
		InitFilterSpeciaCharSet: function(e) {
			for (var t in this.specialCharsSet = [], e) this.specialCharsSet.push(t)
		},
		destroyDOM: function() {
			this.orderCondition = null, this.orderTabItems = null, this.myCouponTip = null, this.couponTipWin = null, this.orderNum = null, this.modifyAtags = null, this.continuePay = null
		},
		initializeEvent: function() {
			this.orderTabItems.bind("click", E.addEvent(this, this.tabClick)), this.orderTabItems.bind("onblur", E.addEvent(this, this.orderTabItemsOnblur)), this.orderCondition.bind("click", E.addEvent(this, this.conditionInputClick)), this.myCouponTip.bind("click", E.addEvent(this, this.showOrderTip)), this.modifyAtags.bind("click", E.addEvent(this, this.modifyAtagsClick)), this.continuePay.bind("click", E.addEvent(this, this.continuePayClick)), $(".info_trace [method='goToPay']").bind("click", E.addEvent(this, this.goToPayClick)), $(".info_trace a").bind("mouseout", E.addEvent(this, this.operButtonOut)), $(".info_trace [method=feedback]").bind("click", E.addEvent(this, this.feedbackClick)), $("[method=viewOrderProgress]").bind("click", E.addEvent(this, this.viewOrderProgressClick)), $("[method=fastConfirm]").bind("click", E.addEvent(this, this.fastConfirmClick)), $("[method=ApplyCashBack]").bind("click", E.addEvent(this, this.ApplyCashBackClick)), $("[method=detail_info]").hover(function() {
				$(this).find(".info_txt").children("span").show()
			}, function() {
				$(this).find(".info_txt").children("span").hide()
			}), $("body").on("mouseover", "[isrmb=false]", E.addEvent(this, this.PriceOver)), $("[method=cancelOrder]").on("click", E.addEvent(this, this.cancelOrderClick)), $("body").on("click", "#confirmCancelOrder", E.addEvent(this, this.ConfirmCancelOrderClick)), $("body").on("click", "#dialogModOrder", E.addEvent(this, this.modInfactInfoClick)), $("body").on("click", "#btnOk", E.addEvent(this, this.btnOkClick)), this.closeMobile = $("#closeMobile"), this.closeMobile.bind("click", E.addEvent(this, this.onClickCloseMobile))
		},
		onClickCloseMobile: function(e) {
			var t = E.event.element(e).parents("div[class='once_show']");
			t && 0 < t.length && t.hide()
		},
		reInitializeEvent: function() {
			$(".info_trace [method=modify]").bind("click", E.addEvent(this, this.modifyAtagsClick)), $(".info_trace [method=continuePay]").bind("click", E.addEvent(this, this.continuePayClick)), $(".info_trace [method='goToPay']").bind("click", E.addEvent(this, this.goToPayClick)), $(".info_trace a").bind("mouseout", E.addEvent(this, this.operButtonOut)), $(".info_trace [method=feedback]").bind("click", E.addEvent(this, this.feedbackClick)), $("[method=viewOrderProgress]").bind("click", E.addEvent(this, this.viewOrderProgressClick)), $("[method=fastConfirm]").bind("click", E.addEvent(this, this.fastConfirmClick)), $("[method=ApplyCashBack]").bind("click", E.addEvent(this, this.ApplyCashBackClick)), $("[method=cancelOrder]").on("click", E.addEvent(this, this.cancelOrderClick)), $("[method=detail_info]").hover(function() {
				$(this).find(".info_txt").children("span").show()
			}, function() {
				$(this).find(".info_txt").children("span").hide()
			}), this.closeMobile = $("#closeMobile"), this.closeMobile.bind("click", E.addEvent(this, this.onClickCloseMobile))
		},
		destroyEvent: function() {},
		dispose: function() {
			this.destroyEvent(), this.destroyDOM()
		},
		PriceOver: function(e) {
			var t = E.event.element(e),
				n = $(t).attr("cur"),
				i = $(t).attr("curprice");
			this.priceTemplate = $("#priceMo").html(), null != this.tipWindow && this.tipWindow.close(), this.tipWindow = new E.tip({
				content: E.string.format(this.priceTemplate, n, i),
				eventElement: t,
				defer: !0
			})
		},
		btnOkClick: function() {
			null != this.successDialog && null != this.successDialog && this.successDialog.close(), window.location.reload()
		},
		modInfactInfoClick: function() {
			var e = HotelController.updateOrderHotelUrl.replace("0", this.reserNo);
			e = 0 < e.indexOf("?") ? e + "&UserStartDate=" + this.checkInDate + "&UserEndDate=" + this.checkOutDate : e + "?UserStartDate=" + this.checkInDate + "&UserEndDate=" + this.checkOutDate, window.location.href = e
		},
		cancelOrderClick: function(e) {
			var t = E.event.element(e);
			if (this.reserNo = t.attr("data"), this.hotelId = t.attr("hotelId"), this.checkInDate = t.attr("checkindate"), this.checkOutDate = t.attr("checkoutdate"), this.paymenttype = t.attr("paymenttype"), this.reserNo) {
				this.failedHtml = $("#canFaild").html();
				var n = this.isEn ? "en" : "cn",
					i = HotelController.currentHost + "/ajax/myelong/confirmhotelordercancel/?language=" + n + "&",
					a = this;
				E.ajax.exec(i, {
					ReserNo: this.reserNo
				}, function(e) {
					if (e.success && e.value && e.value.success) {
						e.value.value.canUpateRoomType ? $("#modOrderDiv").show() : $("#modOrderDiv").hide(), e.value.value.cancellationPolicy || $("#rule_txt").html("<span class='c_green bold'>免费变更/取消订单</span>");
						var t = 0;
						e.value.value.cutPrice <= 0 ? ($("#refund_txt").html("<span >订单金额</span>"), t = e.value.value.orderAmount) : ($("#refund_txt").html("<span >取消将扣除金额</span>"), t = e.value.value.cutPrice), a.confirmHtml = $("#canReason").html(), this.confirmDialog = new E.dialog({
							title: HotelController.isEn ? "Is cancel order ?" : "是否取消订单?",
							htmlContent: E.string.format(a.confirmHtml, t, e.value.value.cancellationPolicy),
							width: 600,
							DialogEvent: function(e) {}
						}), this.confirmDialog.show()
					} else {
						new E.dialog({
							title: HotelController.isEn ? "Cancel Order" : "取消订单",
							htmlContent: E.string.format(a.failedHtml, "服务器超时，请重试"),
							width: 570,
							DialogEvent: function(e) {}
						}).show()
					}
				}, "POST", "jsonp")
			}
		},
		ConfirmCancelOrderClick: function(e) {
			E.event.element(e);
			var t = this.isEn ? "en" : "cn",
				n = HotelController.currentHost + "/ajax/myelong/ajaxhotelordercancelsuccess/?language=" + t + "&";
			if (this.failedHtml = $("#canFaild").html(), $("input[name='reason']:checked").length <= 0) alert("请填写取消原因");
			else {
				if (this.reasonCode = $("input[name='reason']:checked").val(), "106" == this.reasonCode) {
					if (this.reason = $.trim($(".canordpop_rea_text")[1].value), "" == this.reason) return void alert("请填写取消原因")
				} else this.reason = $.trim($("input[name='reason']:checked").parent().text());
				E.ajax.exec(n, {
					ReserNo: this.reserNo,
					CancelReasonCode: this.reasonCode,
					CancelReason: this.reason
				}, E.addEvent(this, function(e) {
					if (null != this.confirmDialog && null != this.confirmDialog && this.confirmDialog.close(), e.value && e.value.value && e.value.value.isSuccess) e.value.value.amount <= 0 && $("[name=danbao_txt]").remove(), e.value.value.coupons <= 0 && $("[name=xiaofei_txt]").remove(), this.successHtml = $("#canSuccess").html(), this.successDialog = new E.dialog({
						title: HotelController.isEn ? "Cancel Order" : "取消订单",
						htmlContent: E.string.format(this.successHtml, e.value.value.amount),
						width: 570,
						height: 315,
						DialogEvent: function(e) {}
					}), this.successDialog.show();
					else if (e.value && e.value.value && !e.value.value.isSuccess) {
						new E.dialog({
							title: HotelController.isEn ? "Cancel Order" : "取消订单",
							htmlContent: E.string.format(this.failedHtml, e.value.value.message),
							width: 570,
							height: 395,
							DialogEvent: function(e) {}
						}).show()
					} else {
						new E.dialog({
							title: HotelController.isEn ? "Cancel Order" : "取消订单",
							htmlContent: E.string.format(this.failedHtml, "服务器超时，请重试"),
							width: 570,
							height: 395,
							DialogEvent: function(e) {}
						}).show()
					}
				}), "POST", "jsonp")
			}
		},
		emsCloseClick: function(e) {
			E.event.element(e).parent().css("display", "none")
		},
		fastConfirmClick: function(e) {
			var a = E.event.element(e);
			this.orderNum = a.attr("data"), $(a).css("cursor", "wait");
			var o = 120,
				t = HotelController.currentHost + "/ajax/myelong/fastconfirm/?language=" + this.langString + "&";
			E.ajax.exec(t, {
				orderNo: this.orderNum
			}, E.addEvent(this, function(e) {
				var t, n = "",
					i = "";
				e.value && e.value.success ? (e.value.value && !E.string.isNullOrEmpty(e.value.value.adjustTime) && (this.isEn || (i = "预计" + e.value.value.adjustTime + "前确认"), n = e.value.value.fastConfirmMessage), o = 180) : n = E.string.isNullOrEmpty(e.value.value) || E.string.isNullOrEmpty(e.value.value.fastConfirmMessage) ? "系统繁忙....." : e.value.value.fastConfirmMessage, $(a).css("cursor", "pointer"), $(a).hide(), t = E.string.format("<div class='error_con'> <span class='error_icon'></span><p class='error_txt'>{0}</p></div>", n), new E.dialog({
					title: HotelController.isEn ? "Message" : "提示",
					htmlContent: t,
					height: o,
					DialogEvent: function(e) {}
				}).show(), E.string.isNullOrEmpty(i) || this.isEn || a.parents("ul").find(".info_price").find("h2").find("p.t_w").html(i)
			}), "POST", "jsonp")
		},
		viewOrderProgressClick: function(e) {
			var t = E.event.element(e);
			this.orderNum = t.attr("data");
			var n = t.attr("detailUrl") + "#status_more",
				i = t.parent().parent().parent().next().next();
			if ("block" == $(i).css("display")) $(i).css("display", "none");
			else {
				$(i).css("display", "block"), $(i).html($("#loading").html());
				var a = HotelController.currentHost + "/ajax/myelong/getorderprogress/?language=" + this.langString + "&RType=orderlist&",
					o = this;
				E.ajax.exec(a, {
					orderNo: this.orderNum,
					autograph: $("#userAutograph" + this.orderNum).val()
				}, function(e) {
					e.value && e.value.success && ($(i).html(""), 1 == e.success && ($(i).html(e.value.content), 0 < $("a[method='order_agree']").length && ($("a#order_agree_" + o.orderNum).attr("orderNo", o.orderNum), $("a#order_agree_" + o.orderNum).bind("click", E.addEvent(o, o.HotelOrderAgreeClick))), 0 < $("a[method='order_reply']").length && ($("a#order_reply_" + o.orderNum).attr("orderNo", o.orderNum), $("a#order_reply_" + o.orderNum).bind("click", E.addEvent(o, o.HotelOrderReplyClick)))), o.continuePay.bind("click", E.addEvent(o, o.continuePayClick)), $(".detail_ems .ems_close").bind("click", E.addEvent(o, o.emsCloseClick)), $(".order_detail a").not("[method=resend]").attr("href", n), $(".order_detail a").remove("[method=resend]"), $("a#order_agree_" + o.orderNum).removeAttr("href"), $("a#order_reply_" + o.orderNum).removeAttr("href"))
				}, "POST", "jsonp")
			}
		},
		HotelOrderAgreeClick: function(e) {
			var t = E.event.element(e);
			e.stopPropagation();
			var n = t.attr("orderNo"),
				i = HotelController.currentHost + "/ajax/myelong/hotelagreed/?language=" + this.langString + "&";
			E.ajax.exec(i, {
				orderNo: n
			}, E.addEvent(this, function(e) {
				e.value && e.value.success && (this.HotelOrderAgreeWin = new E.dialog({
					htmlContent: this.hotelOrderAgreeHtml,
					eventElement: t,
					width: 500,
					title: "同意入住",
					DialogEvent: E.addEvent(this, function(e) {
						e.find("a[method=close]").unbind("click"), e.find("a[method=close]").bind("click", E.addEvent(this, this.ReloadHotelList))
					})
				}), this.HotelOrderAgreeWin.show())
			}), "POST", "jsonp")
		},
		ReloadHotelList: function() {
			null != this.HotelOrderAgreeWin && (window.location.reload(), this.HotelOrderAgreeWin.close())
		},
		ReloadApplyCashBackHotelList: function() {
			null != this.HotelApplyCashBackWin && (window.location.reload(), this.HotelApplyCashBackWin.close())
		},
		HotelOrderReplyClick: function(e) {
			var t = E.event.element(e);
			this.orderNum = t.attr("orderNo"), e.stopPropagation(), this.HotelOrderReplyWin = new E.dialog({
				htmlContent: this.hotelOrderReplyHtml,
				eventElement: t,
				width: 500,
				title: "反馈信息",
				DialogEvent: E.addEvent(this, function(e) {
					e.find("textarea#order_reply_content").bind("click", E.addEvent(this, this.InitHotelOrderReplyContent)), e.find("textarea#order_reply_content").bind("blur", E.addEvent(this, this.BlurHotelOrderReplyContent)), e.find("a#hotel_order_reply_cancel").bind("click", E.addEvent(this, this.CancelHotelOrderReplyContent)), e.find("input#hotel_order_reply_submit").bind("click", E.addEvent(this, this.HotelOrderReplySubmitClick))
				})
			}), this.HotelOrderReplyWin.show()
		},
		HotelOrderReplySubmitClick: function(e) {
			E.event.element(e);
			var t = this.orderNum,
				n = this.GetHotelOrderReplyContent();
			if ("" != n && -1 == n.indexOf("您补充的信息，我们会尽快同酒店核实。")) {
				if ("overflow" != n) {
					var i = HotelController.currentHost + "/ajax/myelong/feedbackmessage/?language=" + this.langString + "&";
					window.location.href;
					E.ajax.exec(i, {
						orderNo: t,
						notes: n
					}, E.addEvent(this, function(e) {
						e.value && e.value.success && (this.HotelOrderReplyWin.close(), window.location.reload())
					}), "POST", "jsonp")
				}
			} else alert("请输入回复的内容")
		},
		GetHotelOrderReplyContent: function() {
			var e = "",
				t = ($("#order_reply_content"), $("#order_reply_content").val());
			if (0 < t.length)
				for (var n = 0; n < t.length; n++) this.IsSpecialChar(t.charAt(n)) ? e += this.specialCharEscapeMap[t.charAt(n)] : e += t.charAt(n);
			return (e.length <= 0 || 100 < e.length) && (alert("你输入了超过100个字符，请重新输入"), e = "overflow"), e
		},
		IsSpecialChar: function(e) {
			for (var t = !1, n = 0; n < this.specialCharsSet.length; n++) this.specialCharsSet[n] == e && (t = !0);
			return t
		},
		CancelHotelOrderReplyContent: function(e) {
			this.HotelOrderReplyWin.close()
		},
		InitHotelOrderReplyContent: function(e) {
			var t = E.event.element(e); - 1 != t.val().indexOf("您补充的信息，我们会尽快同酒店核实。") && t.val("")
		},
		BlurHotelOrderReplyContent: function(e) {
			var t = E.event.element(e);
			"" == t.val() && t.val("您补充的信息，我们会尽快同酒店核实。")
		},
		conditionInputClick: function(e) {
			this.orderTabItems.show(), this.orderTabItems[0].focus()
		},
		orderTabItemsOnblur: function(e) {
			this.orderTabItems.hide()
		},
		checkInDateClick: function(e) {
			var i = E.event.element(e),
				a = i.parent().siblings("li").find("input[name=departDate]");
			null != this.checkInCalander && null != this.checkInCalander.windowElement || (this.checkInCalander = new E.calendar({
				eventElement: i,
				leaveDateElement: a,
				selectedDate: i.attr("selectedValue"),
				currLeaveDate: a.attr("selectedValue"),
				language: "cn",
				zindex: 1100,
				enabledFrom: i.attr("enabledFrom"),
				onSelected: E.addEvent(this, function(e) {
					if (this.userCheckIn = e, i.val(e), a.val() <= e) {
						var t = E.validate.convertDate(e);
						t = new Date(t.setHours(24)), t = E.validate.reFormatDateString(t.getFullYear() + "-" + (t.getMonth() + 1) + "-" + t.getDate()), this.userCheckOut = t, a.val(t), this.tempDate = t
					} else {
						var n = E.validate.convertDate(e);
						n = new Date(n.setHours(24)), n = E.validate.reFormatDateString(n.getFullYear() + "-" + (n.getMonth() + 1) + "-" + n.getDate()), this.tempDate = n
					}
				})
			}))
		},
		checkOutDateClick: function(e) {
			var t = E.event.element(e);
			null != this.checkOutCalander && null != this.checkOutCalander.windowElement || (this.checkOutCalander = new E.calendar({
				eventElement: t,
				enabledFrom: this.tempDate,
				selectedDate: this.tempDate > t.val() ? this.tempDate : t.val(),
				language: "cn",
				zindex: 1100,
				onSelected: E.addEvent(this, function(e) {
					this.userCheckOut = e, t.val(e)
				})
			}))
		},
		calanderClose: function() {
			this.tempDate = null, this.userCheckIn = HotelController.inDate, this.userCheckOut = HotelController.outDate, this.calander.close()
		},
		roomNoClick: function(e) {
			var t = E.event.element(e);
			"房间号1/房间号2" == t.val() && (t.val(""), t.removeClass("gray"))
		},
		roomNoBlur: function(e) {
			var t = E.event.element(e);
			"" == t.val() && (t.val("房间号1/房间号2"), t.addClass("gray"))
		},
		feedbackClick: function(e) {
			var t = E.event.element(e);
			this.orderNum = t.attr("data");
			var n = {
				leaveDate: t.attr("leaveDate"),
				arriveDate: t.attr("arriveDate"),
				checkinName: t.attr("checkinName"),
				element: t,
				isCashBack: 0
			};
			this.showFeedBack(n)
		},
		ApplyCashBackClick: function(e) {
			var n = E.event.element(e),
				t = n.attr("data-value").split("|"),
				i = t[0],
				a = t[1] + "&cashBack=1",
				o = t[2],
				l = t[3],
				s = (HotelController.isEn, HotelController.currentHost + "/ajax/myelong/getapplycashbackstatus/?language=" + this.langString + "&");
			E.ajax.exec(s, {
				orderNo: i,
				isCanComment: o,
				isCanFeedBack: l
			}, E.addEvent(this, function(e) {
				if (e.value && e.value.success)
					if (0 < e.value.flag) {
						if (1 == e.value.flag && ($("#applyBackCashForm").attr("action", a), $("#applyBackCashForm").attr("target", "_self"), $("#applyBackCashForm").submit()), 2 == e.value.flag) {
							this.orderNum = i;
							var t = {
								leaveDate: n.attr("leaveDate"),
								arriveDate: n.attr("arriveDate"),
								checkinName: n.attr("checkinName"),
								element: n,
								isCashBack: 1
							};
							this.showFeedBack(t)
						}
						3 == e.value.flag && (this.HotelApplyCashBackWin = new E.dialog({
							htmlContent: this.hotelApplyCbFailHtml,
							eventElement: n,
							width: 500,
							title: "返现申请",
							DialogEvent: E.addEvent(this, function(e) {
								e.find("a[method=close]").unbind("click"), e.find("a[method=close]").bind("click", E.addEvent(this, this.ReloadApplyCashBackHotelList))
							})
						}), this.HotelApplyCashBackWin.show())
					} else this.HotelApplyCashBackWin = new E.dialog({
						htmlContent: 0 == e.value.flag ? this.hotelApplyCbSuccessHtml : this.hotelApplyCbFailHtml,
						eventElement: n,
						width: 500,
						title: "返现申请",
						DialogEvent: E.addEvent(this, function(e) {
							e.find("a[method=close]").unbind("click"), e.find("a[method=close]").bind("click", E.addEvent(this, this.ReloadApplyCashBackHotelList))
						})
					}), this.HotelApplyCashBackWin.show();
				else this.HotelApplyCashBackWin = new E.dialog({
					htmlContent: this.hotelApplyCbFailHtml,
					eventElement: n,
					width: 500,
					title: "返现申请",
					DialogEvent: E.addEvent(this, function(e) {
						e.find("a[method=close]").unbind("click"), e.find("a[method=close]").bind("click", E.addEvent(this, this.ReloadApplyCashBackHotelList))
					})
				}), this.HotelApplyCashBackWin.show()
			}), "POST", "jsonp")
		},
		showFeedBack: function(e) {
			var t = e.leaveDate,
				n = e.arriveDate,
				i = e.checkinName,
				a = e.element,
				o = e.isCashBack;
			this.feedbackWin = new E.dialog({
				htmlContent: $("#feedbackWindow").html(),
				eventElement: a,
				width: 500,
				height: 340,
				title: "入住反馈",
				DialogEvent: E.addEvent(this, function(e) {
					1 == o && (e.find("h1[data-para=0]").addClass("none"), e.find("h1[data-para=1]").removeClass("none")), e.find("#cashBackIden").val(o), e.find("input[method=feedbackSubmit]").bind("click", E.addEvent(this, this.feedbackSubmitClick)), e.find("a[method=feedbackCancel]").bind("click", E.addEvent(this, this.feedbackCancelClick)), e.find("#roomNo").bind("click", E.addEvent(this, this.roomNoClick)), e.find("#roomNo").bind("blur", E.addEvent(this, this.roomNoBlur)), e.find("a[method=close]").unbind("click"), e.find("a[method=close]").bind("click", E.addEvent(this, this.feedbackWinCloseClick))
				})
			}), this.feedbackWin.show();
			var l = this.feedbackWin.windowElement;
			$(window).scroll(E.addEvent(function(e) {
				if ($(".calendar_year")) {
					var t = $(".calendar_year").parent().parent().next();
					null != t && t.remove(), $(".calendar_year").parent().parent().remove(), null != this.checkOutCalander && (this.checkOutCalander = null), null != this.checkInCalander && (this.checkInCalander = null)
				}
			}, this)), l.find("#checkInName").val(i), l.find("#checkInDate").val(n), l.find("#checkInDate").attr("enabledFrom", n), l.find("#departDate").val(t), this.tempDate = t
		},
		feedbackSubmitClick: function(e) {
			E.event.element(e);
			var t = {},
				n = this.feedbackWin.windowElement,
				i = n.find(".form_ul li .text"),
				a = !0;
			t.ReserNo = this.orderNum, t.RoomNo = n.find("#roomNo").val(), t.CheckinName = n.find("#checkInName").val(), t.CheckinDate = n.find("#checkInDate").val(), t.DepartDate = n.find("#departDate").val(), t.Flag = n.find("#cashBackIden").val();
			var o = n.find("#cashBackIden").val();
			if (i.each(function() {
					if ("" == $(this).val()) {
						$(this).next().removeClass("none");
						var e = $(this).next().attr("msgnull");
						return $(this).next().html('<span class="icon_alert"></span>' + e), a = !1
					}
					$(this).next().addClass("none")
				}), "房间号1/房间号2" == t.RoomNo) {
				n.find("#roomNo").next().removeClass("none");
				var l = n.find("#roomNo").next().attr("msgnull");
				n.find("#roomNo").next().html('<span class="icon_alert"></span>' + l), a = !1
			}
			if (-1 != t.RoomNo.indexOf("<") || -1 != t.RoomNo.indexOf(">")) {
				n.find("#roomNo").next().removeClass("none");
				var s = n.find("#roomNo").next().attr("msgerr");
				n.find("#roomNo").next().html('<span class="icon_alert"></span>' + s), a = !1
			}
			if (-1 != t.CheckinName.indexOf("<") || -1 != t.CheckinName.indexOf(">")) {
				n.find("#checkInName").next().removeClass("none");
				s = n.find("#checkInName").next().attr("msgerr");
				n.find("#checkInName").next().html('<span class="icon_alert"></span>' + s), a = !1
			}
			if (!a) return !1;
			var r = HotelController.currentHost + "/ajax/myelong/savefeedbackinfo/?language=" + this.langString + "&";
			return E.ajax.exec(r, {
				feedbackInfo: t
			}, function(e) {
				return e.value && e.value.sucess ? (n.find(".fk_Box form").addClass("none"), 1 == o && (e.value.flag ? n.find(".fk_success").find("h6").html("提交成功，我们会尽快与酒店确认。") : n.find(".fk_success").find("h6").html("抱歉，由于网络错误，返现申请报错，请您刷新页面后重新操作取消。")), n.find(".fk_success").removeClass("none")) : (n.find(".fk_Box form").addClass("none"), n.find(".fk_success").removeClass("none"), n.find(".fk_success").html("提交失败！")), !1
			}, "POST", "jsonp"), !1
		},
		feedbackCancelClick: function(e) {
			return null != this.feedbackWin && this.feedbackWin.close(), !1
		},
		feedbackWinCloseClick: function(e) {
			null != this.feedbackWin && (window.location.reload(), this.feedbackWin.close())
		},
		tabClick: function(e) {
			var t = E.event.element(e),
				n = HotelController.isEn,
				i = 0;
			t.addClass("action").siblings().removeClass("action"), $("#placeContent").html($("#loading").html());
			var a = HotelController.isEn ? "en" : "cn",
				o = HotelController.currentHost + "/ajax/myelong/pagedorderList/?language=" + this.langString + "&";
			switch (t.attr("method")) {
				case "SixMonth":
					this.orderCondition.val(t.text()), this.orderTabItems.hide(), E.ajax.exec(o, {
						PageIndex: 1,
						PageSize: 10,
						sign: 1
					}, E.addEvent(this, function(e) {
						$("#placeContent").html(e[0].value), 0 == (i = $("#OrderTotalPageCount").val()) && $("#placeContent .no_result").show(), this.pageList = new PageList({
							language: this.langString,
							pageIndex: 1,
							pageCount: i,
							previousPage: n ? "Previous" : "上一页",
							nextPage: n ? "Next" : "下一页",
							onClickPage: E.addEvent(this, function(e) {
								this.pgClick(e, 1)
							})
						}), this.reInitializeEvent()
					}), "POST", "jsonp");
					break;
				case "TwelveMonth":
					this.orderCondition.val(t.text()), this.orderTabItems.hide(), E.ajax.exec(o, {
						PageIndex: 1,
						PageSize: 10,
						sign: 2
					}, E.addEvent(this, function(e) {
						$("#placeContent").html(e[0].value), 0 == (i = $("#OrderTotalPageCount").val()) && $("#placeContent .no_result").show(), this.pageList = new PageList({
							language: a,
							pageIndex: 1,
							pageCount: i,
							previousPage: n ? "Previous" : "上一页",
							nextPage: n ? "Next" : "下一页",
							onClickPage: function(e) {
								this.pgClick(e, 2)
							}.bind(this)
						}), this.reInitializeEvent()
					}), "POST", "jsonp")
			}
		},
		pgClick: function(e, t) {
			var n = HotelController.isEn ? "en" : "cn",
				i = HotelController.currentHost + "/ajax/myelong/pagedorderlist/?language=" + n + "&";
			$("#placeContent").html($("#loading").html()), E.ajax.exec(i, {
				PageIndex: e,
				PageSize: 10,
				sign: t
			}, E.addEvent(this, function(e) {
				$("#placeContent").html(e.value.content), this.reInitializeEvent(), this.initializeDOM()
			}), "POST", "jsonp")
		},
		showOrderTip: function(e) {
			var t = E.event.element(e);
			null != this.couponTipWin && null != this.couponTipWin.windowElement || (this.couponTipWin = new E.dialog({
				htmlContent: $("#couponTip").html(),
				eventElement: t,
				width: 730,
				title: "如何返现提示",
				DialogEvent: function(e) {}
			}), this.couponTipWin.show())
		},
		continuePayClick: function(evt) {
			var btn = E.event.element(evt);
			$(btn).css("cursor", "wait"), this.ReserNo = btn.attr("data");
			var lang = HotelController.isEn ? "en" : "cn",
				url = HotelController.currentHost + "/ajax/myelong/getpaymentproviderid/?language=" + lang + "&";
			E.ajax.exec(url, {
				ReserNo: this.ReserNo
			}, E.addEvent(this, function(res) {
				var output = res[0].value;
				if (output = eval("(" + output + ")"), output && output.IsContinuePay) {
					var url = HotelController.currentHost + "/payment_{0}_{1}.html";
					url = String.format(url, this.ReserNo, output.PaymentProviderId), window.location.href = url
				} else {
					var wind = new E.dialog({
						title: HotelController.isEn ? "Message" : "提示",
						htmlContent: HotelController.isEn ? "Time out! Please make a reservation again." : "支付超时！请您重新预订",
						width: 280,
						height: 140,
						DialogEvent: function(e) {}
					});
					wind.show()
				}
			}), "POST", "jsonp")
		},
		goToPayClick: function(e) {
			var t = E.event.element(e);
			$(t).css("cursor", "wait"), this.ReserNo = t.attr("data");
			var n = HotelController.isEn ? "en" : "cn",
				i = HotelController.currentHost + "/ajax/myelong/getgotopayinfo/?language=" + n + "&";
			E.ajax.exec(i, {
				ReserNo: this.ReserNo
			}, function(e) {
				if (e.value) {
					var t = e.value.value;
					if (t && e.value.success) window.location.href = t;
					else new E.dialog({
						title: HotelController.isEn ? "Message" : "提示",
						htmlContent: HotelController.isEn ? "Time out! Please make a reservation again." : "支付超时！请您重新预订",
						width: 280,
						height: 140,
						DialogEvent: function(e) {}
					}).show()
				}
			}, "POST", "jsonp")
		},
		operButtonOut: function(e) {
			var t = E.event.element(e);
			t.hasClass("check_on") && "fastConfirm" != t.attr("method") && $(t).removeClass("check_on")
		},
		modifyAtagsClick: function(e) {
			var t = E.event.element(e);
			$(t).css("cursor", "wait"), $(t).parent().addClass("check_on"), this.Url = t.attr("url");
			var n, i = "<ul>";
			this.orderNum = t.attr("data");
			var a = !1,
				o = '<li><a href="###" method="{1}">{0}</a></li>',
				l = (HotelController.isEn, HotelController.currentHost + "/ajax/myelong/getorderoperation/");
			E.ajax.exec(l, {
				reserNo: this.orderNum
			}, E.addEvent(this, function(e) {
				e.value && e.value.success && (n = e.value, $(t).css("cursor", "pointer"), HotelController.isEn || n.IsNotShowOtherInfo || (a = !0), n.IsShowModButton && (a = !0), 1 == a && (i += E.string.format(o, HotelController.isEn ? "Change Check-in Info" : "修改入住信息", "modifyRuzhu")), n.IsShowAppendCouponBtn && (HotelController.isEn || (i += E.string.format(o, HotelController.isEn ? "Append Coupon" : "追加消费券", "append"))), n.IsShowResendBtn && (i += E.string.format(o, HotelController.isEn ? "Resend the confirmation" : "重发确认短信", "resend")), i += "</ul>", (n.IsShowResendBtn || a || n.IsShowAppendCouponBtn) && (this.showChildTip = new E.tip({
					content: i,
					eventElement: t,
					TipWBindEvent: E.addEvent(this, function(e) {
						n.IsShowAppendCouponBtn && e.find("a[method='append']").bind("click", E.addEvent(this, this.appendCouponClick)), a && e.find("a[method='modifyRuzhu']").bind("click", E.addEvent(this, this.modifyRuzhuClick)), n.IsShowResendBtn && e.find("a[method='resend']").bind("click", E.addEvent(this, this.resendInformClick))
					}),
					width: HotelController.isEn ? 170 : 140,
					floatType: null
				})))
			}), "GET", "jsonp")
		},
		showChildTipHide: function(e) {},
		modifyRuzhuClick: function() {
			this.showChildTip.close(), window.location.href = this.Url + "#modifyRuzhu"
		},
		appendCouponClick: function(e) {
			this.showChildTip.close(), window.location.href = this.Url + "#appendCoupon"
		},
		tipCloseClick: function() {
			this.showChildTip.close()
		},
		resendInformClick: function() {
			this.showChildTip.close();
			var e = HotelController.isEn ? "en" : "cn",
				t = HotelController.currentHost + "/ajax/myelong/resendconfirmation/?language=" + e + "&";
			E.ajax.exec(t, {
				ReserNo: this.orderNum
			}, E.addEvent(this, function(e) {
				var t;
				e.value && e.value.success ? (t = 1 == e.value.flag ? E.string.format(this.sendSuccessHtmlTemp, e.value.value) : this.sendSuccessHtml, new E.dialog({
					title: HotelController.isEn ? "Message" : "提示",
					htmlContent: t,
					width: 280,
					height: 140,
					DialogEvent: function(e) {}
				}).show()) : new E.dialog({
					title: HotelController.isEn ? "Message" : "提示",
					htmlContent: this.sendFailHtml,
					width: 280,
					height: 140,
					DialogEvent: function(e) {}
				}).show()
			}), "POST", "jsonp")
		}
	});
	new hotelorderlist
});