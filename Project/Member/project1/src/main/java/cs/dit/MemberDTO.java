
package cs.dit;

/**
프로그램명 : cs.dit.member
파일명 : MemberDTO.java
작성자 : 김성진
작성 날짜 : 2025-04-16
프로그램 설명 : member 테이블에 데이터를 담는 용기
 */
public class MemberDTO {
   private String id;
   private String name;
   private String pwd;
   
   public String getID() {
      return id;
   }
   public void setID(String id) {
      this.id = id;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getPwd() {
      return pwd;
   }
   public void setPwd(String pwd) {
      this.pwd = pwd;
   }
   public MemberDTO(String id, String name, String pwd) {
      super();
      this.id = id;
      this.name = name;
      this.pwd = pwd;
   }
   public MemberDTO() {}
}
