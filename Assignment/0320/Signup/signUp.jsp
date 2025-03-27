<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <script>
        function validateForm() {
            var pwd = document.getElementById("pwd").value;
            var pwd2 = document.getElementById("pwd2").value;

            if (pwd !== pwd2) {
                alert("비밀번호가 일치하지 않습니다.");
                return false; // 회원가입 폼 제출 막기
            }
            return true; // 일치하면 제출 진행
        }
    </script>
</head>
<body>
    <h2>회원가입 사이트</h2>
    <form action="userInfo.jsp" method="post" onsubmit="return validateForm()">
        <table class="form-table">
            <tr>
                <td><input type="text" name="id" required></td>
                <td>아이디</td>
            </tr>
            <tr>
                <td><input type="password" id="pwd" name="pwd" required></td>
                <td>비밀번호</td>
            </tr>
            <tr>
                <td><input type="password" id="pwd2" name="pwd2" required></td>
                <td>비밀번호 확인</td>
            </tr>
            <tr>
                <td><input type="email" name="email" required></td>
                <td>이메일</td>
            </tr>
            <tr>
                <td><input type="tel" name="phonenum" required></td>
                <td>전화번호</td>
            </tr>
            <tr>
                <td>
                    <h3>사용하시는 언어를 선택하세요 (복수 선택 가능)</h3>
                    <input type="checkbox" id="javascript" name="language" value="javascript">
                    <label for="javascript">자바스크립트</label>

                    <input type="checkbox" id="clanguage" name="language" value="clanguage">
                    <label for="clanguage">C언어</label>

                    <input type="checkbox" id="html" name="language" value="hypertextmarkuplanguage">
                    <label for="html">HTML</label>

                    <input type="checkbox" id="python" name="language" value="python">
                    <label for="python">파이썬</label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="가입하기">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
