<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add</title>
</head>
<body>
	<form action="add" method="post">
	航班编号 <input type="text" id="flightNo" name="flightNo"/>
	起飞城市<select id="departureCity" name="departureCity">
		<option value="0">--请选择起飞城市--</option>
			<c:forEach items="${citys }" var="city">
				<option value="${city.id }">${city.cityName }</option>
			</c:forEach>
		</select> 
	起飞时间<input type="text" id="departureTime"  name="departureTime"/>
	到达城市<select id="arrivalCity" name="arrivalCity" >
		<option value="0">--请选择到达城市--</option>
			<c:forEach items="${citys }" var="city">
				<option value="${city.id }">${city.cityName }</option>
			</c:forEach>
		</select>
	到达时间<input type="text" id="arrivalTime"  name="arrivalTime"/>
	<input type="submit" value="添加">
	</form> 
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
	
	$(function(){
		$("form").submit(function () {
			var flightNo=$("#flightNo").val();
			var departureTime=$("#departureTime").val();
			var arrivalTime=$("#arrivalTime").val();
			var departureCity=$("#departureCity").val();
			var arrivalCity=$("#arrivalCity").val();
			if(flightNo==null||flightNo==''){
				alert("航班编号 不能为空");
				return false;
			}
			if(departureCity==null||departureCity==''){
				alert("请选择起飞城市")
				return false;
			}
			if(departureTime==null||departureTime==''){
				alert("起飞时间不能为空");
				return false;
			}
			var re=/\d{4}-\d{2}-\d{2}/;
			if(!re.test(departureTime)){
				alert("起飞时间格式不正确");
				return false;
			}
			if(arrivalCity==null||arrivalCity==''){
				alert("请选择到达城市")
				return false;
			}
			
			if(arrivalTime==null||arrivalTime==''){
				alert("到达时间不能为空")
				return false;
			}
			if(!re.test(arrivalTime)){
				alert("起飞时间格式不正确");
				return false;
			}
			if(departureCity==arrivalCity){
				alert("起飞城市和到达城市不能相同")
				return false;
			}
			
			
		})
		
		
	})
	
	</script>
</body>
</html>