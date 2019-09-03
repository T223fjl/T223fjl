var point_x = new Array();
var title = "吃水果个数";
var point_y=new Array();
var colors = ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9', 
    '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1'] ;
$(function(){
	//使用异步查询数据
	$.get("FruitServlet",{},function(result){
		//将json格式的字符串转换为对象
		var ob=eval("("+result+")"); 
		for(var i=0;i<ob.length;i++){
			point_y[i]=ob[i].num;
			point_x[i]=ob[i].name;
		}
		Highcharts.chart('t223', getChart($("#select_chart").val()));
	})
	
	
	$("#select_chart").change(function(){
		var type = $("#select_chart").val();
		Highcharts.chart('t223', getChart(type));
	});
});

function getChart(type){
	if(type == "pie"){
		var data = [];
		for(var i = 0 ; i < point_x.length; i++){
			//给data赋值
			data[i] = {name:point_x[i],y:point_y[i],color:colors[i]}
		}
		
		return {
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
				text : '扇区突出演示'
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
			series : [ {
				type : 'pie',
				name : '本月食用水果数量',
				data : data
			} ]
		}
	}else{
		return {
	        chart: {
	            type: type                          //指定图表的类型，默认是折线图（line）
	        },
	        title: {
	            text: '我的第一个图表'                 // 标题
	        },
	        xAxis: {
	            categories: point_x   // x 轴分类
	        },
	        yAxis: {
	            title: {
	                text: title                // y 轴标题
	            }
	        },
	        series: [{                              // 数据列
	            name: '小明',                        // 数据列名
	            data: point_y                     // 数据
	        }
	        
	        ]
	    }
	}
}
