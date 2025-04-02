<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h2>학생 정보 입력</h2>
	<form action="insertPro.jsp" method="post"><br>
		이름: <input type="text" name="name"><br>
		학번: <input type="text" name="nstuID"><br>
		주소: <input type="text" name="address"><br>
		<input type="submit" name="확인">
	</form>
</body>
</html>