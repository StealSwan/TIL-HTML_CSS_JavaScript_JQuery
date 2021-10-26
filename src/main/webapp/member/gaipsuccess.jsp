<%@page import="data.dao.MemberDao"%>
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
		//id를 읽는다
		String id= request.getParameter("id");
		
		//dao선언
		MemberDao dao = new MemberDao();
		
		//아이디에 대한 이름가져오기
		//바로 가져오면 한글엔코딩 처리를해도 깨진다
		String name = dao.getName(id);
	%>
	
	<div style="margin: 0 auto; width: 100%">
		<img alt="" src="image/02.png">
		<b><%=name %>님의 회원 가입을 축하합니다!!</b>
		<br><br>
		
		<button type="button" class="btn btn-info" onclick="location.href='#'">로그인</button>
		<button type="button" class="btn btn-info" onclick="location.href='index.jsp'">Home</button>
		<button type="button" class="btn btn-info" onclick="location.href='index.jsp?main=member/memberlist.jsp'">회원명단</button>
	</div>

</body>
</html>
