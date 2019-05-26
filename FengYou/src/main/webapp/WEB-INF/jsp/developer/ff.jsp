<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery1.8.3.min.js"></script>
<script async>
	function fp_ready() {
		var calendars = document.getElementsByClassName("flatpickr")
				.flatpickr();
		// Date format
		var fpInstance = new Flatpickr(document.createElement("input")), formatOutput = document
				.getElementById("dateFormatOutput"), now = new Date();
		alert(fpInstance)
	}
</script>

<script async src="${pageContext.request.contextPath }/statics/dist/flatpickr.js"
	onload="fp_ready()"></script>
<link rel="stylesheet" id=cal_style type="text/css"
	href="${pageContext.request.contextPath }/statics/dist/flatpickr.min.css">
</head>
<body>
<p>
				<input class=flatpickr data-min-date=today value=today>
			</p>

			<p>
				<input class=flatpickr data-min-date="2016-09-20" placeholder="minDate: '2016-09-20'">
			</p>

			<p>
				<input class=flatpickr data-min-date=today placeholder="minDate: '2015/09/02'">
			</p>

			<p>
			</p>
	
</body>
</html>