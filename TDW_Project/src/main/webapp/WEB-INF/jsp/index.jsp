<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form[name='sendForm']");

	//Notice
	$(".Notice").on("click", function(){
			formObj.attr("action", "/notice/noticeList");
			formObj.attr("method", "post");
			$("#BOARD_ID").val("01");
			formObj.submit();
			
	})
	
	//Faq
	$(".Faq").on("click", function(){
			formObj.attr("action", "/faq/list");
			formObj.attr("method", "post");
			$("#BOARD_ID").val("02");
			formObj.submit();
			
	})
	
	//Review
	$(".Review").on("click", function(){
			formObj.attr("action", "/review/list");
			formObj.attr("method", "post");
			$("#BOARD_ID").val("03");
			formObj.submit();
			
	})
})

</script>
<body>
<h1> 저희(TDW)를 사세요 참된 개발자 셋입니다.</h1>
	<form role="form" name="sendForm" method="post" action="/notice/noticeList">
		<input type="hidden" id="gubun" name="gubun" value="1"/>
		<input type="hidden" id="BOARD_ID" name="BOARD_ID"/>
	</form>
	<button type="submit" class="Notice">Notice</button>
	<button type="submit" class="Faq">FAQ</button>
	<button type="submit" class="Review">Review</button>
	
</body>
</html>