<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// 1. 요청에서 파라미터 가져오기
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String remember = request.getParameter("remember");
	System.out.println("userId: " + userId);
	System.out.println("userPw: " + userPw);
	System.out.println("remember: " + remember);
		
	// 2. 아이디와 비밀번호 같으면 로그인 성공으로 처리
	// - 아이디 기억하기 여부에 따라 쿠키를 생성하여 응답(1시간동안 유지하는 쿠키)
	if(userId.equals(userPw)) {
		System.out.println("로그인 성공!");
		if(remember != null){ // 아이디 기억하기 o
			Cookie rememberCookie = new Cookie("rememberUserId", userId);
			rememberCookie.setMaxAge(60 * 60);
			response.addCookie(rememberCookie);
			System.out.println("아이디 쿠키 저장");
		} else { // 아이디 기억하기 x
			Cookie rememberCookie = new Cookie("rememberUserId", userId);
			rememberCookie.setMaxAge(0);
			response.addCookie(rememberCookie);
			System.out.println("아이디 쿠키 삭제");
		}
		response.sendRedirect("/cookies/member/loginSuccess.jsp");
		// 3. 아이디와 비밀번호가 같지 않으면 다시 로그인 페이지로 
	} else {
		System.out.println("로그인 실패!");
		response.sendRedirect(request.getContextPath()+ "/member/login.jsp");
	}
	
	// 로그인 페이지에서 remember라는 쿠키가 존재하면 checkbox를 체크상태로 보여지도록 login.jsp 수정
	// 기억된 아이디가 userId텍스트 상자에 표시 되어야 함
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부</title>
</head>
<body>

</body>
</html>