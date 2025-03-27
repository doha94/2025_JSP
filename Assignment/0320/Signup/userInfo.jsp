<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입 정보</title>
</head>
<body>
    <h2>회원가입 정보</h2>
    <table border="1">
        <tr>
            <td><strong>아이디</strong></td>
            <td><%= request.getParameter("id") %></td>
        </tr>
        <tr>
            <td><strong>비밀번호</strong></td>
            <td><%= request.getParameter("pwd") %></td>
        </tr>
        <tr>
            <td><strong>이메일</strong></td>
            <td><%= request.getParameter("email") %></td>
        </tr>
        <tr>
            <td><strong>전화번호</strong></td>
            <td><%= request.getParameter("phonenum") %></td>
        </tr>
        <tr>
            <td><strong>선택한 언어</strong></td>
            <td>
                <%
                    String[] languages = request.getParameterValues("language");
                    if (languages != null) {
                        for (String lang : languages) {
                            out.println(lang + "<br>");
                        }
                    } else {
                        out.println("선택한 언어 없음");
                    }
                %>
            </td>
        </tr>
    </table>

    <br>
    <a href="signUP.jsp">회원가입 페이지로 돌아가기</a>
</body>
</html>
