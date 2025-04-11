<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%

	//1. DB 연동 드라이버 로드

	//2. 연결 객체 생성

	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비

	//4. SQL 실행

	
	//5. 객체 해제

	//6. list.jsp로 이동	
	response.sendRedirect("list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%=i %>행이 입력되었습니다!
</body>
</html>