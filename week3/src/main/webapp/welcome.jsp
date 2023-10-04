<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%@ include file="menu.jsp" %>
	<%@ page import="java.util.Date" %>
	<%
		String str = "<div class='textAlign'><div class='fontSize'>웹 쇼핑몰에 오신걸 환영합니다</div>";
		str += "<br>로그인 시간: " + (new Date()).toString() + "</div>";
		
		out.print(str);	
	%>

<%@ include file="footer.jsp" %>
<head>
	<style type="text/css">
		 .fontSize{
		 	font-size: 50px;
		 }
		 .textAlign{
		 	text-align: center;
		 }
	</style>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
	
	
</body>
</html>