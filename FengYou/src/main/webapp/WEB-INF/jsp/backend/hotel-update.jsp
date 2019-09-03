<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
<script type="text/javascript" src="http://libs.useso.com/js/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/css3pie/2.0beta1/PIE_IE678.js"></script>
<![endif]-->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/H-ui/css/H-ui.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/H-ui.admin/css/H-ui.admin.css"/>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/font/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/h-ui.admin/css/style.css" />


<!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>修改酒店</title>
</head>
<body>
<div class="pd-20">
 <div class="page-container">
	<form action="modifyhotel" class="form form-horizontal" id="form-article-add" method="post"  enctype="multipart/form-data">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>产品编号：</label>
			<div class="formControls col-xs-8 col-sm-9">
			    <input type="hidden"  name="hotelId" value="${hotel.hotelId}" /> 
				<input type="text" required="required" class="input-text" value="${hotel.hotelId}" placeholder="" id="" name="productNo">
			</div>
		</div>
        
        
        
         	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">酒店名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${hotel.hotelName}" placeholder="" id="" name="hotelName" required="required">
			</div>
          </div>
        
   <%--        <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="${hotel.hotelRating}" id="fid" />
            		 <select name="hotelRating" id="hotelRating" required class="select">
								<c:if test="${dictionarydates != null }">
									<option value="">--请选择--</option>
									<c:forEach var="dataDictionary" items="${dictionarydates}">
										<option value="${dataDictionary.id}">${dataDictionary.info}</option>
									</c:forEach>
								</c:if>
						</select>
            </div>
          </div>
 --%>


  <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>酒店星级：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				   <input type="hidden" value="${hotel.hotelRating}" id="fid" />
					 <select name="hotelRating" id="hotelRating" required class="select">
								<c:if test="${dictionarydates != null }">
									<option value="">--请选择--</option>
									<c:forEach var="dataDictionary" items="${dictionarydates}">
										<option value="${dataDictionary.dictCode}"
										<c:if test="${dataDictionary.dictCode==hotel.hotelRating }">
										selected="selected"	</c:if> >${dataDictionary.info}</option>
									</c:forEach>
								</c:if>
						</select>
				</span>
			</div>
		</div>


		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>国家：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
			<input type="hidden" value="${hotel.level1}" id="cl1" />
              	<select name="level1" id="categoryLevel1"  class="select"  required>
            		<option value="null">--请选择--</option>
            		<c:forEach items="${level1List}" var="level">
            			<c:if test="${level.type==1}">
            				<option value="${level.id}">${level.name}</option>
            			</c:if>
            		</c:forEach>
            	</select>
				</span>
			</div>
		</div>  

   <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>省份：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
			    	<input type="hidden" value="${hotel.level2}" id="cl2" />
                	<select name="level2" id="categoryLevel2"  class="select"  required>
            		<option value="null">--请选择--</option>
            		<c:forEach items="${level2List}" var="level">
            			<c:if test="${level.type==2}">
            				<option value="${level.id}">${level.name}</option>
            			</c:if>
            		</c:forEach>
            	</select>
				</span>
			</div>
		</div>  
 
  <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>市区：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
	     <input type="hidden" value="${hotel.level3}" id="cl3" />
               	<select name="level3" id="categoryLevel3"  class="select" >
            		<option value="null">--请选择--</option>
            		<c:forEach items="${level3List}" var="level">
            			<c:if test="${level.type==3}">
            				<option value="${level.id}">${level.name}</option>
            			</c:if>
            		</c:forEach>
            	</select>
				</span>
			</div>
		</div>  
            	
            	
            			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">酒店价格：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" required class="input-text" value="${hotel.hotelPrice}" placeholder=""  id="" name="hotelPrice">
			</div>
		</div>
            	   

              
                  	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">详细地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" required class="input-text" value="${hotel.hotelAddress}" placeholder="" id="" name="hotelAddress">
			</div>
		</div>
		
			<div class="row cl">
			
					<label class="form-label col-xs-4 col-sm-2">酒店图片：</label>
				
					<div class="formControls col-xs-8 col-sm-9" id="fileAdd">
							<img width="100" name="myfiles"  class="picture-thumb" src="${pageContext.request.contextPath }${hotel.fileUrl}">
							<input type="file"  class="input-text" value="0"
							placeholder="" id="" name="myfiles" multiple
							style="display: block;" required="required">
							 <input type="button" value="增加上传控件" onclick="add()">
					</div>
					<br/>
					
				
				</div>
	
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>酒店评分：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text"  id="datemin" class="input-text Wdate" name="hotelRatings" value="${hotel.hotelRatings}">
			</div>
		</div>
		
			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>酒店电话：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text"   required="required"  id="datemin" class="input-text Wdate" name="hotelphone" value="${hotel.hotelphone}">
			</div>
		</div>
		
		
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">酒店服务：</label>
			<div class="formControls col-xs-8 col-sm-9">
			<%-- 	<input type="text" value="${hotel.hotelServe}" class="input-text" required="required" value="0" placeholder="" id="" name="hotelServe"> --%>
						    <input type="checkbox"  name=hotelServe value="免费WIFI" >免费WIFI 
							<input type="checkbox"  name="hotelServe"  value="免费停车"  />免费停车
							<input type="checkbox"  name="hotelServe"  value="接机服务"/>接机服务
							<input type="checkbox"  name="hotelServe" value="停车设备" />停车设备 
							<input type="checkbox" name="hotelServe"   value="餐厅" />餐厅 
							<input type="checkbox"  name="hotelServe"  value="行李寄存" />行李寄存 
							<input type="checkbox" name="hotelServe"   value="会议服务" />会议服务 
							<input type="checkbox"  name="hotelServe"   value="游泳池" />游泳池 
							<input type="checkbox"   name="hotelServe"  value="健身房" />健身房
			</div>
		</div>
       
          
             		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">酒店介绍：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="hotelIntro" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="$.Huitextarealength(this,200)">${hotel.hotelIntro}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
			</div>
          
 
   
      		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button  class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
				<button onClick="layer_close();" class="btn btn-default radius"  type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
      
    </form>
  </div>
</div>
<script type="text/javascript" src="http://cdn.bootcss.com/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/Validform_v5.3.2_min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/static/H-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/static/H-ui.admin/js/H-ui.admin.js"></script> 


<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/webuploader/0.1.5/webuploader.min.js"></script> 


<script type="text/javascript">


	function trim(str){
		return str.replace(/(^\s*)|(\s*$)/g, "");
		}

 window.onload=function(){
	var xx="${hotel.hotelServe}";   //假设这里是你数据库出提出的数据。
	var yy=document.getElementsByName("hotelServe");
	if(xx==""){return false;}
	xx=xx.split(",");
	for(var ii=0;ii<xx.length;ii++){
		for(var i=0;i<yy.length;i++){
			if(trim(yy[i].value)==trim(xx[ii]))
			document.getElementsByName("hotelServe")[i].checked=true; 
		/* 	$(".hotelServe").eq(i).attr("checked","checked");  */
		}
	}
	
	} 
</script>
<script type="text/javascript">
 $(function(){  
	//动态加载所属平台列表
	$.ajax({
		type:"GET",//请求类型
		url:"http://localhost:8080/FengYou/datadictionarylist",//请求的url
		data:{tcode:"star"},//请求参数
		dataType:"json",//ajax接口（请求url）返回的数据类型
		success:function(data){//data：返回数据（json对象）
			var fid = $("#fid").val();
			$("#hotelRating").html("");
			var options = "<option value=\"\">--请选择--</option>";
			for(var i = 0; i < data.length; i++){
				if(fid != null && fid != undefined && data[i].id == fid ){
					options += "<option selected=\"selected\" value=\""+data[i].id+"\" >"+data[i].info+"</option>";
				}else{
					options += "<option value=\""+data[i].id+"\">"+data[i].info+"</option>";
				}
			}
			$("#hotelRating").html(options);
		},
		error:function(data){//当访问时候，404，500 等非200的错误状态码
			alert("加载平台列表失败！");
		}
	
	}); 
	
	
	 


</script>
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

	<script type="text/javascript">
	function  loadCategoryLevel(pid,cl,categoryLevel){
		$.ajax({
			
			type:"GET",//请求类型
			url:"http://localhost:8080/FengYou/levellist",//请求的url
			data:{parentId:pid},//请求参数
			dataType:"json",//ajax接口（请求url）返回的数据类型
			success:function(data){//data：返回数据（json对象）	
				$("#"+categoryLevel).html("");
				var options = "<option value=\"\">--请选择--</option>";
				for(var i = 0; i < data.length; i++){
					if(cl != null && cl != undefined && data[i].id == cl ){
						options += "<option selected=\"selected\" value=\""+data[i].id+"\" >"+data[i].name+"</option>";
					}else{
						options += "<option value=\""+data[i].id+"\">"+data[i].name+"</option>";
					}
				}
				$("#"+categoryLevel).html(options);
			},
			error:function(data){//当访问时候，404，500 等非200的错误状态码
				//alert("加载分类列表失败！");
			}
		});
	}   
		
		var cl1 = $("#cl1").val();
		var cl2 = $("#cl2").val();
		var cl3 = $("#cl3").val();
		//动态加载一级分类列表
		loadCategoryLevel(null,cl1,"categoryLevel1");
		//动态加载二级分类列表
		loadCategoryLevel(cl1,cl2,"categoryLevel2");
		//动态加载三级分类列表
		loadCategoryLevel(cl2,cl3,"categoryLevel3");
		
		//联动效果：动态加载二级分类列表
		$("#categoryLevel1").change(function(){
			var categoryLevel1 = $("#categoryLevel1").val();
			if(categoryLevel1 != '' && categoryLevel1 != null){
				loadCategoryLevel(categoryLevel1,cl2,"categoryLevel2");
			}else{
				$("#categoryLevel2").html("");
				var options = "<option value=\"\">--请选择--</option>";
				$("#categoryLevel2").html(options);
			}
			$("#categoryLevel3").html("");
			var options = "<option value=\"\">--请选择--</option>";
			$("#categoryLevel3").html(options);
		});
		
		
		
		//联动效果：动态加载三级分类列表
		$("#categoryLevel2").change(function(){
			var categoryLevel2 = $("#categoryLevel2").val();
			if(categoryLevel2 != '' && categoryLevel2 != null){
				loadCategoryLevel(categoryLevel2,cl3,"categoryLevel3");
			}else{
				$("#categoryLevel3").html("");
				var options = "<option value=\"\">--请选择--</option>";
				$("#categoryLevel3").html(options);
			}
		});
		
	
	</script>
</body>
</html>