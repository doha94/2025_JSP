<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="cs.dit.MemberDAO" %>
<%@ page import="cs.dit.MemberDTO" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String pwd = request.getParameter("pwd");

    MemberDTO dto = new MemberDTO();
    dto.setId(id);
    dto.setName(name);
    dto.setPwd(pwd);
    
    MemberDAO dao = new MemberDAO();
    dao.insert(dto);

    response.sendRedirect("list.jsp");
%>
