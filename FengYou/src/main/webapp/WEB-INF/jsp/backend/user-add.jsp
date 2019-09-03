<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
<script type="text/javascript" src="http://libs.useso.com/js/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/css3pie/2.0beta1/PIE_IE678.js"></script>
<![endif]-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/static/H-ui/css/H-ui.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/static/H-ui.admin/css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/static/font/font-awesome.min.css" />
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

<script type="text/javascript">


</script>
<!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>修改用户</title>
</head>
<body>
	<div class="pd-20">
		<div class="page-container">
			<form action="addUsers"  class="form form-horizontal"
				id="form-article-add" method="post" >

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">用户名称：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text"
							placeholder="请输入用户名称" id="" name="name" required="required">
					</div>
				</div>
				
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">密码：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="password" required class="input-text"
							placeholder="请输入密码" id=""
							name="pwd" pattern="^[a-zA-Z]\w{5,17}$" title="字母开头，长度在6~18之间，只能包含字母、数字和下划线 ">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">性别：</label>
					<div class="formControls col-xs-8 col-sm-9">
			     <label>
                <input name="sex" type="radio" id="six_1" value="1" checked>
                男</label>
              <label>
                <input type="radio" name="sex" value="0" id="six_0">
                女</label>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">身份证：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text"
							 id=""	name="idcard"  pattern="^([0-9]){7,18}(x|X)?$"  title="请输入正确身份证号"   placeholder="请输入身份证号" onblur="isIDCard(this.value);">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">电话：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text" title="请输入正确的电话号码"  pattern="^(1[37584]\d{9})$"  placeholder="请输入手机号" id="phone" name="phone"  onblur="check()" />
						<span id="no" style="color: red"></span>
					</div>

				</div>

				<div class="row cl">

					<label class="form-label col-xs-4 col-sm-2">邮箱：</label>

					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
					<input type="email" required class="input-text"
						 placeholder="" name="email" data-bind="value: email,valueUpdate: 'afterkeydown'" type="text" >
					</div>
					<div class="forms-additions">
						<span class="forms-error" data-bind="validationMessage: email"></span>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>地址：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate"
							name="address" >
					</div>
				</div>

	

				<div class="row cl">
					<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
						<button class="btn btn-primary radius" type="submit">
							<i class="Hui-iconfont">&#xe632;</i> 保存
						</button>
						<button onClick="layer_close();" class="btn btn-default radius"
							type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
					</div>
				</div>

			</form>
		</div>
	</div>
	<script type="text/javascript"
		src="http://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/H-ui/js/H-ui.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/static/H-ui.admin/js/H-ui.admin.js"></script>
	

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/validate-methods.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/messages_zh.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/lib/webuploader/0.1.5/webuploader.min.js"></script>


	
	<script>
function add(){
	var rows = $("#fileAdd");
	var newRow = rows.children('input').eq(0).clone();
	newRow.appendTo(rows);
}


function check(){
	var phone=$("#phone").val();
	alert(phone);
	$.post("sales","phone="+phone,function(date){
		if(date=="yes"){
			$("#no").html("电话号码已经存在!");
		}else{
			$("#no").html("");
		}
	});


var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})
</script>
</body>
</html>