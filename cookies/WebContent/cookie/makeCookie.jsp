<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
	쿠키는 서버에서 생성하고 브라우저에서 응답하여 저장하도록 하는 데이터 조각이다.
	브라우저는 저장된 쿠키를 해당 사이트에 자원 요칭 시 포함하여 전송한다.
	브라우저가 사이트를 이용하면서 유지할 값이 있다면 사용하게 된다.
	즉, 쿠키는 브라우저에 저장하는 것
	
	1. 브라우저에서 서버로 자원을 요청
	2. 서버에서 쿠키 생성 및 응답(response header 확인)에 포함
	3. 브라우저는 응답받은 쿠키를 저장소에 저장
	------------------
	4. 사이트로 요청 시 쿠키를 함께 전송
	5. 요청에서 쿠키 정보를 확인(request에 포함되어 있는거 확인)
	
	쿠키의 구성요소
	이름 : 쿠키 이름
	값: 이름에 연결된 값
	유효시간: 초단위 시간(설정하면 해당 시간동안 유지하고 설정하지 않으면 세션이 유지되는 동안만 유지)
	도메인: 쿠키를 생성한 사이트
	경로: 쿠키를 전송할 요청 URL(일반적으로는 최상위)
*/
	Cookie cookie1 = new Cookie("name", "LEE");
	Cookie cookie2 = new Cookie("age", "20");
	cookie2.setPath(request.getContextPath()+"/path1");
	System.out.println("name: " + cookie1.getValue());
	System.out.println("age: " + cookie2.getValue());

	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
쿠키가 생성되었습니다.
</body>
</html>