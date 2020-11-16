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
					<td>${test.ROW_NUM}</td>
					<td>
						<a href="noticeDetail?CONTENT_SN=${test.CONTENT_SN}&BOARD_ID=${test.BOARD_ID}">
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
</body>
</html>