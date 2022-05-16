/**
 * 
 */

$(document).ready(function(){
	$('#calendar').fullCalendar({});
})

// DB select해서 전체 일정을 조회하는 함수 선언
function list(){
	console.log("댓글 목록 리스트.......");
	// ajax()를 이용해서 DB에 select하는 것을 작성.
	//            url주소              data           success
	$.getJSON("/cal/list/",function(data){
		// select가 정상적으로 실행되고 난 후 처리해야 될 내용들.....
		console.log(data)
		/*
		
		var str="";
		for(var i=0;i<data.length;i++){
			str+="<li data-rno="+data[i].rno+"><div>";
			str+="<div><strong>"+data[i].replyer+"</strong></div>";
			str+="<div>"+data[i].reply+"</div>"
			str+="</div></li>";
		}
		
		$(".replyList").html(str);
		*/
	})	// type이 get방식일때만 사용.

}