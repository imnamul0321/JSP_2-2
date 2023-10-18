<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<%
request.setCharacterEncoding("utf-8");

String uid = request.getParameter("id");
String sql = "DELETE FROM user WHERE id = ?";

//Class.forName("com.mysql.jdbc.Driver");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns1", "root", "root");
Connection conn=ConnectionPool.get();
PreparedStatement stmt = conn.prepareStatement(sql);

stmt.setString(1, uid);
int count = stmt.executeUpdate();                                                            
if (count == 1) {
    out.print("회원 탈퇴가 완료되었습니다.");
}
stmt.close(); conn.close();
%>