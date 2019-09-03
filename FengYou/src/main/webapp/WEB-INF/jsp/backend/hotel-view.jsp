<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>酒店查看</title>
</head>
<body>
<div class="cl pd-20" style=" background-color:#5bacb6">
			<td><a href="javascript:;" onClick="picture_edit('图库编辑','picture-show.html','10001')"><img width="210" class="picture-thumb" src="${pageContext.request.contextPath }${hotel.fileUrl}"></a></td>
	<dl style="margin-left:80px; color:#fff">
		<dt>
			<span class="f-18">酒店名称:${hotel.hotelName}</span>
			<span class="pl-10 f-12">酒店编号:${hotel.hotelId}</span>
		</dt>
	</dl>
</div>
<div class="pd-20">
	<table class="table">
		<tbody>
			<tr>
				<th class="text-r" width="80">酒店星级：</th>
				<td>${hotel.hotelRating}</td>
			</tr>
			<tr>
				<th class="text-r">酒店地址：</th>
				<td>${hotel.hotelAddress}</td>
			</tr>
			<tr>
				<th class="text-r">酒店价格：</th>
				<td>￥${hotel.hotelPrice}</td>
			</tr>
			<tr>
				<th class="text-r">酒店评分：</th>
				<td>${hotel.hotelRatings}</td>
			</tr>
			<tr>
				<th class="text-r">酒店电话：</th>
				<td>${hotel.hotelphone}</td>
			</tr>
			<tr>
				<th class="text-r">酒店介绍：</th>
				<td>${hotel.hotelIntro}</td>
			</tr>
			<tr>
				<td> <button type="button" class="btn btn-primary" id="back"  onclick="history.back()">返回</button>	</td>
			</tr>
		
		 
		</tbody>
	</table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
</body>
</html>