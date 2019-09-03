<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>用户查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">房间床型：${house.houseType }</span>
			<span class="pl-10 f-12">房间编号:${house.houseId }</span>
		</dt>
	</dl>
</div>
<div class="pd-20">
	<table class="table">
		<tbody>
			<tr>
				<th class="text-r" width="80">是否有早餐：</th>
			    	<c:if test="${house.isHavingBreakfast==0}">
               <td>是</td>
      </c:if>
         	<c:if test="${house.isHavingBreakfast==1}">
               <td>否</td>
      </c:if>
      
			</tr>
			<tr>
				<th class="text-r">面积：</th>
				<td>${house.contentOne }</td>
			</tr>
			<tr>
				<th class="text-r">宽带：</th>
				<td>${house.contentTow}</td>
			</tr>
			<tr>
				<th class="text-r">楼层：</th>
				<td>${house.contentThree}</td>
			</tr>
			<tr>
				<th class="text-r">加入时间：</th>
				<td><fmt:formatDate value="${house.creationDate}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<th class="text-r">可住(人数)：</th>
				<td>${house.contentFour}</td>
			</tr>
			
		
				<tr>
				<th class="text-r">产品政策：</th>
				<td>${house.productPolicy}</td>
			</tr>
					<tr>
				<th class="text-r">床型：</th>
				<td>${house.bedType}</td>
			</tr>
			
				<tr>
				<th class="text-r">其他：</th>
				<td>${house.contentFive}</td>
			</tr>
					<tr>
				<th class="text-r">房间原始库存：</th>
				<td>${rawstock.store}</td>
			</tr>
			
			
		</tbody>
		
	</table>
	  <button type="button" class="btn btn-primary" id="back"  onclick="history.back()">返回</button>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer 作为公共模版分离出去-->
 
<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/webuploader/0.1.5/webuploader.min.js"></script> 
</body>
</html>