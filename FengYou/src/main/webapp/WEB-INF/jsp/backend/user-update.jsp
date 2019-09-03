<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
//验证邮箱是否合法
function isEmail(strEmail) {
    var flag = strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/);
    if (flag == -1){
        alert("邮箱不不正确");
    }
}
</script>
<!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>修改用户</title>
</head>
<body>
	<div class="pd-20">
		<div class="page-container">
			<form action="BackModifyUser"  class="form form-horizontal"
				id="form-article-add" method="post" >

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">用户名称：</label>
					<div class="formControls col-xs-8 col-sm-9">
					<input type="hidden" name="id" value="${user.id}"/>
						<input type="text" class="input-text" value="${user.name}"
							placeholder="" id="" name="name" required="required">
					</div>
				</div>


				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">性别：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<c:if test="${user.sex==1}">
							<input type="radio" id="sex" value="1" name="sex"
								checked="checked" required="required" /> 男&nbsp;&nbsp;&nbsp; 
                            <input type="radio" id="sex1" value="2"
								name="sex" id="sex" required="required" /> 女 
                            </c:if>
						 <c:if test="${user.sex==2}">
								<input type="radio" id="sex" value="1" name="sex" required="required" /> 男&nbsp;&nbsp;&nbsp; 
                            <input type="radio" id="sex1" value="2" 
									name="sex" checked="checked" required="required"/> 女 
                            </c:if>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">身份证：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text"
							value="${user.idcard}" placeholder="" id="" required="required"
							name="idcard">
					</div>
				</div>



				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">电话：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text"
							value="${user.phone}" title="请输入正确的格式"  pattern="^[1][3,4,5,7,8][0-9]{9}$" placeholder="" id="" required="required"
							name="phone">
					</div>
				</div>

				<div class="row cl">

					<label class="form-label col-xs-4 col-sm-2">邮箱：</label>

					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
					<input type="email" required class="input-text"
							value="${user.email}" placeholder="" id="" required="required"
							name="email"  onblur="isEmail(this.value);" >
					</div>
					<br />


				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>地址：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate" required="required"
							name="address" value="${user.address}">
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