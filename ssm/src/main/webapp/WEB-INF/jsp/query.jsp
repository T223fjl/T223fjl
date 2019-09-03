<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">航班查询页面</h1>
	<a href="toadd">添加</a>
	<form action="flightList" method="get">
		起飞城市：<select id="departureCity" name="departureCity">
		<option value="0">--请选择起飞城市--</option>
			<c:forEach items="${citys }" var="city">
				<option value="${city.id }">${city.cityName }</option>
			</c:forEach>
		</select> ----- 
		到达城市：<select id="arrivalCity" name="arrivalCity" >
		<option value="0">--请选择到达城市--</option>
			<c:forEach items="${citys }" var="city">
				<option value="${city.id }">${city.cityName }</option>
			</c:forEach>
		</select> <input type="submit" value="查询" />

	</form>
	<c:if test="${count==1}">
	<table width="100%" border="1">
		<c:if test="${flights!=null }">
		<tr><th>航班编号</th> <th>起飞城市</th><th>起飞时间</th><th>到达城市</th><th>到达时间</th></tr>
		<c:forEach items="${flights}" var="flight">
		<tr>
		<td>${flight.flightNo }</td><td>${flight.departureCity }</td>
		<td>${flight.departureTime }</td><td>${flight.arrivalCity }</td>
		<td>${flight.arrivalTime }</td>
		</tr>
		</c:forEach>
		</c:if>
		<c:if test="${flights==null}">
			没有找到符合条件的的航班，请改变查询条件重试
		</c:if>
	</table>
	</c:if>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript">
	
		$(function(){
			$("form").submit(function () {
				var departureCity=$("#departureCity").val();
				var arrivalCity=$("#arrivalCity").val();
				if(departureCity==0){
					alert("请选择起飞城市");
					return false;
				}
				if(arrivalCity==0){
					alert("请选择到达城市")
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