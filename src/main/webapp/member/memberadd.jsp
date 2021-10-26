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
	
		//한글엔코딩
		request.setCharacterEncoding("utf-8");
		
		//데이터 읽어서 dto에 담기
		MemberDto dto= new MemberDto();
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String hp = request.getParameter("hp");
		String addr = request.getParameter("addr");
		String email = request.getParameter("email1")+"@"+request.getParameter("email2");
		
		dto.setName(name);
		dto.setId(id);
		dto.setPass(pass);
		dto.setAddr(addr);
		dto.setEmail(email);
		dto.setHp(hp);
		
		//dao에서 insert 만들고 여기서 처리
		MemberDao dao = new MemberDao();
		dao.insertMember(dto);
		
		//gaipsuccess 페이지로 넘어가게
		response.sendRedirect("../index.jsp?main=member/gaipsuccess.jsp?id="+id);
		
	%>

</body>
</html>
