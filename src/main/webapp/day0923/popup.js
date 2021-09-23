/**
 * 
 */

/*window.open()

var 객체명=window.open(url,name,'space,replace')*/

function pop1(){
	newWin = window.open('../image/popup3.jpg', 'Event', 'width=430, height=430, status=no, scrollbar=yes');
	setTimeout('newWin.close()',3000);
}

function pop2(){
	window.open('https://m.nate.com', 'Nate', 'width=430, height=430, status=no, scrollbar=yes');
}