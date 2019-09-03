<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>房间列表</title>
<script type="text/javascript">
	function del(id){
  	  if(confirm("确认删除吗")){
  	 	 $.post("deletehouse","id="+id,
	    	  function(date){
	    		  if(date=="yes"){
	    			  $("#"+id+"").remove();
	    		  }else{
	    			  alert("删除失败");
	    		  }
	    	  });
  	  }
  	
}
	//批量删除
	function todelete() {
		if($(".checks:checked").length==0){
		alert("请勾选要删除的用户")	
		}else{
			if(confirm("确认删除选中的用户吗")){
				var selectIds="";
				$(".checks:checked").each(function(i) {
					 selectIds+=$(this).val();
						if((i+1)!=$(".checks:checked").length){
							selectIds+=",";
						}
				});
				
				$.post("delhotels",{"selectIds":selectIds},function(result){
					if(result=="true"||result==true){
						$(".checks:checked").each(function(i){
							var id=$(this).val();
							 $("#"+id+"").remove();
						});
					}else{
						alert("删除失败");
					}
				})
				
				
			}
		}
	}
</script>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 房间管理 <span class="c-gray en">&gt;</span> 房间列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c">
		<form action="UserInfo" method="post">
  <div class="text-c"> 
    <input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、" id="" name="name" name="phone"><button type="submit" class="btn btn-success" id="" name=""><i class="icon-search"></i> 搜用户</button>
  </div>
    </form>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="todelete()" class="btn btn-danger radius" onclick="todelete()"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <i class="icon-plus"></i> 添加用户</a> </span><span class="r">共有数据：<strong>${count}</strong> 条</span> </div>
	
	
	<div class="mt-20">
		<table class="table table-border table-bordered table-bg table-hover table-sort">
	
		<thead>
		<tr class="text-c" >
	 <th width="40"><input name="checks" type="checkbox"  ></th>
      <th width="80">房型ID</th>
        <th width="100">酒店名</th>
        <th width="40">房间床型</th>
        <th width="80">房间价格</th>
        <th width="90">是否有早餐</th>
        <th width="100">房间设施</th>
        <th width="70">媒体科技</th>
        <th width="130">食品饮品</th>
        <th width="70">浴室</th>
        <th width="100">室外景观</th>
        <th width="100">创建时间</th>
        <th width="100">操作</th>
				</tr>
				</thead>
			<tbody>
		<c:forEach var="house" items="${house}" varStatus="status">
		<tr class="text-c" id="${house.houseId}">
			<td><input name="checks" type="checkbox" value="${house.houseId}" class="checks"></td>
			  <td>${house.houseId}</td>	
			     <td><a style="cursor:pointer" class="text-primary"  href="houseshow?id=${house.houseId }">${house.houseName}</a></td>
			     <td>${house.houseType}</td>	
        <td>${house.housePrice}</td>
        <td>${house.isHavingBreakfast}</td>
        <td class="text-l">${house.contentOne}</td>
         <td class="text-l">${house.contentTow}</td>
          <td class="text-l">${house.contentThree}</td>
          <td class="text-l">${house.contentFour}</td>
           <td class="text-l">${house.contentFive}</td>
        <td><fmt:formatDate value="${house.creationDate}" pattern="yyyy-MM-dd" /></td>
      <!--   <td class="user-status"><span class="label label-success">已启用</span></td> -->
       	<td class="f-14 td-manage">
	       		<a style="text-decoration:none" class="ml-5"  href="houseById?id=${house.houseId }" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> 
	       			<a style="text-decoration:none" class="ml-5" onclick="del(${house.houseId})" title="删除"><i class="Hui-iconfont">&#xe6e2;</i>	</a>
       	</td>
       		 			</tr>
				 </c:forEach>
			</tbody>
		</table>
	</div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
	]
});

/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-查看*/
function picture_show(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-审核*/
function picture_shenhe(obj,id){
	layer.confirm('审核文章？', {
		btn: ['通过','不通过'], 
		shade: false
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布', {icon:6,time:1000});
	},
	function(){
		$(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
		$(obj).remove();
    	layer.msg('未通过', {icon:5,time:1000});
	});	
}

/*图片-下架*/
function picture_stop(obj,id){
	layer.confirm('确认要下架吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!',{icon: 5,time:1000});
	});
}

/*图片-发布*/
function picture_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
	});
}

/*图片-申请上线*/
function picture_shenqing(obj,id){
	$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
	$(obj).parents("tr").find(".td-manage").html("");
	layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
}

/*图片-编辑*/
function picture_edit(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}

/*图片-删除*/
function picture_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}
</script>
</body>
</html>