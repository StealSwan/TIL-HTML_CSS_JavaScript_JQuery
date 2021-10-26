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
<style type="text/css">
div.layout{
border: 0px solid gray;
position: absolute;
}


div.title{
  width: 100%;
  height: 80px;
  line-height: 80px;
  font-size: 30pt;
  font-family: 'Gaegu';
  text-align: center;
}

div.menu{
	width: 100%;
	height: 80px;
	line-height: 80px;
	font-size: 20pt;
	font-family: 'Nanum Pen Script';
	text-align: center;
	top: 80px;
}

div.info{
	width: 170px;
	height: 200px;
	line-height: 10px;
	font-size: 15pt;
	font-family: 'Gaegu';
	left: 30px;
	top: 300px;
	padding: 20px 10px;
	border: 5px groove lightgray;
	border-radius: 30px;
}

div.main{
	width: 1200px;
	height: 700px;
	font-size: 14pt;
	font-family: 'Nanum Pen Script';
	left: 300px;
	top: 200px;
}

a,a:hover {
	color: black;
	text-decoration: none;
}

</style>
<title>Insert title here</title>
</head>
<body>
<%
//프로젝트 경로구하기
String root=request.getContextPath();

String mainPage="layout/main.jsp"; //기본페이지

//url을 통해서 main값을 읽어서 출력
if(request.getParameter("main")!=null)
{
	mainPage=request.getParameter("main");
}

%>

<div class="layout title">
  <jsp:include page="layout/title.jsp"/>
</div>
<div class="layout menu">
  <jsp:include page="layout/menu.jsp"/>
</div>
<div class="layout info">
  <jsp:include page="layout/info.jsp"/>
</div>
<div class="layout main">
  <jsp:include page="<%=mainPage %>"/>
</div>


</body>
</html>

