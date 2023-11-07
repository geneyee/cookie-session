<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String checked = "";
	String userId = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length > 0){
		for(int i = 0; i <cookies.length; i++){
			if(cookies[i].getName().equals("rememberUserId")) {
				checked = "checked";
				userId = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<form action="LoginProc.jsp" method="post">
	<input type="text" name="userId" placeholder="아이디" value=<%= userId %>><br>
	<input type="password" name="userPw" placeholder="비밀번호"><br>
	아이디 기억하기 <input type="checkbox" name="remember" value="chk" <%= checked %>><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>