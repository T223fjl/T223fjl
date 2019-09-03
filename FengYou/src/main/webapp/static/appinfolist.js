/**
 * 加载所属城市分类
 */
 $("#level1").change(function(){
		var level1 = $("#level1").val();
		if(level1 != '' && level1 != null){
			$.ajax({
				type:"GET",//请求类型
				url:"http://localhost:8080/FengYou/levellist",//请求的url
				data:{parentId:level1},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#level2").html("");
					var options = "<option value=\"\">--请选择--</option>";
					for(var i = 0; i < data.length; i++){
						options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
					}
					$("#level2").html(options);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载二级分类失败！");
				}
			});
		}else{
			$("#level2").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#level2").html(options);
		}
		$("#level3").html("");
		var options = "<option value=\"\">--请选择--</option>";
		$("#level3").html(options);
	});

	$("#level2").change(function(){
		var level2 = $("#level2").val();
		if(level2 != '' && level2 != null){
			$.ajax({
				type:"GET",//请求类型
				url:"http://localhost:8080/FengYou/levellist",//请求的url
				data:{parentId:level2},//请求参数
				dataType:"json",//ajax接口（请求url）返回的数据类型
				success:function(data){//data：返回数据（json对象）
					$("#level3").html("");
					var options = "<option value=\"\">--请选择--</option>";
					for(var i = 0; i < data.length; i++){
						//alert(data[i].id);
						//alert(data[i].categoryName);
						options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
					}
					$("#level3").html(options);
				},
				error:function(data){//当访问时候，404，500 等非200的错误状态码
					alert("加载三级分类失败！");
				}
			});
		}else{
			$("#level3").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#level3").html(options);
		}
	});


$(".addVersion").on("click", function() {
	var obj = $(this);
	window.location.href = "appversionadd?id=" + obj.attr("appinfoid");
});



$(".deleteApp").on(
		"click",
		function() {
			var obj = $(this);
			if (confirm("你确定要删除APP应用【" + obj.attr("appsoftwarename")
					+ "】及其所有的版本吗？")) {
				$.ajax({
					type : "GET",
					url : "delapp.json",
					data : {
						id : obj.attr("appinfoid")
					},
					dataType : "json",
					success : function(data) {
						if (data.delResult == "true") {// 删除成功：移除删除行
							alert("删除成功");
							obj.parents("tr").remove();
						} else if (data.delResult == "false") {// 删除失败
							alert("对不起，删除AAP应用【" + obj.attr("appsoftwarename")
									+ "】失败");
						} else if (data.delResult == "notexist") {
							alert("对不起，APP应用【" + obj.attr("appsoftwarename")
									+ "】不存在");
						}
					},
					error : function(data) {
						alert("对不起，删除失败");
					}
				});
			}
		});
