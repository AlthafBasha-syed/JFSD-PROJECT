<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GradeBook</title>
<link rel="shortcut icon" href="/img/logo.jpg" type="image/x-icon" />
</head>
<body>
<jsp:include page="stop.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<br>
<h1>MY CGPA:  ${gpa}</h1>
<jsp:include page="sbottom.jsp"></jsp:include>

</body>
</html>