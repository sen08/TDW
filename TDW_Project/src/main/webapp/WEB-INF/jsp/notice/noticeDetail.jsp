<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
	//삭제
	$(".delete_btn").on("click", function(){
		var answer;
		answer = confirm("데이터를 삭제하시겠습니까?");
		if(answer == true){

			alert("삭제@");
			formObj.attr("action", "deleteNotice");
			formObj.attr("method", "post");
			formObj.submit();
		}
	})
	//뒤로가기
	 $(".back_btn").on("click", function(){
		location.href = "noticeList?gubun=1&BOARD_ID=01";
	}) 
})
function deleteDetail(){
	//href='deleteNotice?CONTENT_SN=${test.CONTENT_SN}&BOARD_ID=01';
}

</script>
<body>
<h1> 상세보기화면</h1>
<c:forEach var="test" items="${dsTable}">
	<form role="form" name="sendForm" method="post" action="deleteNotice">
		<input type="hidden" id="CONTENT_SN" name="CONTENT_SN" value="${test.CONTENT_SN}">
		<input type="hidden" id="title" name="title" value="${test.CONTENT_TITLE}">
		<input type="hidden" id="detail" name="detail" value="${test.CONTENT_DETAIL}">
		<input type="hidden" id="writer" name="writer" value="${test.MEMBER_ID}">
		<input type="hidden" id="hits" name="hits" value="${test.CONTENT_HITS}">
		<input type="hidden" id="BOARD_ID" name="BOARD_ID" value="${test.BOARD_ID}">
		<table>
			<tbody>
				<tr>
					<td>
						<label for="SN">순번 : </label>${test.CONTENT_SN}
					</td>
				</tr>	
				<tr>
					<td>
						<label for="title">제목 : </label>${test.CONTENT_TITLE}
					</td>
				</tr>	
				<tr>
					<td>
						<label for="detail">내용 : </label>${test.CONTENT_DETAIL}
					</td>
				</tr>
				<tr>
					<td>
						<label for="writer">작성자 : </label>${test.MEMBER_ID}
					</td>
				</tr>
				<tr>
					<td>
						<label for="hits">조회수 : </label>${test.CONTENT_HITS}
					</td>
				</tr>	
			</tbody>			
		</table>
	</form>
	<button type="submit" class="back_btn">뒤로가기</button>
	<button type="submit" class="delete_btn">삭제</button>
	</c:forEach>
<%
	/*
	String name = request.getParameter("name");
	String contents = request.getParameter("contents");*/
%>
</body>
</html>