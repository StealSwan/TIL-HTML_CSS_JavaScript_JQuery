/**
 * 
 */

$(function(){
	
	//만약 있다면 "2번째 인형을 맞추었습니다" 메시지 출력 후, hide
	//12개를 모두 맞춘 경우에는 메시지창에 "You Win!!!" 출력하기
	//each(cnt... each ...:hidden ..cnt증가) ... if문
	//지폐를 클릭하면 해당지폐 사라지며 인형 12개 모두 보이게하고 메시지창 지우기
	$(".gun").click(function(){

		//총 이미지 클릭시 0~11번 난수를 발생시킨다	
		var rnd = parseInt(Math.random()*11);
		
		//해당 인덱스 인형이 이미 숨겨져있다면 "2번째 인형은 이미 처리되었습니다"
		//$(".sunban img").eq(1).is(":hdden")==?true,false
		if(rnd==$())
		
	})
	
});