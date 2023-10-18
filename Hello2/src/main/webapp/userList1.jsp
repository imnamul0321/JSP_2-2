<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns1", "root", "root");
    String sql = "SELECT id, name, ts FROM user";
    PreparedStatement stmt = conn.prepareStatement(sql);
    ResultSet rs = stmt.executeQuery();
	
    String str = "";
    while(rs.next()) {
         str += rs.getString("id") + ", " + rs.getString("name") + ", " + rs.getString("ts") + "<br>";
    }
    out.print(str);
    
    rs.close(); stmt.close(); conn.close();
%>