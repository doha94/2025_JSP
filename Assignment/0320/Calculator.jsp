<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">						<!-- 문서의 문자 인코딩을 UTF-8로 설정하여 한글이 정상적으로 표시하기-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Calculator</title> 					<!-- 웹 페이지의 제목을 설정 -->
    
    <script defer src="script.js"></script>		<!-- 외부 JavaScript 파일을 로드 -->

    <style>
        /* 전체 스타일 설정 */
        body {
            text-align: center;					/* 텍스트를 가운데 정렬 */
            margin-top: 50px;					/* 상단 여백 추가 */
        }
        input {
            width: 200px;						/* 입력 필드의 너비 지정 */
            padding: 5px;						/* 내부 여백 추가 */
            margin: 5px;						/* 외부 여백 추가 */
        }
        button {
            width: 50px;						/* 버튼의 너비 지정 */
            height: 30px;						/* 버튼의 높이 지정 */
            margin: 5px;						/* 버튼 간 간격 설정 */
            font-size: 16px;					/* 버튼 글씨 크기 설정 */
        }
        #result {
            margin-top: 20px;					/* 결과 표시 부분의 상단 여백 */
            font-size: 18px;					/* 결과 글씨 크기 설정 */
            font-weight: bold;					/* 결과를 강조하기 위해 볼드체 적용 */
        }
    </style>
</head>
<body>
    <h2>계산기</h2> <!-- 제목 표시 -->
    
    <label for="num1">x:</label>				<!-- 첫 번째 숫자 입력 필드의 레이블 -->
    <input type="number" id="num1">				<!-- 첫 번째 숫자를 입력하는 필드 (숫자만 입력 가능) -->
    <br> <!-- 줄 바꿈 -->
    
    <label for="num2">y:</label>				<!-- 두 번째 숫자 입력 필드의 레이블 -->
    <input type="number" id="num2">				<!-- 두 번째 숫자를 입력하는 필드 (숫자만 입력 가능) -->
    <br> <!-- 줄 바꿈 -->

    <!-- 사칙연산 버튼 추가 -->
    <button onclick="calculate('+')">+</button> <!-- 더하기 버튼 -->
    <button onclick="calculate('-')">-</button> <!-- 빼기 버튼 -->
    <button onclick="calculate('*')">*</button> <!-- 곱하기 버튼 -->
    <button onclick="calculate('/')">/</button> <!-- 나누기 버튼 -->
    <br> <!-- 줄 바꿈 -->

    <div id="result">결과: </div>					<!-- 계산 결과를 표시할 영역 -->





    <!-- JavaScript 코드 -->
    <script>
        function calculate(operator) {
            // 사용자가 입력한 값을 가져와서 숫자로 변환
            let x = parseFloat(document.getElementById("num1").value);
            let y = parseFloat(document.getElementById("num2").value);
            let result; // 결과값을 저장할 변수

            // 입력값이 숫자가 아닐 경우 오류 메시지 출력
            if (isNaN(x) || isNaN(y)) {
                result = "숫자를 입력하세요!";
            } else {
                // 연산자에 따라 계산 수행
                switch (operator) {
                    case '+':
                        result = x + y;				// 덧셈 연산
                        break;
                    case '-':
                        result = x - y; 			// 뺄셈 연산
                        break;
                    case '*':
                        result = x * y; 			// 곱셈 연산
                        break;
                    case '/':
                        if (y === 0) { 				// 0으로 나누는 경우 예외 처리
                            result = "나눗셈 불가능! 0으로 나눌 수 없습니다.";
                        } else {
                            result = (x / y).toFixed(2);	// 나눗셈 결과를 소수점 2자리까지 표시
                        }
                        break;
                    default:
                        result = "잘못된 연산자입니다.";			// 잘못된 연산자가 입력될 경우
                }
            }

            // 결과를 HTML에 표시
            document.getElementById("result").innerText = "결과: " + result;
        }
    </script>
</body>
</html>
