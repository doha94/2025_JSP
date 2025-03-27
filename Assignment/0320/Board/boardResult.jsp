<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 확인</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
    <h2>게시글 확인</h2>

    <%
        // 사용자가 입력한 데이터 받기
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String content = request.getParameter("content");
    %>

    <strong>제목:</strong> <%= title %> <br>
    <strong>작성자:</strong> <%= author %> <br>
    <strong>내용:</strong> <br>
    <pre><%= content %></pre> <!-- 글 내용을 유지한 채로 출력 -->
    
    <br>
    <a href="boardForm.jsp">다시 작성하기</a>
</body>
</html>
