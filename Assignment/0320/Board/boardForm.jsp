<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시판 글쓰기</title>
</head>
<body>
    <h2>게시판 글쓰기</h2>
    <form action="boardResult.jsp" method="post">
        제목: <input type="text" name="title" required><br>
        작성자: <input type="text" name="author" required><br>
        내용: <br>
        <textarea name="content" rows="5" cols="40" required></textarea><br>
        <input type="submit">
    </form>
</body>
</html>
