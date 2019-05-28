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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=Z60o25qSRChjRBuFMBO5T705Bbv53cbC"></script>


<link rel="stylesheet" rev="stylesheet"
	href='${pageContext.request.contextPath }/statics/css/order/new2015.min.css'
	type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/order/order_edit_2016.css' />
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
				<li class="w-419 "><span></span> <b><s></s>在线支付</b></li>
				<li class="w-311"><span></span> <b><s></s>订单完成</b></li>
			</ul>
		</div>
	</div>
	<div class="content_wrap">
		<div class="w1000 clearfix">
			<div class="hotel_inf left">

				<div class="hotel_inf_w">
					<ul class="dsider_per_list pb10 clearfixs">
						<li>
							<div class="dsider_per_pic">
								<a title="${hotel.hotelName }"
									href="toIndex3?hotelId=${hotel.hotelId }"> <img width="80"
									height="80"
									src="${pageContext.request.contextPath }${hotel.fileUrl }"
									onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
								</a>
							</div>
							<div class="dsider_per_text">
								<h3 class="link555 yahei">
									<a title="${hotel.hotelName }" href="toIndex3" class="mr5">${hotel.hotelName }</a>
									<b class="icon_stars icon_elevel5"></b>
								</h3>
								<p class="t12 c999">${hotel.hotelAddress }</p>
								<p class="mt2 mb6">
									<span class="room_info"><b>${house.houseType }</b> <em>
											${house.productName }</em> </span> <span class="tabs-ws"> <b
										class="icons-tabs"></b> <em class="tabs-cn"> </em>
									</span>
								</p>
							</div>
						</li>
					</ul>

					<div class="hotel_roominfobox">
						<ul id="hotelRoomInfoUl" isdis="block"
							class="hotel_roominfo pb10 clearfix">
							<li><span class="c999">床型：</span> <em>${house.bedType }</em>
							</li>
							<li><span class="c999">面积：</span> <em>${house.contentOne }</em>
							</li>
							<li><span class="c999">宽带：</span> <em>${house.contentTow }</em>
							</li>
							<li><span class="c999">早餐：</span> <em> <c:if
										test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if> <c:if
										test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if> <c:if
										test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if></em></li>
							<li><span class="c999">楼层：</span> <em>${house.contentThree }</em>
							</li>
							<li><span class="c999">可住：</span> <em>
									${house.contentFour }人 </em></li>
							<li class="w295"><span class="c999">其他：</span> <em
								id="othernotes">${house.contentFive }</em></li>
						</ul>

						<span id="hotelRoomInfoShowpmessage" message="展示房型信息"><span
							id="hotelRoomInfoHidepmessage" message="收起房型信息"></span></span>
					</div>
				</div>
				<div class="hhelp mt15">
					<ul class="clearfix">
						<li class="hp_lists"><a><i class="icon_line"></i><span>在线客服</span></a><span
							class="v-line">|</span></li>
						<li class="hp_listt"><i class="icon_pht"></i><span>95711</span></li>
					</ul>
				</div>
			</div>
			<div class="edit_booking_wrap right ">
				<div class="edit_booking">
					<div class="booking_sinf pb0">
						<span class="s_title yahei">预订信息</span>
						<div id="isOnTimeProduct" class="ss_tips_a">
							现在预订，<span class="c49f">30</span>秒内确认订单
						</div>
						<dl class="date_modify clearfix">
							<dt class="lh-20">入离日期</dt>
							<dd>
								<b >${checkInDate}</b> <span class="t12 c999"></span> 到 <b>${checkOutDate}</b>
								<span class="t12 c999"></span> <em class="t12">共${day}晚</em>
							</dd>
						</dl>
						<dl class="num_modify clearfix">
							<dt>房间数量</dt>
							<dd>
								<span class="num-stock"> <a href="javascript:void(0);"
									class="btn-reduce" name="btnReduce" onclick="delIntoPerson()">-</a>
									<input type="text" readonly="readonly" class="buy-num"
									value="1" id="rdoRoomNum1" /> <a href="javascript:void(0);"
									class="btn-add" name="btnAdd" onclick="addIntoPerson()">+</a> 间
								</span>
								<div id="numLimitError" style="display: none"></div>
								<div id="tenUpError" style="display: none">
									<p>
										<i class="icon_cancel_n mr5"></i>若需要预订10间以上，请您联系客服进行处理
									</p>
								</div>
								<div id="isOnTimePrompt" style="display: none">
							</dd>
						</dl>
						<dl class="total_modify clearfix">
							<dt class="total_modify_tit">房费总计</dt>
							<dd class="total_modify_mn">
								<span class="t18 cf55 bd_dotted" id="spOrderTotalPrice">&yen;${house.housePrice *day}</span>
								<span class='t12 c999 pl5' id="dvCouponInfoSmall"></span> <span
									id="price" style="display: none;">${house.housePrice *day}</span>
							</dd>
						</dl>

						<!-- html内容 -->
						<div class="el-poptip el-poptip-shadow"
							style="margin-bottom: 10px; width: 500px; margin-left: 100px; display: none"
							isdis="none" id="pricedivinfo">
							<div class="">
								<div class="el-poptip-container">
									<div class="el-poptip-arrow el-poptip-arrow-1"
										style="right: 260px;">
										<em>◆</em> <span>◆</span>
									</div>
									<div class="el-poptip-content">
										<!-- html内容 -->
										<div class="pri_date">

											<dl class="clearfix">
												<dt>
													${fn:split(checkInDate, '-')[1]}-${fn:split(checkInDate, '-')[2]}<span></span>
												</dt>
												<dd>
													<p class="t14">
														&yen;<span class="cf55">${house.housePrice}</span>
													</p>
													<p></p>
													<p class="c999">
														<c:if test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if>
														<c:if test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if>
														<c:if test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if>
													</p>
												</dd>
											</dl>
											<dl class="clearfix">
												<dt>
													${fn:split(checkOutDate, '-')[1]}-${fn:split(checkOutDate, '-')[2]}<span></span>
												</dt>
												<dd>
													<p class="t14">
														&yen;<span class="cf55">${house.housePrice}</span>
													</p>
													<p></p>
													<p class="c999">
														<c:if test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if>
														<c:if test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if>
														<c:if test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if>
													</p>
												</dd>
											</dl>
										</div>

										<!-- html内容结束 -->
									</div>
								</div>
							</div>
						</div>
						<!-- html内容结束 -->
					</div>

					<div class="line-ds"></div>
					<div class="booking_sinf">
						<span class="s_title yahei" id="spStayInfo">入住信息</span>
						<dl class="clearfix user" id="dlRoomId0">
							<dt>
								入住人<span class="cf55">*</span>
							</dt>
							<dd>
								<input class="input_txt w280 mr5 c999 userName" type="text"
									data-id="0" data-handle="person" value="入住人姓名，每间房只需填一位"
									maxlength="20" data-seq="1">
								<div class="usererror"></div>
								<div style="display: none; z-index: 99;" class="loginWrap"
									data-handle="customerView"></div>
							</dd>
						</dl>
						<dl class="clearfix">
							<dt>
								联系电话<span class="cf55">*</span>
							</dt>
							<dd class="clearfix">
								<div class="b_nums w122 mr5">
									<select name="" id="selPhoneInden" style="height: 25px;">
										<option value="">中国大陆(+86)</option>
										<option value="852">中国香港(+852)</option>
										<option value="853">中国澳门(+853)</option>
										<option value="886">中国台湾(+886)</option>
									</select>
								</div>
								<input class="input_txt" style="width: 153px;" type="text"
									id="inContactPhone" maxlength="11" placeholder='您将收到确认短信' />
								<div class="phoneerror"></div>
								<br />
							</dd>
						</dl>


						<dl class="clearfix">
							<dt>
								Email<span class="cf55" style="display: none;" id="emailRequire">*</span>
							</dt>
							<dd>
								<input class="input_txt w280" type="text" id="inContactEmail" />
							</dd>
						</dl>

					</div>
					<div class="line-ds"></div>
					<div class="redBugTip booking_sinf ">
						<p class="s_title yahei">本单优惠</p>
						<ul>
							<li class="clearfix mt10 none"><span class="title mr22">礼包</span>
								<p></p></li>
							<li class="clearfix mt10 none"><span class="title mr22">促销</span>
								<p>
									<span>此产品正在参加促销活动,预订可享活动价</span>
								</p></li>
						</ul>
					</div>
					<div class="cancel-risk" method="insuranceWrap"
						style="display: none">
						<span class="s_title yahei">保险</span>
						<div>
							<input type="checkbox" id="insuranceSwitch" /> <span>我已阅读并同意购买
								<span class="info">《风游国内预付酒店取消险》 <span class="info-fc">
										<b>份数限额：每订单只能投保一份，不得重复投保</b> <b>保险金额：预先支付未使用且无法退回的房费总额的90%（保险订单）</b>
										<b>保险费：订单预付总房费的5%（四舍五入取整到分，保险金额不包含使用优惠券抵扣的金额，以实际支付的金额计算）</b>
								</span>
							</span>
							</span><b class="cf55" id="insurancePrice">￥0</b> <a class="see-det"
								href="http://promotion.elong.com/hotel/cn/2015/insurance/index.html"
								target="_blank">查看详情</a>
						</div>
						<p class="tip">
							<span></span>因故无法入住，在理赔范围可获最高90%赔偿
						</p>
					</div>
					<div class="line-ds" method="insuranceWrap" style="display: none"></div>
					<div class="booking_sinf mb18" id="invoicePart"
						method="invoicePart">
						<div class="receipt">
							<input type="checkbox" method="invoiceSwitch" /> <span
								class='pl5' method="invoiceSwitch">需要发票</span><span class='pl5'
								id='invoiceSwitchSpan2' style="display: none"></span>
						</div>
						<!-- cms start -->
						<DIV
							style="PADDING-BOTTOM: 10px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 10px"
							class=m-placeholder>
							<P class=clearfix>
								<I
									style="MARGIN: 3px 5px 0px 0px; WIDTH: 16px; DISPLAY: inline-block; BACKGROUND: url(http://www.elongstatic.com/web/hotel/pic/arr_icon.png) no-repeat -99px -28px; FLOAT: left; HEIGHT: 16px; VERTICAL-ALIGN: middle; OVERFLOW: hidden"></I>
								<SPAN style="WIDTH: 85%; DISPLAY: inline-block; FLOAT: left">发票由风游公司开具，发票金额为现金支付金额（扣除礼品卡金额，立减金额等）；发票将会在您离店后寄出，普通快递，5日送达（遇节假日顺延）</SPAN>
							</P>
						</DIV>
						<!-- cms end -->
						<p id="invoiceIdentifyTip" class="text_idt text_idt1 mt10"
							style="display: none">
							<i class="icon_cancel_no mr5"></i><span>国家税务总局要求，2017年7月1日起，企业发票需带有纳税人识别号或统一社会信用代码，否则无法报销。如暂时忘记可先行预订酒店，后续补开发票即可。</span>
						</p>
						<div method="invoiceContent" class="receipt_edit mt10"
							style="display: none">
							<p class="invoice_type clearfix">
								<span class="" method="invoiceTypedian" style="display: block"><b></b>电子普票</span>
								<span class="" method="invoiceTypezhi"><b></b>纸质普票</span> <span
									class="" method="invoiceTypezhuan"><b></b>纸质专票</span>
							</p>
							<dl class="clearfix" method="expressWayDl">
								<dt>
									邮寄方式<span class='cf55'>*</span>
								</dt>
								<dd class="clearfix">
									<label class="cf55 fw700 mr40"> <input
										name="expressWay" checked="true" method="expressWay"
										class="mr10" type="radio" />￥10
									</label> <label class="mr40"> <input name="expressWay"
										method="expressWay" type="radio" disabled="disabled"
										class="mr10" data-id="2" />白金卡免费
									</label> <span class="cbbb" id="expressWayExplain1"><i
										class="mr10 icon_cancel_no"></i>提供￥10快递费用定额发票，随酒店发票一并寄出</span> <span
										class="cbbb" id="expressWayExplain2" style="display: none"><i
										class="mr10 icon_cancel_no"></i>积分抵扣不提供快递费用定额发票</span>
								</dd>
							</dl>
							<dl class="clearfix" id="titleTypeWrap">
								<dt>
									抬头类型 <span class='cf55'>*</span>
								</dt>
								<dd>
									<span class="pr5"> <select id="titleType"
										name="titleType" style="height: 25px;">
											<option selected="selected" value="2">公司</option>
											<option value="1">个人</option>
											<option value="3">机关单位</option>
									</select>
									</span>
								</dd>
							</dl>
							<dl class="clearfix">
								<dt>
									发票内容 <span class='cf55'>*</span>
								</dt>
								<dd>
									<span class="pr5"> <select id="chkInvoiceType"
										name="chkInvoiceType" style="height: 25px;">
											<option selected="selected" value="代订房费">代订房费</option>
											<option value="代订住宿费">代订住宿费</option>
									</select>
									</span>
								</dd>
							</dl>
							<dl class="check_txt clearfix">
								<dt>
									发票抬头 <span class='cf55'>*</span>
								</dt>
								<dd method="titleInfo"></dd>
							</dl>
							<dl class="clearfix" style="display: none"
								method="addNewTitleWrap">
								<dt>&nbsp;&nbsp;</dt>
								<dd>
									<a method='addNewTitle' class='t12' href='javascript:void(0);'>
										+ 输入发票抬头</a>
								</dd>
							</dl>
							<dl method="invoiceIdentify" style="display: none"
								class="clearfix">
								<dt>
									纳税人识别号 <span class="cf55">*</span>
								</dt>
								<dd class="taxNum">
									<input id="invoiceIdentifyValue" type="text"
										class="input_txt w398"><b id="invoiceIdentifyExplain">?</b>
								</dd>
							</dl>
							<div class="pop_invoice" id="identifyExplain"
								style="display: none">
								<div class="red_first mb10">
									<span class="pop_number">1、</span>
									<p class="invoice-list">国家税务总局要求，2017年7月1日起，企业发票需带有纳税人识别号或统一社会信用代码，否则无法报销。</p>
								</div>
								<div class="mb10">
									<span class="pop_number">2、</span>
									<p class="invoice-list">如果您现在不知道企业纳税人识别号或统一社会信用代码，为确保您可以入住，可先行预订，后续补开发票。</p>
								</div>
								<div>
									<span class="pop_number">3、</span>
									<p class="invoice-list">纳税人识别号或统一社会信用代码，请向贵公司税务/财务部门询问。</p>
								</div>
							</div>
							<div method="noHisZhuan" style="display: none">
								<dl class="clearfix">
									<dt>
										纳税人识别号<span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtNoTaxpayer" type="text"
											class="input_txt w398 c999" maxlength="18"
											placeholder="税务登记证上的编号" value="税务登记证上的编号">
									</dd>
								</dl>
								<dl class="clearfix">
									<dt>
										注册地址<span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtRegisteredAddress" type="text"
											class="input_txt w398 c999" maxlength="100"
											placeholder="营业执照上的登记地址" value="营业执照上的登记地址">
									</dd>
								</dl>
								<dl class="add_w clearfix">
									<dt>
										公司电话<span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtPhoneCompany" type="text"
											class="input_txt w398 c999" maxlength="100"
											placeholder="有效公司电话" value="有效公司电话">
									</dd>
								</dl>
								<dl class="clearfix">
									<dt>
										开户银行<span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtDepositBank" type="text"
											class="input_txt w398 c999" maxlength="100"
											placeholder="请与开户许可证保持一致" value="请与开户许可证保持一致">
									</dd>
								</dl>
								<dl class="check_txt clearfix">
									<dt>
										银行账户<span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtBankAccount" type="text"
											class="input_txt w398 c999" maxlength="100"
											placeholder="请与开户许可证保持一致" value="请与开户许可证保持一致">
									</dd>
								</dl>
							</div>
							<div class="mt15 invoice-notebox">
								<input type="checkbox" method="invoiceRemark" /><span
									class='pl5'>发票备注（勾选此项会在真实发票的备注栏中显示酒店预订信息）</span>
								<div class="invoice-note" method="invoiceRemarkContent"
									style="display: none">
									<p>
										<span>酒店名称：</span> <em>郴州仙居岭·京伦酒店</em>
									</p>
									<p>
										<span>入住日期：</span> <em>2019-05-24</em> <span>离店日期：</span> <em>2019-05-26</em>
									</p>
									<p>
										<span>房间数：</span> <em id="invoiceRemarkRoomNum">1间</em>
									</p>
								</div>
							</div>
							<div method="line" class="line" style="display: none"></div>
							<dl class="check_txt clearfix" method="address">
								<dt>
									寄送地址 <span class='cf55'>*</span>
								</dt>
								<dd method="addressInfo"></dd>
							</dl>
							<dl class="clearfix check_txt" style="display: none"
								method="addNewAddressWrap">
								<dt>&nbsp;&nbsp;</dt>
								<dd>
									<a method='addNewAddress' class='t12'
										href='javascript:void(0);'> + 输入新地址</a>
								</dd>
							</dl>
							<div method="noHisAaddress" style="display: none">
								<dl class="clearfix">
									<dt>
										收件人 <span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtNameInput" type="text" class="input_txt w398">
									</dd>
								</dl>
								<dl class="clearfix">
									<dt>
										联系方式 <span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtPhoneInput" type="text" class="input_txt w398">
									</dd>
								</dl>
								<dl class="add_w clearfix">
									<dt>
										寄送地区<span class='cf55'>*</span>
									</dt>
									<dd>
										<span class="pr5"> <select id="province"
											name="province" style="height: 25px;"></select>
										</span> <span>省</span> <span class="pr5"> <select id="city"
											name="city" style="height: 25px;"></select>
										</span> <span>市</span> <span class="pr5"> <select id="area"
											name="area" style="height: 25px;"></select>
										</span> <span>县/区</span>
									</dd>
								</dl>
								<dl class="clearfix">
									<dt>
										详细地址 <span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtStreetInput" type="text" class="input_txt w398">
									</dd>
								</dl>
								<dl class="check_txt clearfix">
									<dt>
										邮编 <span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="txtPostCodeInput" type="text"
											class="input_txt w398">
									</dd>
								</dl>
							</div>
							<div method="invoiceDianPhoneWrap" style="display: none">
								<dl class="clearfix check_txt">
									<dt>
										收票人手机 <span class='cf55'>*</span>
									</dt>
									<dd>
										<input id="invoiceDianPhoneInput" type="text"
											class="input_txt w398">
									</dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="clboth booking_sinf booking_sinf2">
						<span class='s_title yahei'> 预订须知 </span>
						<ul class="clearfix">
							<li><span class='tit_w'><i class='bes_01'></i> <!--需要预付 -->
							</span>
								<p>
									订单提交后需要在线支付房费 <span class='cf55' id="spCreditAmt">&yen;<span>${house.housePrice * day }</span>元
									</span>，如未预订成功，房费全部原路退还
								</p></li>
							<li><span class=tit_w><i class=bes_04></i></span>
								<p>订单一经确认成功，不可取消或变更；如未能如约入住，您的预付房费将不予退还。</p></li>
							<li><span class='tit_w'><i class='bes_01'></i> </span>
								<p>退还金额境内卡5个工作日内到账，境外卡20个工作日内到账</p></li>
						</ul>
					</div>
					<div id="dvCouponInfo" class="booking_sinf booking_sinf3 none"></div>
					<div class="toolbar-right clearfix">
						<div class="toolbar-normal clearfix">
							<div class="comm-right clearfix">
								<div class="btn-area">
									<a id="btnSubmitOrder" class="ml50 btn_red_w1">提交订单</a>
								</div>
								<div class="price-sum">
									<p>
										<span class="txt t14 fw600" id="daliyPriceTotalText">在线支付金额</span>
										<span class="price t18 cf55 bd_dotted" id="daliyPriceTotal">&yen;${house.housePrice * day }</span>
										<span class="baoxian" id="daliyPriceTotalInsurance">（含￥0保险）</span>
									</p>

									<p id="daliyPriceOtherAboutTotalP" style="display: none;">
										<span class="txt">约合：</span> <span class="price t16"
											id="daliyPriceOtherAboutTotal"></span>
									</p>

									<span id="dailyPriceDetailShowpmessage" message="显示明细"><span
										id="dailyPriceDetailHidepmessage" message="收起明细"></span></span>
								</div>
							</div>
						</div>

						<form id="submitForm"></form>
						<div id="dvSubmitLoading" style="display: none;">
							<div class="mt20 mb20 tc t14">
								<p>
									<span class="loading_b vm mr10"></span>小艺正在提交订单...
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form id="orderFrom" action="subOrder" method="post" style="display: none;">
			<input id="realstore" name="realstore" value="${real.store }"> 
			<input id="userNames" name="userNames"> 
			<input id="checkInDate" name="checkInDate" value="${checkInDate }"> 
			<input id="checkOutDate" name="checkOutDate" value="${checkOutDate }"> 
			<input id="houseId" name="houseId" value="${house.houseId }">
			<input id="place" name="place"> 
			<input id="payAmount" name="payAmount"> 
			<input id="houseCount" name="houseCount">
			<input id="email" name="email">
			<input id="phone" name="phone"> 
			<input id="day" name="day" value="${day }"> 
	</form>
	<div id="allmap"></div>
	<script type="text/javascript">
		var intoPerson = '<dl class="clearfix user" ><dt>入住人<span class="cf55">*</span></dt><dd><input class="input_txt w280 mr5 c999 userName" type="text" data-id="0" data-handle="person" value="入住人姓名，每间房只需填一位" maxlength="20" data-seq="1">  <div class="usererror"></div>     <div style="display:none;z-index: 99;" class="loginWrap" data-handle="customerView"></div></dd></dl>';
		// 定位当前位置
		var map = new BMap.Map("allmap");
		$(function() {
			
		})
		$("#btnSubmitOrder").click(
				function() {
					var userNames="";
					for (var i = 0; i < $(".userName").size(); i++) {
						var u = $(".userName").eq(i);
						if(i!=$(".userName").size()-1){
							userNames=userNames+u.val()+",";
						}else{
							userNames=userNames+u.val();
						}
					}
					var price = $("#price").html()
					$("#userNames").val(userNames);
					$("#payAmount").val(parseFloat(price)* parseFloat($("#rdoRoomNum1").val()));
					$("#houseCount").val(parseFloat($("#rdoRoomNum1").val()));
					$("#email").val($("#inContactEmail").val());
					$("#phone").val($("#inContactPhone").val());
					var geolocation = new BMap.Geolocation();
					geolocation.getCurrentPosition(
							function(r) {
								if (this.getStatus() == BMAP_STATUS_SUCCESS) {
									var mk = new BMap.Marker(r.point);
									map.addOverlay(mk);
									map.panTo(r.point);
									var point = new BMap.Point(r.point.lng,
											r.point.lat);
									var gc = new BMap.Geocoder();
									gc.getLocation(point, function(rs) {
										var addComp = rs.addressComponents;
										alert(addComp.province + ", "
												+ addComp.city + ", "
												+ addComp.district + ", "
												+ addComp.street + ", "
												+ addComp.streetNumber);
										$("#place").val(addComp.city);
										$("#orderFrom").submit();
									});
								} else {
									alert('failed' + this.getStatus());
								}
							}, {
								enableHighAccuracy : true
							})
				})

		function addIntoPerson() {
			var realstore =$("#realstore").val();
			if(parseInt($("#rdoRoomNum1").val())==parseInt(realstore)){
				alert("已达房间数量")
				return;
			}
			$("#dlRoomId0").after(intoPerson)
			$("#rdoRoomNum1").val(parseInt($("#rdoRoomNum1").val()) + 1)
			var price = $("#price").html()
			$("#spOrderTotalPrice").html(
					"￥" + parseFloat(price)
							* parseFloat($("#rdoRoomNum1").val()) + ".0")
			$("#spCreditAmt").html(
					"￥<span>" + parseFloat(price)
							* parseFloat($("#rdoRoomNum1").val()) + ".0"
							+ "</span>")
			$("#daliyPriceTotal").html(
					"￥" + parseFloat(price)
							* parseFloat($("#rdoRoomNum1").val()))
		}
		function delIntoPerson() {
			if (parseInt($("#rdoRoomNum1").val()) > 1) {
				$(".user").eq(parseInt($("#rdoRoomNum1").val()) - 1).remove()
				$("#rdoRoomNum1").val(parseInt($("#rdoRoomNum1").val()) - 1)
				var price = $("#price").html()
				$("#spOrderTotalPrice").html(
						"￥" + parseFloat(price)
								* parseFloat($("#rdoRoomNum1").val()) + ".0")
				$("#spCreditAmt").html(
						"￥<span>" + parseFloat(price)
								* parseFloat($("#rdoRoomNum1").val()) + ".0"
								+ "</span>")
				$("#daliyPriceTotal").html(
						"￥" + parseFloat(price)
								* parseFloat($("#rdoRoomNum1").val()))
			}

		}
	</script>











	<!-- ===================== footer 20190521 start ===================== -->
	<div class="clear"></div>
	<div class="footer" r="3">
		<div class="footer_info">
			<dl>
				<dt>加盟合作</dt>
				<dd>
					<a href="" title="酒店加盟" rel="nofollow">酒店加盟</a>
				</dd>
				<dd>
					<a href="" title="机票酒店分销联盟" rel="nofollow">开放平台</a>
				</dd>
				<dd>
					<a href=" " title="旅游产品代理合作" rel="nofollow">代理合作</a>
				</dd>
				<dd>
					<a href="" title="在线广告服务" rel="nofollow">广告服务</a>
				</dd>
				<dd>
					<a href="" title="风游商家中心" rel="nofollow">商家中心</a>
				</dd>
			</dl>
			<dl>
				<dt>关于风游</dt>
				<dd>
					<a href="" title="酒店大全">酒店大全</a>
				</dd>
				<dd>
					<a href="" title="国际酒店">国际酒店</a>
				</dd>
				<dd>
					<a href="" title="旅行保险">旅行保险</a>
				</dd>
				<dd>
					<a href="" title="校园招聘" rel="nofollow">校园招聘</a>
				</dd>
				<dd>
					<a href="" title="联系风游旅行网" rel="nofollow">联系我们</a>
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
				target="_blank" href="">ICP证:合B2-20180015</a> <br> <a
				rel="nofollow" target="_blank" href=""> <i
				style="background-image: url(http://m.elongstatic.com/pcheaderfooter/2017/06/files/headerfoot/img/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
				京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank" href="">经营执照</a>
			<i class="cm_icon"></i> <a rel="nofollow" target="_blank" href="">《风游旅行网服务条款》</a>
			<i class="cm_icon"></i>违法和不良信息举报电话：95711-9<i class="cm_icon"></i><a
				rel="nofollow" href="mailto:wfjb@ly.com">举报邮箱：wfjb@ly.com</a>
		</div>
		<div class="footer_safe">
			<a class="cm_icon qua-1" href="" rel="nofollow" target="_blank"
				alt="SSL加密认证" title="SSL加密认证">SSL加密认证</a> <a title="风游网通过PCI认证"
				alt="风游网通过PCI认证" target="_blank" rel="nofollow" href=""
				class="cm_icon qua-6">风游网通过PCI认证</a><a class="cm_icon qua-3" href=""
				rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a>
			<a class="cm_icon qua-5" href="" rel="nofollow"
				onclick="CNNIC_change('urlknet')" tabindex="-1" id="urlknet"
				target="_blank" title="可信用网站身份验证" alt="可信用网站身份验证">可信用网站身份验证</a> <a
				class="cm_icon qua-4" href="" rel="nofollow" target="_blank"
				title="诚信示范企业" alt="诚信示范企业">诚信示范企业</a> <a alt="品牌官网认证"
				title="品牌官网认证" target="_blank" rel="nofollow" href=""
				class="cm_icon qua-7">品牌官网认证</a>
		</div>
	</div>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath }/statics/css/order/styles.css">
	<!-- ===================== footer end ===================== -->
	<!-- 可信网站LOGO安装开始 -->

</body>

</html>