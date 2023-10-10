<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="menu.jsp" %>
<%
	session.invalidate();
	out.print("로그아웃 하였습니다");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" onClick="location.href='login.jsp'">로그인</button>
</body>
<%@ include file="footer.jsp" %>
</html>