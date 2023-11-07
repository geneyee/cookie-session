<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = (String)session.getAttribute("userId");
	
	if(loginId != null){ // 로그인 상태라면
		System.out.println("로그인 상태");
		response.sendRedirect("loginSuccess.jsp");
	}else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
</head>
<body>
<form action="loginProc.jsp" method="post">
	<input type="text" name="userId" placeholder="아이디를 입력하세요.">
	<input type="password" name="userPw" placeholder="비밀번호를 입력하세요.">
	<input type="submit" value="로그인">
</form>
</body>
</html>
<% } %>