<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>动态曲线图</title>
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
</head>
<body>
	<div id="t223" style="width: 600px; height: 400px;"></div>
	<script type="text/javascript">
	$(function () {
		//创建数据用于保存数据
		var point_x = new Array();
		var point_y=new Array();
		//使用异步查询数据
		$.get("FruitServlet",{},function(result){
			//将json格式的字符串转换为对象
			var ob=eval("("+result+")");
			for(var i=0;i<ob.length;i++){
				point_y[i]=ob[i].num;
				point_x[i]=ob[i].name;
			}
			//调用函数
			Highcharts.chart('t223', options);
		});
		
		var options = {
	    	chart: {
	            type: "spline"                          //指定图表的类型，默认是折线图（line）
	        },
	        title: {
	            text: '我的第一个图表'                 // 标题
	        },
	        xAxis: {
	            categories: point_x   // x 轴分类
	        },
	        yAxis: {
	            title: {
	                text: "吃水果个数"                // y 轴标题
	            }
	        },
	        series: [{                              // 数据列
	            name: '小明',                        // 数据列名
	            data: point_y                     // 数据
	        }]
	    }
	});
	</script>
</body>
</html>