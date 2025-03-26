<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<h2>학생 성적</h2>
	<br>
		
	<%
		String korStr = request.getParameter("Korean");
		String engStr = request.getParameter("English");
		String mathStr = request.getParameter("Math");
		
        int kor = 0, eng = 0, math = 0;

        try {
            kor = (korStr != null && !korStr.isEmpty()) ? Integer.parseInt(korStr) : 0;
            //국어 점수로 받은 문자열이 null이 아니고, 비어있지 않다면? korStr을 정수로 변환한다
            eng = (engStr != null && !engStr.isEmpty()) ? Integer.parseInt(engStr) : 0;
            math = (mathStr != null && !mathStr.isEmpty()) ? Integer.parseInt(mathStr) : 0;
        } catch (NumberFormatException e) {
            out.println("<p style='color:red;'>올바른 숫자를 입력하세요.</p>");
        }
        
        double average = kor + eng + math;
        double avg = average / 3;
        
        String Avg = String. format("%.2f", avg);
	%>

	
	
	국어: <%=kor %><br>
	영어: <%=eng %><br>
	수학: <%=math %><br>
	평균: <%=Avg %>
</body>
</html>