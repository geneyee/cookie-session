<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println(session.getAttribute("userId")+ " 로그아웃!");
	session.invalidate();
%>
<script>
	alert("로그아웃!");
	location.href="loginForm.jsp";
</script>