<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 리플 개수</title>
</head>
<body>
오늘의 리플 개수 :  <span style="color: blue;" id="1"></span>
<br>
<button id="replyBtn">확인</button>
<div style="color: blue;" id="2"></div>
 <!-- jQuery -->
   <script src="/resources/vendor/jquery/jquery.min.js"></script>
<script id=1>
$(function(){    
	$("#replyBtn").on("click", function(e){  
		e.preventDefault(); //기존 이벤트 무시		
		console.log("읽은값 확인");
		$.ajax({ 
			url:"http://localhost:8080/myapi/board/newReply",
			type:"get",
			success:function(result){ 
				console.log("요청성공",result);
		
				$("#1").html(result);
			}
		});
		
	});
	
}); //문서가 로딩되면 이함수를 수행하시오.   
</script>


<script id=2>
//1.버튼이 클릭되었을때 필요한 내용실행
//2.사용자가 입력한 값들을 읽어오기
//3.그 값들을 이용해서 필요한 api 요청
//4.응답받은 데이터를 이용해서 필요한 화면부분을 갱신
$(function(){    
	$("#replyBtn").on("click", function(e){  
		e.preventDefault();
		var rno=$("#rno").val();
		var bno=$("#bno").val();
		var reply=$("#reply").val();
		var replyer=$("#replyer").val();
		var replyDate=$("replyDate").val();
		var updateDate=$("updateDate").val();
		console.log("읽은값 확인");
		$.ajax({ 
			url:"http://localhost:8080/myapi/board/newReplylist",
			type:"get",
			success:function(result){ 
				console.log("요청성공",result);
				var htmlStr="";
				for(var i=0; i<result.length; i++){
					htmlStr += (i+1)+". "+result[i].reply+"("+result[i].replyer+")"
							+"<br>"
				}
				$("#2").html(htmlStr);
			}
		});
		
	});
	
}); //문서가 로딩되면 이함수를 수행하시오.   


</script>



</body>
</html>