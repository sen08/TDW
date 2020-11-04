<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<script type="text/javascript">
function gotoWrite() {
	
	/*	
	$('#finalIssue').attr('disabled','disabled');

	var param = {cponPolicList:list};

	 $.ajax({
		url: "/vipcoupon/getcoupons/issueCouponDiy.do",
		type: "POST",
		contentType: "application/json;charset=UTF-8",
		dataType: "json",
		data: JSON.stringify(param),
		success: function (data, textStatus, jqXHR) {

			var dataList = data.result; //리턴 값 받아오기

			if(dataList.statCd == "success"){
				var options = {};
				options.msg = '쿠폰북이 발급되었습니다.';
				options.callback  = fn_goPage;
				gfn_alertMsgBox(options);
				return false;
			}
		},
		complete: function(xhr){
			clearLmt();     		//중복제한 초기화
		},
		error: function(xhr,status,error){
			 var err = JSON.parse(xhr.responseText);
			 alert(xhr.status);
			 alert(err.message);
		}
	}); */
}
</script>
<body>
<h1> 공지사항</h1>
<!-- 01. 목록 조회 -->
<!-- 02. 목록 클릭 (->상세 페이지로 이동) -->
<!-- 03. 글쓰기 (->글쓰기 페이지로 이동) -->
<!-- 04.  -->
<!-- 05.  -->

	<form role="form">			
		<table border="1">
			<tr>
				<th>순번</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
			<c:forEach var="test" items="${dsTable}">
				<tr>
					<td>${test.CONTENT_SN}</td>
					<td>
						<a href="noticeDetail?CONTENT_SN=${test.CONTENT_SN}">
							${test.CONTENT_TITLE}
						</a>
					</td>
					<td>${test.MEMBER_ID}</td>
					<td>${test.CONTENT_HITS}</td>
				</tr>
			</c:forEach>
		</table>	
	</form>
<a href="noticeWrite">글쓰기</a>			
<a href="noticeDetail">상세보기</a>		
</body>
</html>