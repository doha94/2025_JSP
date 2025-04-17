package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * 패키지명: cs.dit
 * 파일명: MemberDAO.java
 * 작성일: 2025. 4. 16.
 * 작성자: 장진우
 * 설명: 데이터베이스와 연동하고 CRUD가 가능한 메소드 구현
 */

public class MemberDAO {

    // DB 연동 커넥션 생성 메소드
    public Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource) envCtx.lookup("jdbc/jwjang");
        return ds.getConnection();
    }

    // INSERT 메소드
    public void insert(MemberDTO dto) {
        String sql = "INSERT INTO member(id, name, pwd) VALUES (?, ?, ?)";

        try (
            Connection con = getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
        ) {
            pstmt.setString(1, dto.getID());
            pstmt.setString(2, dto.getName());
            pstmt.setString(3, dto.getPwd());
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // SELECT 메소드 (전체 리스트 조회)
    public ArrayList<MemberDTO> list() {
        String sql = "SELECT * FROM member";
        ArrayList<MemberDTO> dtos = new ArrayList<>();

        try (
            Connection con = getConnection();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
        ) {
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String pwd = rs.getString("pwd");
                MemberDTO dto = new MemberDTO(id, name, pwd);
                dtos.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return dtos;
    }
}
