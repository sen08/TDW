<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sweets</title>
</head>
<script type="text/javascript">
function save() {
	
}
</script>
<body>
<form action="noticeDetail">
	<h1> 공지사항 작성</h1>
	<!-- 저장 누르면 완료알림창 뜨고 목록으로 돌아가기 -->
	<!-- <button onclick="save();">저장</button> -->
	<!--  -->
	<form role="form" method="post" action="writeNotice">
		<table>
			<tbody>
				<tr>
					<td>
						<label for="title">제목 : </label><input type="text" id="title" name="title" />
					</td>
				</tr>	
				<tr>
					<td>
						<label for="detail">내용 : </label><textarea id="content" name="content" ></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<label for="writer">작성자 : </label><input type="text" id="writer" name="writer" />
					</td>
				</tr>
				<tr>
					<td>						
						<button type="submit">작성</button>
					</td>
				</tr>			
			</tbody>			
		</table>
	</form>
	
	
</body>
</html>