<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="zh">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>【${hotel.hotelName }】– 风游旅行网</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Z60o25qSRChjRBuFMBO5T705Bbv53cbC"></script>


<style type="text/css">
.dd {
	height: 50px
}
</style>

<link rel="stylesheet" rev="stylesheet"
	href='${pageContext.request.contextPath }/statics/css/new2015.min.css'
	type="text/css" media="all" />

<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/hotel-com.css'
	media="all" />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/details-2015.css' />
<link rel="stylesheet" type="text/css"
	href='${pageContext.request.contextPath }/statics/css/img_box_layer.css' />
</head>
<body>
	
   <!-- ===================== header 2019-04-29 start ===================== -->
	
	<!-- ===================== header end ===================== -->

	<div class="cont_box response_wrap3">
		<!--面包屑 start-->
		<div class="mt10 mb10">
			<div class="link555 t12">
				<p id="hotelAddress" style="display: none;"
					data-hotelAddress="${hotel.hotelAddress }"></p>
				<a title="首页" href="http://www.elong.com"> 首页 </a> <span
					class="simsun">&gt;</span> <a title="酒店" href="/"> 酒店 </a> <span
					class="simsun">&gt;</span> <a title="北京酒店" href="/beijing/">
					${fn:split(hotel.hotelAddress, ' ')[0]} </a> <span class="simsun">&gt;</span>
				<a href="toDingDan">
					<h1 class="breadcrumb" style="display: inline" id="lastbread">
						${hotel.hotelName }</h1>
				</a>
			</div>
		</div>
	</div>

	<div class="hdetail_rela_wrap">
		<div class="cont_box response_wrap3 mvt18131"
			style='position: relative;'>
			<div class="hrela_ns_wrap clearfix">
				<div class="hdetail_main hrela_name">
					<div class="t24 yahei" title="${hotel.hotelName }">
						<h1>${hotel.hotelName }</h1>
						<i data-handle="hotelGrade" class="icon_crown_b_new mr5"
							title="战略合作酒店，为风游会员提供优质服务及优惠房价"></i> <b
							class="icon_stars icon_star${hotel.hotelRating }"
							title="风游用户评定为豪华型酒店"></b>
					</div>
					<p class="clearfix">
						<span class="mr5 left"> <a href="/beijing/center010167/">[${fn:split(hotel.hotelAddress, ' ')[1]}]</a>
							${fn:split(hotel.hotelAddress, ' ')[2]}
						</span> <span class="l1 left mt5" method="showMap" title=地图> <i
							class="icon_land_map"></i>地图
						</span> <span class="l2 left mt5" title="街景" id="sosoMap"
							data-svid="10011031131214121358100" data-heading="0"
							data-pitch="0" data-zoom="0" data-mapType="2"> <i
							class="icon_land_street"></i>街景
						</span>
					</p>
				</div>
				<div class="hdetail_sider hrela_say" id="favorBtnContainer">
					<div class="sd_con clearfix">
						<span class="add_collect" method="collectable"
							data-hotelid="50101525"> <b class="icon_coll"></b> <span
							data-showname="favStatus">收藏</span>
						</span>
						<div class="h_comt_other">
							<c:forEach var="service"
								items="${fn:split(hotel.hotelServePy, ',')}" step="1"
								varStatus="statu">
								<span class="icon_faci_${service}"></span>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>

			<!-- 图片start -->
			<div class="hrela_pi_wrap">


				<div class="hdetail_main left">
					<div class="hrela_pic">
						<div class="hrela_pic_w">
							<div class="wac">
								<img data-disable="false"
									src="${pageContext.request.contextPath }${hotel.fileUrl }"
									onerror="${pageContext.request.contextPath }/statics/picture/nw_0004tb3a.jpg"
									height="325" />

							</div>
							<div id="360pano" class="wbc"></div>
							<div id="headSosofullview" class="wcc"
								style="position: absolute; display: none; width: 100%; height: 400px;"></div>
						</div>

					</div>
					<div class="hrela_spic mt5">
						<ul data-handle="container" data="image_all"
							class="hrela_spic_list" style="width: 5940px; margin-left: 0px;">
							
							<c:forEach items="${ houseList}" var="house" >
							<li class="on"><img
								onerror="this.src='${pageContext.request.contextPath }/statics/picture/no-pic-s.jpg'"
								src="${pageContext.request.contextPath }/uploadFile/house/${ hotel.hotelId}_${ house.houseId}.jpg"
								title="" width="80" height="80" >
							</li>
							</c:forEach>
						</ul>






					</div>

				</div>

				<!-- 侧栏 start -->
				<div class="hdetail_sider">
					<!-- 地图入口 start -->
					<div id="hdetail_map" class="dsider_map "></div>
					<!-- 地图入口 end -->
				</div>
				<div class="clx"></div>
			</div>
			<!-- 图片end -->

		</div>
	</div>


	<a name="roomTab" id="roomTab"></a>
	<div class="cont_box response_wrap3 mvt18131">
		<div class="hdetail_box">
			<div class="hdetail_main left">
				<c:if test="${loginUser==null }">
					<!--引导登陆start-->
					<div class="list_login">
						<!-- <img src="${pageContext.request.contextPath }/statics/picture/login_detail.png"/  method="userLogin"> -->
						<!-- <p>去登录</p> -->
						<a href="${pageContext.request.contextPath }/login.jsp"><img
							src="${pageContext.request.contextPath }/statics/picture/bg1.png" /></a>
					</div>
					<!--引导登陆end-->
				</c:if>
				<div id="tabMenu" class="hdetail_subnav bbddd">
					<ul class="subnav_list left">
						<li method="roomTypes" class="on">房型</li>
						<li><a href="#hotelContent"
							style="color: black; text-decoration: none;">酒店信息</a></li>
						<!-- <li method="traffic">交通</li>
						<li method="review">点评</li> -->
					</ul>
					<div class="hdetail_subnav_time mt15" id="divRecentOrder"
						style="display: none;">
						<i class="icon_time24 mr5"></i>24小时内有人预订！
					</div>
				</div>
				
				<div class="date_change mt15 mb15">
					<div class="search_item search_date">
					
						<label class="left br"><span>入住</span><input type="input"
							 data-min-date=today value=today
							class="input_f16 input_date flatpickr"><span class="weekDesc">今天</span><span
							class="icon_date_s"></span></label> <label class="left"><span>离店</span><input
							type="input"   
							 class="input_f16 input_date flatpickr"><span
							class="weekDesc">明天</span><span class="icon_date_e"></span></label>

					</div>
					<div class="btn_filter_sure left" handle="btnSubmit">修改日期</div>
					<ul class="sort_back_tit right none" id="afterCouponContainer">
						<li class="sort_back_l on" method="isAfterCoupon">返后价</li>
						<li class="sort_back_r " method="notAfterCoupon">返前价</li>
					</ul>
				</div>
				<!--快速筛选start-->
				<div class="filterContent clearfix none ">

					<div class="filterItem bedFilterItem none">
						<span><b>床型</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
						</ul>
					</div>

					<div class="filterItem playFilterItem none">
						<span><b>支付方式</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
						</ul>
					</div>

					<div class="filterItem breakfastFilterItem none">
						<span><b>早餐</b><i class="icon_triangle_8b"></i></span>
						<ul class="options">
							<!-- <li data-name="早餐" data-value="" method="breakfastType">不限</li>
                        <li data-name="单早" data-value="1" method="breakfastType">单早</li>
                        <li data-name="双早" data-value="2" method="breakfastType">双早</li>
                        <li data-name="三早及以上" data-value="3" method="breakfastType">三早及以上</li>
                        <li data-name="不含早" data-value="8" method="breakfastType">不含早</li> -->
						</ul>
					</div>

					<div class="filterItem multiple ortherFilterItem none"
						method="other">
						<ul>
						</ul>
					</div>

					<label class="clearAll hide">全部清除</label>

				</div>

				<!--快速筛选end-->
				<div id="roomSetContainer"></div>
				<div id="roomSetContainer">
					<div class="policy_item_best">
						<div class="hdetail_type">
							<div class="htype_list">
								<div class="policy_item">
									<!-- 	<div class="htype_item policy_item_wrapper policy_item_best"
										data-handle="rp" id="roomId0039" data-sroomid="0069"
										data-rpid="40142273" data-roomid="0069"
										data-shotelid="90983915"
										data-uniqueid="80101158:0069:40142273:4_0_5002_00%2300"
										data-mroomid="0039" data-rptype="4" data-mark="1"
										data-signtype="1" data-wight="0.8021455407142639"
										data-minproduct="false">
										<div class="htype_info clearfix" method="togRoom">
											<div class="htype_info_pic left">
												<img
													src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBCnOkX6.jpg"
													onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
											</div>

											<div class="htype_info_pb right">
												<p class="cf55">

													<span class="htype_info_num"> <span class="t14 c555"
														method="AvgPriceCuXiao"> ¥ <span class="ht_pri_num">419</span>
													</span>


													</span> <span class="ht_retu_policy"> </span>
												</p>

												<p class="detailPolicy ">低价产品，实惠之选</p>

											</div>

											<div class="ht_book_policy">
												<a class="on_line_pay_button" rel="nofollow" method="order"
													title="预订酒店时需提前在线支付房费">
													<p class="topStr">预订</p>
													<p class="bottomStr">在线付</p>
												</a>

											</div>

											<div class="htype_info_nt">
												<p class="htype_info_name">
													<span class="l37d">商务雅致大床房-无早<i class="special">︿</i></span>
													<label>同程艺龙</label>
												</p>
												<p class="htype_info_name">
													<span style="font-size: 12px; color: #555;" title="标准价">标准价</span>
												</p>
												<p class="htype_info_ty">
													<span>房间18-25㎡</span> <span>|</span><span>大床1.8米</span> <span>|</span>
													<span> 可住： <i class="icon_live_per"></i><i
														class="icon_live_per"></i>
													</span> <span>|</span><span title="">楼层：2层-3层</span> <span>|</span><span
														title="">包含无线、宽带</span>
												</p>

												<ul class="consure clearfix">
													<li method="cancelTip" canceltype="2">不可取消</li>
													<li class="noCancel " method="isJishi">立即确认</li>
												</ul>
												<ul class="redBag clearfix">
												</ul>
											</div>


										</div>

										<div data-handle="roomTable"
											class="htype_info_list btddd none" style="display: block;">
											<ul>
												<li class="bookTip">
													<p class="bookTipLeft">预订须知</p>
													<div class="bookTipRight">
														<p class="">
															<label>特殊提醒</label> <span>本产品适用于持中国身份证的居民预订</span>
														</p>
														<p>
															<label>在线付</label><span>预订酒店时需提前在线支付房费</span>

														</p>
														<p>
															<label>不可取消</label> <span>订单一经确认成功，不可取消或变更；如未能如约入住，您的预付房费将不予退还。</span>
														</p>
														<p>
															<label>加床</label> <span>不可加床</span>
														</p>
														<p>
															<label>早餐</label> <span>无早</span>
														</p>
														<p class="none">
															<label>房型备注</label> <span></span>
														</p>
													</div>
												</li>
												<li class="bookTip ">
													<p class="bookTipLeft">预订专享</p>
													<div class="bookTipRight">
														<p class="none">
															<label class="vip"><i>返现</i></label> <span>会员登录预订并下单即可享受返现
																<i class="money">¥0</i>
															</span>
														</p>
														<p class="none">
															<label class="vip"><i>促销</i></label> <span>此产品正在参加促销活动，预订享受活动价</span>
														</p>
														<p class="none">
															<label class="vip"><i>礼包</i></label>


														</p>
														<p class="">
															<label class="immeSure">立即确认</label> <span>订单提交后，酒店将在第一时间确认您的订单</span>
														</p>
													</div>
												</li>
												<li class="bookTip ">
													<ul class="ht_pic_list clearfix">
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBCnOkX6.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBCnOkX6.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBw6VSKI.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBw6VSKI.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBj74Gty.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBj74Gty.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_FRgBdfK7YY.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_FRgBdfK7YY.jpg"
															width="96" height="96"></li>
														<li method="ShowImage" class=""><img
															src="http://pavo.elongstatic.com/i/Hotel120_120/nw_000h41Qj.jpg"
															onerror="this.src='http://m.elongstatic.com/static/webapp/pc_static/pc_hotel/other/hotels/pic/no_pics_CN.gif'"
															bigimgurl="http://pavo.elongstatic.com/i/Hotel350_350/nw_000h41Qj.jpg"
															width="96" height="96"></li>
														<li class="picShowAll">
															<p class="none">
																展示 <i class=""></i>
															</p>
														</li>
													</ul>
												</li>
											</ul>
										</div>

									</div>
 -->
								</div>
							</div>
						</div>
					</div>

					<div class="hdetail_type">
						<div class="htype_list">

							<c:forEach var="htype_item" items="${houseList }">
								<div class="htype_item   " data-handle="roomType"
									data-roomid="0039" id="roomId0039">
									<div class="htype_info clearfix ">
										<div class="htype_info_pic left">
											<img
												src="${pageContext.request.contextPath }/uploadFile/house/${hotel.hotelId }_${htype_item.houseId }.jpg "
												onerror="this.src='http://img.elongstatic.com/hotel/other/no_hap.jpg'">
										</div>

										<div class="htype_info_pb right">
											<p class="cf55">

												<span class="t14 c555">¥</span> <span class="htype_info_num">${htype_item.housePrice }</span>
												<span class="t12">起</span>
											</p>
											<p class="htype_info_total mt5 ">
												共${htype_item.houseCountByType }个产品 <i
													class="icon_triangle_8b"></i>
											</p>
										</div>

										<div class="htype_info_nt">
											<p class="htype_info_name roomtaglis">
												<span class="l37d">${htype_item.houseType }</span> <span
													class="roomtaglis"> </span>
											</p>
											<p class="htype_info_ty">
												<span>房间${htype_item.contentOne }</span> <span>|</span> <span>
													可住：${htype_item.contentFour } 人
													<c:forEach varStatus="statu" begin="1" end="${htype_item.contentFour }">
														<i class="icon_live_per"></i>
													</c:forEach>
												</span> <span>|</span><span title="">楼层：${htype_item.contentThree }</span>
												<span>|</span><span title="">包含${htype_item.contentTow }</span>
											</p>
										</div>

									</div>

									<div data-handle="roomTable" class="htype_info_list btddd none"
										style="display: none;">
										<table class="htype-table" cellspacing="0" cellpadding="0">
											<thead>
												<tr class="">
													<th class="ht_empty">&nbsp;</th>
													<th class="ht_name">产品名称</th>
													<th class="ht_supply">供应商</th>
													<th class="ht_brak">早餐</th>
													<th class="ht_rule">产品政策</th>
													<th class="ht_pri"><span class="night">日均价</span></th>
													<th class="ht_book"></th>
													<th class="ht_last"></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${htype_item.houseListByType }"
													var="house">
													<tr data-mroomid="${house.houseId }"
														data-type="${htype_item.houseType }" data-signtype="1"
														data-wight="0.8021455407142639" class=""
														data-minproduct="true">
														<td class="ht_empty">&nbsp;</td>
														<td class="ht_name"><span title="标准价">${house.productName }</span>
															<ul class="redBag clearfix">
															</ul></td>
														<td class="ht_supply" title="supplier:151330">
															${house.supplier }</td>
														<td class="ht_brak"><c:if
																test="${house.isHavingBreakfast==0 }">
                              	无早
                              </c:if> <c:if
																test="${house.isHavingBreakfast==1 }">
                              	单早
                              </c:if> <c:if
																test="${house.isHavingBreakfast==2 }">
                              	双早
                              </c:if></td>
														<td class="ht_rule">
															<p class="ht_rule_free" method="cancelTip" canceltype="2">
																<span>${house.productPolicy}</span>
															</p> <!--  <p class="immsure" method="isJishi">
                                <span>立即确认</span>
                                </p> -->
														</td>
														<td class="ht_pri"><span method="AvgPriceCuXiao"
															class="ht_pri_h cur"> ¥ <span class="ht_pri_num">${house.housePrice}</span>
														</span>
															<p class="detailPolicy ">低价实惠之选</p></td>
														<td class="ht_book"><a class="on_line_pay_button"
															rel="nofollow" title="预订酒店时需提前在线支付房费">
																<!--  <p class="topStr">预订</p> -->
																<p class="bottomStr">在线付</p>
														</a></td>
														<td class="ht_last">&nbsp;</td>
													</tr>

												</c:forEach>

												<tr class="ht_tr_other">
													<td class="ht_empty">&nbsp;</td>
													<td colspan="9" class="ht_other">
														<p>上网方式：${htype_item.contentFive}宽带</p>
													</td>
												</tr>

											</tbody>
										</table>
									</div>

								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<a name="locontent" id="locontent"></a>
				<div id="hotelContent" class="hdetail_view">
					<h2 class="hdetail_tit2">酒店信息</h2>
					<ul class="dview_icon_list">

						<c:forEach var="hservice"
							items="${fn:split(hotel.hotelServe, ',')}" varStatus="statu">
							<li><i class="icon_view_0${statu.count }"></i>
								<p>${hservice }</p></li>
						</c:forEach>
					</ul>
					<div class="dview_info">
						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s1"></i>酒店电话
							</dt>
							<dd>
								${hotel.hotelphone}
								<!-- <span class="ml20">风游电话预订：95711</span> -->
							</dd>
						</dl>
						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s2"></i>入离时间
							</dt>
							<dd>
								<p>入住时间:14点以后，离店时间:12点以前</p>
							</dd>
						</dl>

						<dl class="dview_info_item" id="netAndwifi" style="display: none">

						</dl>


						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s6"></i>酒店设施
							</dt>
							<dd>
								<i class="icon_hl_more1"></i>
								<p>
									<c:forEach var="hservice"
										items="${fn:split(hotel.hotelServe, ',')}" varStatus="statu">
							${hservice }、</c:forEach>
									健身房、商务中心、中餐厅、西餐厅、接机服务（收费）、邮政服务、婚宴服务、叫醒服务、洗衣服务、送餐服务、旅游服务、租车服务、专职、无烟楼层、无障碍通道、行政酒廊、24小时热水、宴会厅、220V电压插座、多功能厅、多媒体演示系统、行政楼层、多种规格电源插座、110V电压插座、遮光窗帘、手动窗帘、房内保险箱、书桌、床具：鸭绒被、电子秤、针线包、空调、房间内高速上网、客房WIFI覆盖免费、国内长途电话、国际长途电话、有线频道、液晶电视机、免费瓶装水、电热水壶、免费洗漱用品（6样以上）、独立淋浴间、吹风机、拖鞋、浴衣、浴室化妆放大镜、洗浴间电话、沙发(部分)、熨衣设备(部分)、咖啡壶/茶壶(部分)、迷你吧(部分)、小冰箱(部分)、浴缸(部分)、所有公共及私人场所严禁吸烟、智能马桶(部分)、卫星频道、桑拿浴室、美容美发室、SPA、足浴/足疗、按摩保健
								</p>
							</dd>
						</dl>

						<dl class="dview_info_item">
							<dt>
								<i class="icon_view_s8"></i>酒店简介
							</dt>
							<dd>
								<i class="icon_hl_more1"></i>
								<p>${hotel.hotelIntro }</p>
							</dd>
						</dl>

					</div>
				</div>
				<a name="mapLocation" id="mapLocation"></a>
				<div id="trafficMap"></div>

				<div class="clx"></div>
				<a name="loreview" id="loreview"></a>
				<div class="cmt_bigpic" id="commentBigImgContainer"
					style="width: auto !important; display: none">
					<div>
						<img src="" />
					</div>
				</div>
			</div>
			<div id="rightSider" class="hdetail_sider right hdetail_sider_none">

				<div class="m_collect" id="favorAndSeenContainer">
					<div class="m_cctit">
						<ul class="m_ccnav clearfix">
							<li class="pos" method="dataTab" data-name="seen" data-status="0">历史浏览</li>
							<li class="pos" method="dataTab" data-name="favor"
								data-status="0">我的收藏</li>

						</ul>
						<span class="line" method="statusLine"></span>
					</div>
					<div class="m_cclst" data-name="seen" style="display: none">
					</div>
					<div class="m_cclst" data-name="favor" style="display: none">
					</div>
				</div>

				<div id="surroundingHotelContainer"></div>
				<div class="dsider_perim_more">
					<a target="_blank"
						href="/search/list_cn_0101.html?startLat=39.91372316&startLng=116.3497983&starLevels=5&keywordsType=99&keywords=%E5%8C%97%E4%BA%AC%E5%94%90%E6%8B%89%E9%9B%85%E7%A7%80%E9%85%92%E5%BA%97"><span>查看周边同价位酒店</span><i
						class="icon_sort_arrr4"></i><i class="icon_perim_b"></i></a>
				</div>
				<div class="dsider_service_us">
					<div class="service_us_tit">
						<h2>风游承诺</h2>
					</div>
					<div class="service_infs">
						<ul class="clearfix">
							<li><i class="why_icon1"></i> <span class="tit">更多酒店</span>
								<span class="txt">全球110万家酒店</span></li>
							<li><i class="why_icon2"></i> <span class="tit">超值优惠</span>
								<span class="txt">订酒店返现高达20%</span></li>
							<li><i class="why_icon4"></i> <span class="tit">卓越服务</span>
								<span class="txt">7x24小时服务</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clx"></div>
	</div>


	<div class="fix_tool" id="right-box-list">
		<ul>
			<li class="cate_01" data-rightblock="1"><a
				href="http://my.elong.com/" target="_blank" style="display: block;"></a><span
				style="display: none;">我的账户</span></li>
			<li class="cate_02" data-rightblock="2"><a
				href="http://my.elong.com/cashcoupon_cn.html" target="_blank"
				style="display: block;"></a><span style="display: none;">我的钱包</span></li>
			<li class="cate_03" data-rightblock="3"><a href="#?"
				style="display: block;"></a><span style="display: none;">我的收藏</span></li>
			<li class="cate_05" data-rightblock="5"><a href="#?"
				style="display: block;"></a><span style="display: none;">在线客服</span></li>
			<li class="cate_06" data-rightblock="6"><a href="#?"
				style="display: block;"></a><span style="display: none;">在线反馈</span></li>
		</ul>
		<div class="go_top" id="rightBoxGoTop" style="display: none">
			<a href="#top"></a>
		</div>
	</div>
	<div class="el-poptip el-poptip-shadow" id="scan-qr-code2"
		style="display: none; width: 107px; right: 55px; position: fixed; bottom: 75px; z-index: 999;">
		<div class="">
			<div class="el-poptip-container">
				<div class="el-poptip-arrow el-poptip-arrow-2"
					style="bottom: 30px; top: auto;">
					<em>◆</em> <span>◆</span>
				</div>
				<div class="el-poptip-content">
					<!-- html内容 -->
					<div class="num_code_v">
						<span class="icon_close_sh" id="close-scan-qr-code2"></span> <i
							class="icon_right_code2"></i>
						<p style="text-align: center">关注公众号</p>
						<p style="text-align: center">反馈您的问题</p>
					</div>
					<!-- html内容结束 -->
				</div>
			</div>
		</div>
	</div>

	<div id="m_contentend" style="z-index: 200;"></div>
	<script type="text/javascript">
		var tjObj_rt2 = new Date();
	</script>
	<div id="m_adsContainer" style="display: none"></div>




	<!-- ===================== footer 20190403 start ===================== -->
	<div class="clear"></div>
	<div class="footer" r="3">
		<div class="footer_info">
			<dl>
				<dt>加盟合作</dt>
				<dd>
					<a href="#" title="酒店加盟" rel="nofollow">酒店加盟</a>
				</dd>
				<dd>
					<a href="" title="机票酒店分销联盟" rel="nofollow">开放平台</a>
				</dd>
				<dd>
					<a href="# " title="旅游产品代理合作" rel="nofollow">代理合作</a>
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
				href="http://m.elong${pageContext.request.contextPath }/statics.com/pcheaderfooter/2018/06/files/headerfoot/img/ICP_20180015.pdf">ICP证:合B2-20180015</a>
			<br> <a rel="nofollow" target="_blank" href=""> <i
				style=" background-image: url(${pageContext.request.contextPath }/statics/images/anbei.png); background-size: contain; background-position: 0; height: 20px; width: 20px;"></i>
				京公网安备11010502026059号
			</a> <i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elong${pageContext.request.contextPath }/statics.com/pcheaderfooter/2018/06/files/headerfoot/img/company_105145723.pdf">经营执照</a>
			<i class="cm_icon"></i> <a rel="nofollow" target="_blank"
				href="http://m.elong${pageContext.request.contextPath }/statics.com/hotel/eltk/eltk.html">《风游旅行网服务条款》</a><i
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
				href="#" rel="nofollow" target="_blank" alt="信赖商业计划" title="信赖商业计划">信用评级</a>
			<a class="cm_icon qua-5" href="#" rel="nofollow" onclick=""
				tabindex="-1" id="urlknet" target="_blank" title="可信用网站身份验证"
				alt="可信用网站身份验证">可信用网站身份验证</a> <a class="cm_icon qua-4" href=""
				rel="nofollow" target="_blank" title="诚信示范企业" alt="诚信示范企业">诚信示范企业</a>
			<a alt="品牌官网认证" title="品牌官网认证" target="_blank" rel="nofollow" href=""
				class="cm_icon qua-7">品牌官网认证</a>
		</div>
	</div>
	<link rel="stylesheet" type="text/css"
		href="${pageContext.request.contextPath }/statics/css/styles.css">
	<!-- ===================== footer end ===================== -->
	<!-- 可信网站LOGO安装开始 -->
		
			
		<form id="order" action="toOrder" style="display: none;" method="post">
		<input type="text" id="houseId" name="houseId">
		<input type="text" id="checkInDate" name="checkInDate">
		<input type="text" id="checkOutDate" name="checkOutDate">
		<input type="text" id="day" name="day">
		<input type="hidden" id="error" value="${error }"	>	
		</form>

		<script
		src="${pageContext.request.contextPath }/statics/js/register/knockout-2.3.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/knockout.validation.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/register/account.min.js"></script>
	<script type="text/javascript">
	Date.prototype.format = function(fmt) { 
	     var o = { 
	        "M+" : this.getMonth()+1,                 //月份 
	        "d+" : this.getDate(),                    //日 
	        "h+" : this.getHours(),                   //小时 
	        "m+" : this.getMinutes(),                 //分 
	        "s+" : this.getSeconds(),                 //秒 
	        "q+" : Math.floor((this.getMonth()+3)/3), //季度 
	        "S"  : this.getMilliseconds()             //毫秒 
	    }; 
	    if(/(y+)/.test(fmt)) {
	            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
	    }
	     for(var k in o) {
	        if(new RegExp("("+ k +")").test(fmt)){
	             fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
	         }
	     }
	    return fmt; 
	}      
	
		$(function() {
			var error=$("#error").val();
			if(error!=null&&error!=''){
				/* tipShow('房间数量不足,请重新选择！', function() {
				}); */
			}
			var curDate = new Date();
			var nextDate = new Date(curDate.getTime() + 24*60*60*1000);
			var time1 = nextDate.format("yyyy-MM-dd");
			$(".flatpickr").eq(1).val(time1)
			$(".flatpickr").eq(1).attr("data-min-date",time1)
			
			//hdetail_sider
			// 百度地图API功能
			$("#hdetail_map").show()

			var map = new BMap.Map("hdetail_map");

			map.centerAndZoom($("#hotelAddress").attr("data-hotelAddress"), 18);
			 /*  // 定位当前位置
			 var geolocation = new BMap.Geolocation();
			    geolocation.getCurrentPosition(function(r){
			        if(this.getStatus() == BMAP_STATUS_SUCCESS){
			            var mk = new BMap.Marker(r.point);
			            map.addOverlay(mk);
			            map.panTo(r.point);
			            //alert('您的位置：'+r.point.lng+','+r.point.lat);
			        }
			        else {
			            alert('failed'+this.getStatus());
			        }
			    },{enableHighAccuracy: true}) */
			$("#hdetail_map").show()
		})
		$(".bottomStr").click(function () {
			var houseId=$(this).parent().parent().parent().attr("data-mroomid")
			var curDate = new Date();
			var nextDate = new Date(curDate.getTime() );
			var time = new Date(nextDate.format("yyyy-MM-dd hh:mm:ss"));
			var time1 = new Date(nextDate.format("yyyy-MM-dd"));
			var cha=new Date(time.getTime()-time1.getTime());
			
			var start=$(".flatpickr").eq(0).val();
			var end=$(".flatpickr").eq(1).val();
			var date1 = new Date(start)
			var date2 = new Date(end)
			var st=new Date(date1.getTime()+cha.getTime());
			var en=new Date(date2.getTime()+cha.getTime());
			
			var s1 = date1.getTime(),s2 = date2.getTime();
			if(s2 - s1>0){
				var s=st.format("yyyy-MM-dd hh:mm:ss");
				var e=en.format("yyyy-MM-dd hh:mm:ss");
				var total = (s2 - s1)/1000;
				var day = parseInt(total / (24*60*60));//计算整数天数
				$("#day").val(day)
				$("#checkInDate").val(s)
				$("#checkOutDate").val(e)
				$("#houseId").val(houseId)
				$("#order").submit();
			}
			
			
			
		})
		
		$(".htype_info").click(function() {
			$(this).siblings().slideToggle()

		})
		$(".icon_hl_more1").toggle(function() {
			$(this).parent().addClass("on")

		}, function() {
			$(this).parent().removeClass("on")

		})
	</script>
<script async>
	function fp_ready() {
		var calendars = document.getElementsByClassName("flatpickr")
				.flatpickr();
		// Date format
		var fpInstance = new Flatpickr(document.createElement("input")), formatOutput = document
				.getElementById("dateFormatOutput"), now = new Date();
	}
</script>
<script  src="${pageContext.request.contextPath }/statics/dist/flatpickr.js"
	onload="fp_ready()"></script>
<link rel="stylesheet" id=cal_style type="text/css"
	href="${pageContext.request.contextPath }/statics/dist/flatpickr.min.css">
	
</body>
</html>