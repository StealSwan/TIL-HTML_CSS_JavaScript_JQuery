<%@page import="data.dao.MemberDao"%>
<%@page import="data.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%
		//최종수정해서 맴버리스트로 이동되게 한다_ 한컷보내기
		//한글엔코딩
		request.setCharacterEncoding("utf-8");
	
		//update에서 추가되는 num값 주의
		String num = request.getParameter("num");
		
		//수정에 필요한 변수 받기
		String name = request.getParameter("name");
		String hp = request.getParameter("hp");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email1")+"@"+request.getParameter("email2");
		
		
		//dto에 담기
		MemberDto dto = new MemberDto();
		
		//값들 넣어주기 - num값 포함
		dto.setNum(num);
		dto.setName(name);
		dto.setHp(hp);
		dto.setAddr(addr);
		dto.setEmail(email);
		
		
		//DAO 선언
		MemberDao dao = new MemberDao();
		
		//수정
		dao.updateMember(dto);
		
		//리스트로 이동
		response.sendRedirect("../index.jsp?main=member/memberlist.jsp");
	%>

</body>
</html>
