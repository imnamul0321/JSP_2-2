<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css"> 
		ul li {
		list-style-type: none; 
		float: left; 
		margin-left: 20px;
		margin-top: 20px
		}
		ul li a{
		color: white; /* 홈 버튼의 글씨 색을 흰색으로 변경 */
        text-decoration: none; /* 링크에 밑줄 제거 */
		}
		header{
		background-color: gray;
		padding-bottom:75px;				
		}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
			<ul>
				<li><a href="welcome.jsp">Home</a></li>
				<li><a href="login1.jsp">Login</a></li>
				<li><a href="logout.jsp">Logout</a></li>
			</ul>
	</header>
</body>
</html>