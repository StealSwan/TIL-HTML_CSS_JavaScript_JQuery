<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
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
	//전체 멤버정보 가져오기
	MemberDao dao=new MemberDao();
	List<MemberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	int no=1;
%>
<body>
<table class="table table-bordered" style="width: 900px;">
	<caption><b>전체 회원 목록</b></caption>
	<tr bgcolor="#ccf">
		<th width="50">번호</th>
		<th width="70">회원명</th>
		<th width="70">아이디</th>
		<th width="120">핸드폰</th>
		<th width="150">주소</th>
		<th width="150">이메일</th>
		<th width="100">가입일</th>
		<th width="100">수정/삭제</th>		
	</tr>
	<%
	for(MemberDto dto:list)
	{%>
		<tr align="center">
			<td><%=no++%></td>
			<td><%=dto.getName()%>
			<td><%=dto.getId()%></td>
			<td><%=dto.getHp()%></td>
			<td><%=dto.getAddr()%></td>
			<td><%=dto.getEmail()%></td>
			<td><%=sdf.format(dto.getGaipday())%></td>
			<td>
				<button type="button" class="btn btn-info btn-xs"
				onclick="location.href='index.jsp?main=member/updatepassform.jsp?num=<%=dto.getNum()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-xs" 
				onclick="delfunc(<%=dto.getNum()%>)">삭제</button>				
			</td>						
		</tr>
	<%}
	%>
</table>


<!--삭제 모달창과 자바스크립트 코드 추가  -->

<!-- 삭제모달 -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">삭제확인</h4>
      </div>
      
      
      <div class="modal-body form-inline">
      <input type="hidden" id="delnum">
        <b>삭제비밀번호: </b>
          <input type="password" id="delpass" class="form-control" style="width: 120px;">
      </div>
      
      
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default delbtn" data-dismiss="modal">삭제</button>
      </div>
    </div>

  </div>
</div>

<!-- 자바스크립트로 처리 -->

<script type="text/javascript">

function delfunc(num) {
	
	//alert(num);
	$("#delnum").val(num);
	$("#myModal").modal();
	
	
	//모달삭제버튼이벤트
	$("button.delbtn").click(function(){
		
		//num,pass읽기
		var num=$("#delnum").val();
		var pass=$("#delpass").val();
		//삭제파일 호출
		location.href="member/memberdelete.jsp?num="+num+"&pass="+pass;
	});
	
}


</script>

</body>
</html>
