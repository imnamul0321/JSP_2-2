<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    session.invalidate();
   	out.print("로그아웃 하였습니다.");
%>
<!--  다시 로그인 기능 추가해주기 -->