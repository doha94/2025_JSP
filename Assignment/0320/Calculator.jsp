<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.*"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>간단한 계산기</title>
    <script defer src="script.js"></script>
    <style>
        body {
            text-align: center;
            margin-top: 50px;
        }
        input {
            width: 100px;
            padding: 5px;
            margin: 5px;
        }
        button {
            width: 50px;
            height: 30px;
            margin: 5px;
            font-size: 16px;
        }
        #result {
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Calculator</h2>
    <label for="num1">x:</label>
    <input type="number" id="num1">
    <br>
    <label for="num2">y:</label>
    <input type="number" id="num2">
    <br>
    <button onclick="calculate('+')">+</button>
    <button onclick="calculate('-')">-</button>
    <button onclick="calculate('*')">*</button>
    <button onclick="calculate('/')">/</button>
    <br>
    <div id="result">결과: </div>

    <!-- JavaScript를 body 안에 직접 넣음 -->
    <script>
        function calculate(operator) {
            let x = parseFloat(document.getElementById("num1").value);
            let y = parseFloat(document.getElementById("num2").value);
            let result;

            if (isNaN(x) || isNaN(y)) {
                result = "숫자를 입력하세요!";
            } else {
                switch (operator) {
                    case '+':
                        result = x + y;
                        break;
                    case '-':
                        result = x - y;
                        break;
                    case '*':
                        result = x * y;
                        break;
                    case '/':
                        if (y === 0) {
                            result = "나눗셈 불가능! 0으로 나눌 수 없습니다.";
                        } else {
                            result = (x / y).toFixed(2);
                        }
                        break;
                    default:
                        result = "잘못된 연산자입니다.";
                }
            }

            document.getElementById("result").innerText = "결과: " + result;
        }
    </script>
</body>

</html>