/**
 * 
 */

$(function(){
	
	var fire = new Audio("../image/fire.wav");
	
	$(".gun").click(function(){
		
		fire.play();

		//총 이미지 클릭시 0~11번 난수를 발생시킨다	
		var rnd = parseInt(Math.random()*12);
		
		console.log(rnd);
		
		//맞춘 갯수
		//for문이 아니라 삼항연산자도 단 하나의 조건문이기에 cnt++가 1번만 작동한다
		var cnt = 0;
				
		//해당 인덱스 인형이 이미 숨겨져있다면 "2번째 인형은 이미 처리되었습니다"
		//$(".sunban img").eq(1).is(":hidden")==?true,false
		//만약 있다면 "2번째 인형을 맞추었습니다" 메시지 출력 후, hide
		$(".sunban img").eq(rnd).css("opacity")==0?
		$("#msg").text((rnd+1) + "번째 인형은 이미 처리되었습니다") :
		$("#msg").text((rnd+1) + "번째 인형을 맞추셨습니다!!!"), $(".sunban img").eq(rnd).fadeTo("fast", 0);


		//each(cnt... each ...:hidden ..cnt증가) ... if문		
		$(".sunban img").each(function(i){
			
			if($(".sunban img").eq(i).css("opacity")==0){
				cnt++;
			}
			
			if(cnt==12){
			$("#msg").css("color", "tomato").text("You Win!!!");
			}
		});

		//12개를 모두 맞춘 경우에는 메시지창에 "You Win!!!" 출력하기
		console.log(cnt);
		
	})


	//지폐를 클릭하면 해당지폐 사라지며 인형 12개 모두 보이게하고 메시지창 지우기
	$(".money img").click(function(){
		
		$(this).fadeTo("1000",0);
		
		$(".sunban img").fadeTo(0,1);
		cnt=0;
		
		$("#msg").text("");
	})	
});