<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"    
%>

<%
    // 클라이언트가 전송한 데이터를 UTF-8로 인코딩하여 한글이 깨지지 않도록 설정
    request.setCharacterEncoding("utf-8");

    // insertForm에서 전달받은 값들을 변수에 저장
    String name = request.getParameter("name");      // 사용자 이름
    String stuID = request.getParameter("stuID");    // 학번 (아이디 역할)
    String address = request.getParameter("address");// 주소 (비밀번호 역할)

    // JDBC 드라이버 로드 (MariaDB 연결을 위해 필요)
    Class.forName("org.mariadb.jdbc.Driver");

    // 데이터베이스 연결 설정
    String url = "jdbc:mariadb://localhost:3306/backend"; // 데이터베이스 URL (로컬 서버에서 backend DB 사용)
    Connection con = DriverManager.getConnection(url, "jwjang", "1111"); // DB에 연결 (ID: jwjang, PW: 1111)

    // SQL문 작성: 사용자가 입력한 학번(stuID)과 일치하는 데이터 조회
    String sql = "SELECT * FROM member WHERE stuid=?";
    
    // SQL 실행을 위한 PreparedStatement 생성 (SQL 인젝션 방지)
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, stuID); // 첫 번째 '?'에 stuID 값을 설정

    // SQL 실행 및 결과 가져오기
    ResultSet rs = pstmt.executeQuery();

    // 조회 결과가 있는지 확인 (stuID가 DB에 존재하는지 체크)
    if (rs.next()) {
        // DB에서 조회된 address(비밀번호) 가져오기
        String dbAddress = rs.getString("address");

        // 입력한 address와 DB의 address 비교 (비밀번호 체크)
        if (address.equals(dbAddress)) {
            out.println(name + "님이 로그인 완료했습니다!"); // 로그인 성공 메시지 출력
            session.setAttribute("stuID", stuID); // 로그인 상태를 유지하기 위해 세션에 stuID 저장
        } else {
            out.println("비밀번호가 다릅니다."); // 비밀번호 불일치 메시지 출력
        }
    } else {
        out.println("누구세요??"); // 해당 학번(stuID)이 없는 경우
    }

    // 자원 정리 (데이터베이스 연결 해제)
    rs.close();
    pstmt.close();
    con.close();
%>
