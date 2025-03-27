<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <style>
    	
    </style>
</head>
<body>
    <h2>회원가입 사이트</h2>
    <form action="userInfo.jsp" method="post">
    	<table class="forn-table">
    		<tr>
	        	<td><input type="text" name="id" required></td>
	        	<td>아이디</td>

	        </tr>
	        <tr>
	        	<td><input type="text" name="pwd" required></td>
	        	<td>비밀번호</td>

			</tr>
			<tr>
				<td><input type="email" name="email" required><br></td>
				<td>이메일</td>

			</tr>
			<tr>
				<td><input type="tel" name="phonenum" required><br></td>
				<td>전화번호</td>

			</tr>
			<tr>
				<td><h3>사용하시는 언어를 선택하세요 (복수 선택 가능)</h3>
					<form action="userInfo.jsp" method="post">
					    <input type="checkbox" id="jsp" name="language" value="javascript">
					    <label for="javascript">자바스크립트</label>
					
					    <input type="checkbox" id="crunning" name="language" value="clanguage">
					    <label for="c">C언어</label>
					
					    <input type="checkbox" id="html" name="language" value="hypertextmarkuplanguage">
					    <label for="hypertml">HTML</label>
					
					    <input type="checkbox" id="py" name="language" value="python">
					    <label for="pyth">파이썬</label>
					</form></td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기"></td>
	        </tr>
        </table>
    </form>
</body>
</html>
