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
<title>修改房型</title>
</head>
<body>
	<div class="pd-20">
		<div class="page-container">
			<form action="Updatehouse"  class="form form-horizontal"
				id="form-article-add" method="post"  enctype="multipart/form-data">
               
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>房间床型：</label>
				
							<input type="hidden" class="input-text" name="houseId"  value="${house.houseId }">

					<input type="hidden" class="input-text" name="createBy"  value="${loginUser.name }">
						<input type="hidden" class="input-text" name="hotelId"  value="${hotelId}">	
						
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text"
							placeholder="请输入房间床型" id="" value="${house.houseType }" name="houseType" required="required">
					</div>
				</div>
				
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>房间价格：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" required class="input-text"
							placeholder="请输入房间价格" id=""
							name="housePrice" value="${house.housePrice }">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>是否有早餐：</label>
					<div class="formControls col-xs-8 col-sm-9">
			     <label>
                
			      <c:if test="${house.isHavingBreakfast==0}">
			  <td>
			    <input type="radio" name="isHavingBreakfast" value="0" checked="checked">是
			   <input type="radio" name="isHavingBreakfast" value="1" >否
			 </td>
			 </c:if>
			 
			  <c:if test="${house.isHavingBreakfast==1}">
			  <td>
			    <input type="radio" name="isHavingBreakfast" value="0" >是
			   <input type="radio" name="isHavingBreakfast" value="1"  checked="checked">否
			 </td>
			 </c:if>
 

              </label>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">面积：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text"  class="input-text"
							 id=""	name="contentOne" value="${house.contentOne }"  placeholder="请输入面积">
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">宽带：</label>
					<div class="formControls col-xs-8 col-sm-9">	
								<input type="checkbox" name="contentTow" value="无线 " required="required" />无线
							<input type="checkbox" name="contentTow"  value="有线 "  required="required"/>有线
	
 </div>

				</div>

				<div class="row cl">

					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>楼层：</label>

					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
					<input   class="input-text"
						 placeholder="请输入楼层（1-10）" name="contentThree" type="text" value="${house.contentThree}">
					</div>
					<div class="forms-additions">
						<span class="forms-error" data-bind="validationMessage: email"></span>
					</div>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>可住(人数)：</label>
					<div class="formControls col-xs-8 col-sm-9">
							<select name="contentFour" >
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							</select>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>其他：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate"
							name="contentFive" value="${house.contentFive}">
					</div>
				</div>


		<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>房间原始库存： </label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate"
							name="store" required="required" value="${rawstock.store}" >
					</div>
				</div>


	<%-- 	<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>产品政策：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate"
							name="productPolicy"  value="${house.productPolicy}">
					</div>
				</div>

		<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2"><span
						class="c-red">*</span>床型：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" id="datemin" class="input-text Wdate"
							name="bedType"  value="${house.bedType}">
					</div>
				</div>  --%>
				
						<div class="row cl">
					<label class="form-label col-xs-4 col-sm-2">房间图片：</label>
					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
						<input type="file" required class="input-text" value="0"
							placeholder="" id="" name="myfiles" multiple
							style="display: block;">
					</div>
					<br /> <input type="button" value="增加上传控件" onclick="add()">
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
<script type="text/javascript">


	function trim(str){
		return str.replace(/(^\s*)|(\s*$)/g, "");
		}

 window.onload=function(){
	var xx="${house.contentTow}";   //假设这里是你数据库出提出的数据。
	var yy=document.getElementsByName("contentTow");
	if(xx==""){return false;}
	xx=xx.split(",");
	for(var ii=0;ii<xx.length;ii++){
		for(var i=0;i<yy.length;i++){
			if(trim(yy[i].value)==trim(xx[ii]))
			document.getElementsByName("contentTow")[i].checked=true; 
		/* 	$(".hotelServe").eq(i).attr("checked","checked");  */
		}
	}
	
	} 
</script>

	
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