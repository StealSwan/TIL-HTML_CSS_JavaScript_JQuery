<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<%
//프로젝트 경로구하기
String root=request.getContextPath();

%>
<body>
<a href="<%=root%>/">메인</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/index.jsp?main=member/memberform.jsp">회원</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">방명록</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">Q&A</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">답변형게시판</a>&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">상품등록게시판</a>&nbsp;&nbsp;&nbsp;
</body>
</html> --%>
<!DOCTYPE html>
<html class="csstransforms no-csstransforms3d csstransitions"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Responsive Drop Down Menu jQuery CSS3 Using Icon Symbol</title>
	<link rel="stylesheet" type="text/css" href="menu/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="menu/css/menu.css">
    
	<script type="text/javascript" src="menu/js/jquery.js"></script>
	<script type="text/javascript" src="menu/js/function.js"></script>

</head>
<%
//프로젝트 경로구하기
String root=request.getContextPath();

%>
<body>

<div id="wrap">
	<header>
		<div class="inner relative">
			<a class="logo" href="http://www.freshdesignweb.com"><img src="menu/images/logo.png" alt="fresh design web"></a>
			<a id="menu-toggle" class="button dark" href="#"><i class="icon-reorder"></i></a>
			<nav id="navigation">
				<ul id="main-menu">
					<li class="current-menu-item"><a href="http://www.freshdesignweb.com">Home</a></li>
					<li class="parent">
						<a href="#">Member</a>
						<ul class="sub-menu">
							<li><a href="<%=root%>/index.jsp?main=member/memberform.jsp"><i class="icon-wrench"></i> 회원가입</a></li>
							<li><a href="<%=root%>/index.jsp?main=member/memberlist.jsp"><i class="icon-credit-card"></i>  회원명단</a></li>
							
							
						</ul>
					</li>
					<li><a href="#">로그인</a></li>
					<li class="parent">
						<a href="#">방명록</a>
						<ul class="sub-menu">
							<li><a href="#">방명록</a></li>
							<li><a href="#">Q&A</a></li>
							
							
						</ul>
					</li>
					<li><a href="http://www.freshdesignweb.com/responsive-drop-down-menu-jquery-css3-using-icon-symbol.html">고객게시판</a>
					<ul class="sub-menu">
							<li><a href="#"><i class="icon-wrench"></i> 게시판</a></li>
							<li><a href="#"><i class="icon-credit-card"></i>  고객의 소리 </a></li>
							
							
						</ul>
					</li>
				</ul>
			</nav>
			<div class="clear"></div>
		</div>
	</header>	
</div>    
</body></html>
