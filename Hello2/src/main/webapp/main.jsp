<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String uid = (String) session.getAttribute("id");
	if (uid == null) {
	    response.sendRedirect("loginForm.jsp");
	    return;
	}

	out.print("메인 페이지입니다.");
	session.setAttribute("id", uid);
 
%>
