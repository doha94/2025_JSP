<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "java.sql.*"    
%>

<%
	// 입력받는 값 utf-8로 바꾸어 해석 가능하게 하기
	request.setCharacterEncoding("utf-8");
	// insertForm에서 전달해주는 값 받은 후 저장하기
	String name = request.getParameter("name");
	String stuID = request.getParameter("stuID");
	String address = request.getParameter("address");

	// JDBC Driver Load
	Class.forName("org.mariadb.jdbc.Driver");
	
	// JDBC Connect
	String url = "jdbc:mariadb://localhost:3306/backend";
	Connection con = DriverManager.getConnection(url, "jwjang", "1111");	
	
	// SQL Writing
	// String sql = "insert into member(name, stuID, address)" +"values('"+name+"', '"+stuID+"', '"+address+"')";
	String sql = "insert into member values(?, ?, ?)";
	
	
	// SQL Running
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, stuID);
	pstmt.setString(3, address);

	int i = pstmt.executeUpdate();
	
	if(1==1){
		out.println("입력 되었습니다!!");
	}
	
	
	
	
	
	
	
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>