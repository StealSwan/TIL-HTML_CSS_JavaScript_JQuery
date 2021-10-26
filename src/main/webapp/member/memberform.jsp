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

<script type="text/javascript">
	
	$(function(){
		
		//이멜 선택 이벤트
		$("#selemail").change(function(){
			
			if($(this).val()=='-'){
				$("#email2").val('');	//지정된 메일 지우기
				$("#email2").focus();	//포커스  추가
				
			} else{
				$("#email2").val($(this).val());
			}
		});
		
		
		//아이디 입력버튼 이벤트
		$("#btnidcheck").click(function(){
			
			window.open("member/idsearch.jsp","","width=600px, height=200px, left=500px, top=100px");
		});
	});
	
	
	//password check
	function check(f){
		
		if(f.id.value.length==0){
			alert('아이디를 입력해주세요');
			return false;
		}
		
		if(f.pass.value!=f.pass2.value){
			alert("비밀번호가 서로 다릅니다.");
			f.pass.value="";
			f.pass2.value="";
			return false;	//action이 호출되지 않도록
		}
	}
	
</script>

<title>Insert title here</title>
</head>
<body>
	
	<form action="member/memberadd.jsp" method="post" class="form-inline" name="memberfrm"
	onsubmit="return check(this)">
		<table class="table table-bordered" style="width: 500px;">
			<caption><b>회원가입</b></caption>
			
			<tr>
				<th width="100" bgcolor="#aaa">아이디</th>
				<td>
					<input type="text" name="id" maxlength="8" class="form-control"
					required="required" style="width: 120px;" readonly="readonly">
					<button type="button" class="btn btn-danger btn-sm" id="btnidcheck">아이디입력</button>
				</td>
			</tr>
			
			<tr>
				<th width="100" bgcolor="#aaa">비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-control"
					required="required" style="width: 120px;" placeholder="비밀번호" >
					
					<input type="password" name="pass2" class="form-control"
					required="required" style="width: 120px;" placeholder="비밀번호 확인" >
				</td>
			</tr>
			
			<tr>
				<th width="100" bgcolor="#aaa">이름</th>
				<td>
					<input type="text" name="name" class="form-control"
					required="required" style="width: 120px;">
				</td>
			</tr>
			
			<tr>
				<th width="100" bgcolor="#aaa">핸드폰</th>
				<td>
					<input type="text" name="hp" class="form-control"
					required="required" style="width: 200px;">
				</td>
			</tr>			

			<tr>
				<th width="100" bgcolor="#aaa">주소</th>
				<td>
					<input type="text" name="addr" class="form-control"
					required="required" style="width: 400px;">
				</td>
			</tr>			
			
			<!-- 이메일 쪼개기 -->
			<tr>
				<th width="100" bgcolor="#aaa">이메일</th>
				<td>
					<input type="text" name="email1" class="form-control"
					required="required" style="width: 80px;">
					
					<b>@</b>

					<input type="text" name="email2" class="form-control"
					id="email2"
					required="required" style="width: 80px;">
					
					<select id="selemail" class="form-control">
						<option value="-">직접입력</option>
						<option value="naver.com">네이버</option>
						<option value="gmail.com">구글</option>
						<option value="hanmail.net">다음</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-default" style="width: 100px;">저장하기</button>
					<button type="reset" class="btn btn-default" style="width: 100px">다시하기</button>
				</td>
			</tr>			
		</table>		
	</form>
	
</body>
</html>
