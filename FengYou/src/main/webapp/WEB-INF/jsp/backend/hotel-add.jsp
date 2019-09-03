<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/html5shiv.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/respond.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/h-ui.admin/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/static/h-ui.admin/css/style.css" />
<style type="text/css">
tr {
	line-height: 30px;
}
</style>
<!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>新增酒店</title>
<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div class="pd-20">
		<div class="page-container">
			<form action="Savehotel" class="form form-horizontal"
				id="form-article-add" method="post" enctype="multipart/form-data">
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>产品编号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required="required" class="input-text" value=""
							placeholder="" id="" name="productNo">
					</div>
				</div>


				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">酒店名称：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="" placeholder=""
							id="" name="hotelName" required="required">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>酒店星级：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box">
						 <select name="hotelRating"  required class="select">
								<c:if test="${dictionarydates != null }">
									<option value="">--请选择--</option>
									<c:forEach var="dataDictionary" items="${dictionarydates}">
										<option value="${dataDictionary.dictCode}">${dataDictionary.info}</option>
									</c:forEach>
								</c:if>
						</select>
						</span>
					</div>
				</div>




				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>国家：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box"> <select name="level1" id="level1"
							required="required" class="select">
								<option value="">--请选择--</option>
								<c:forEach items="${level1List}" var="level">
									<c:if test="${level.type==1}">
										<option value="${level.id}">${level.name}</option>
									</c:if>
								</c:forEach>
						</select>
						</span>
					</div>
				</div>





				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>省份：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box"> <select name="level2" id="level2"
							required="required" class="select">
								<option value="">--请选择--</option>
								<c:forEach items="${level2List}" var="level">
									<c:if test="${level.type==2}">
										<option value="${level.id}">${level.name}</option>
									</c:if>
								</c:forEach>
						</select>
						</span>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>市区：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box"> <select name="level3" id="level3"
							 class="select">
								<option value="">--请选择--</option>
								<c:forEach items="${level3List}" var="level">
									<c:if test="${level.type==3}">
										<option value="${level.id}">${level.name}</option>
									</c:if>
								</c:forEach>
						</select>
						</span>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">详细地址：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text" value="0"
							placeholder="" id="" name="hotelAddress">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">酒店价格：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text" value="0"
							placeholder="" id="" name="hotelPrice">
					</div>
				</div>


				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">酒店图片：</label>
					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
						<input type="file" required class="input-text" value="0"
							placeholder="" id="" name="myfiles" multiple
							style="display: block;">
					</div>
					<br /> <input type="button" value="增加上传控件" onclick="add()">
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>酒店评分：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required="required" id="datemin" value="0"
							class="input-text Wdate" name="hotelRatings">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>酒店电话：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required="required" id="datemin"
							class="input-text Wdate" name="hotelphone">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">酒店服务：</label>
					<div class="formControls col-xs-8 col-sm-9">
							<input type="checkbox" name="test" value="WiFi上网" />WiFi上网 
							<input type="checkbox" name="test"  value="停车场" />停车场
							<input type="checkbox" name="test"  value="接机" />接机
							<input type="checkbox" name="test"  value="餐厅"  />餐厅 
							<input type="checkbox" name="test" value="行李寄存" />行李寄存
							<input type="checkbox" name="test"  value="会议室"/>会议室
							<input type="checkbox" name="test"  value="游泳池" />游泳池
							<input type="checkbox" name="test"  value="健身房" />健身房房
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">酒店介绍：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<textarea name="hotelIntro" cols="" rows="" class="textarea"
							placeholder="说点什么...最少输入10个字符" datatype="*10-100"
							dragonfly="true" nullmsg="备注不能为空！"
							onKeyUp="$.Huitextarealength(this,200)"></textarea>
						<p class="textarea-numberbar">
							<em class="textarea-length">0</em>/200
						</p>
					</div>

				</div>

				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<button class="btn btn-primary radius" type="submit">
							<i class="Hui-iconfont">&#xe632;</i> 保存并提交审核
						</button>
						<button onClick="layer_close();" class="btn btn-default radius"
							type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer /作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/messages_zh.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/webuploader/0.1.5/webuploader.min.js"></script>
	<script type="text/javascript">
		$(function() {

			/**
			 * 加载所属城市分类
			 */
			$("#level1")
					.change(
							function() {
								var level1 = $("#level1").val();
								if (level1 != '' && level1 != null) {
									$
											.ajax({
												type : "GET",//请求类型
												url : "http://localhost:8080/FengYou/levellist",//请求的url
												data : {
													parentId : level1
												},//请求参数
												dataType : "json",//ajax接口（请求url）返回的数据类型
												success : function(data) {//data：返回数据（json对象）
													$("#level2").html("");
													var options = "<option value=\"\">--请选择--</option>";
													for (var i = 0; i < data.length; i++) {
														options += "<option value=\""+data[i].id+"\">"
																+ data[i].name
																+ "</option>";
													}
													$("#level2").html(options);
												},
												error : function(data) {//当访问时候，404，500 等非200的错误状态码
													alert("加载二级分类失败！");
												}
											});
								} else {
									$("#level2").html("");
									var options = "<option value=\"\">--请选择--</option>";
									$("#level2").html(options);
								}
								$("#level3").html("");
								var options = "<option value=\"\">--请选择--</option>";
								$("#level3").html(options);
							});

			$("#level2")
					.change(
							function() {
								var level2 = $("#level2").val();
								if (level2 != '' && level2 != null) {
									$
											.ajax({
												type : "GET",//请求类型
												url : "http://localhost:8080/FengYou/levellist",//请求的url
												data : {
													parentId : level2
												},//请求参数
												dataType : "json",//ajax接口（请求url）返回的数据类型
												success : function(data) {//data：返回数据（json对象）
													$("#level3").html("");
													var options = "<option value=\"\">--请选择--</option>";
													for (var i = 0; i < data.length; i++) {
														//alert(data[i].id);
														//alert(data[i].categoryName);
														options += "<option value=\""+data[i].id+"\">"
																+ data[i].name
																+ "</option>";
													}
													$("#level3").html(options);
												},
												error : function(data) {//当访问时候，404，500 等非200的错误状态码
													alert("加载三级分类失败！");
												}
											});
								} else {
									$("#level3").html("");
									var options = "<option value=\"\">--请选择--</option>";
									$("#level3").html(options);
								}
							});
		})
		function add() {
			var rows = $("#fileAdd");
			var newRow = rows.children('input').eq(0).clone();
			newRow.appendTo(rows);
		}

		$(".Huiform").Validform();
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script>
</body>
</html>