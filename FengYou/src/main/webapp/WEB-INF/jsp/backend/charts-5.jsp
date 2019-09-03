<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>饼状图</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 统计管理 <span class="c-gray en">&gt;</span> 饼状图 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="f-14 c-error">特别声明：Highcharts 是一个用纯 JavaScript编写的一个图表库，仅免费提供给个人学习、个人网站，如果在商业项目中使用，请去Highcharts官网网站购买商业授权。或者您也可以选择其他免费的第三方图表插件，例如百度echarts。H-ui.admin不承担任何版权问题。</div>
	<div id="container" style="min-width:700px;height:400px"></div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
<script type="text/javascript">
var point_x = new Array();
var title = "订单数";
var point_y=new Array();
var colors = ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9', 
    '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1'] ;
$(function () {
	$.get("charts_5",{},function(result){
		//将json格式的字符串转换为对象
		point_y=result;
		
		var data = [];
		for(var i = 0 ; i < point_y.length; i++){
			//给data赋值
			data[i] = {name:point_y[i].name,y:point_y[i].count,color:colors[i]}
		}
    $('#container').highcharts({
    	
		//图表对象是页面中代表单个图表的 JavaScript 对象
		chart : {
			//绘图区域的背景颜色或渐变色
			plotBackgroundColor : null,
			//绘图区边框宽度
			plotBorderWidth : null,
			//是否给绘图区增加阴影效果，如果开启阴影效果，需要设置 plotBackgroundColor
			plotShadow : false
		},
		title : {
			//标题
			text : '根据时间统计 订单'
		},
		//数据提示框指的当鼠标悬停在某点上时，以框的形式提示该点的数据，比如该点的值，数据单位等。数据提示框内提示的信息完全可以通过格式化函数动态指定
		tooltip : {
			//设置内置标题，{series.name}对应series中的name属性值
			headerFormat : '{series.name}<br>',
			//设置内置水果名，{point.name}对应series中的data属性的name值
			pointFormat : '{point.name}: <b>{point.percentage:.1f}%</b>'
		},
		//数据列配置是针对所有数据列及某种数据列有效的通用配置。
		plotOptions : {
			//饼图以二维或三维格式显示每一数值相对于总数值的大小，另外可以突出某个扇面来强调某个数据
			pie : {
				//是否允许在点击数据点标记（markers）、柱子（柱形图）、扇区（饼图）时选中该点，选中的点可以通过 Chart.getSelectedPoints 来获取。 默认是：false.
				allowPointSelect : false,
				//当鼠标悬浮在图标上时鼠标变为手型
				cursor : 'pointer',
				//数据标签
				dataLabels : {
					//是否显示图标外的数据信息
					enabled : true,
					//{point.name}用于显示外置水果名，{point.percentage:.1f}用于显示外置数据百分比，.1f表示保留一位小数
					format : '<b>{point.name}</b>: {point.percentage:.1f} %',
					style : {
						//设置外置数据的字体颜色
						color : 'black'
					}
				},
				states : {
					hover : {
						//是否显示原来的位置
						enabled : false
					}
				},
				slicedOffset : 20, // 突出间距
				point : { // 每个扇区是数据点对象，所以事件应该写在 point 下面
					events : {
						// 鼠标滑过是，突出当前扇区
						mouseOver : function() {
							this.slice();
						},
						// 鼠标移出时，收回突出显示
						mouseOut : function() {
							this.slice();
						},
						// 默认是点击突出，这里屏蔽掉
						click : function() {
							return false;
						}
					}
				}
			}
		},
		series: [ {
			type : 'pie',
			name : '酒店订单数量',
			data : data
		}]
	
    });})
});
</script>
</body>
</html>