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
	alert("저장되었답니당~?");
}
function update() {
	alert("수정되었습니당!!!!!!");
}
</script>
<body>
	<h1> 공지사항 작성</h1>
	<!-- 저장 누르면 완료알림창 뜨고 목록으로 돌아가기 -->
	<!-- <button onclick="save();">저장</button> -->
	<!--  -->
	<form role="form" method="post" action="noticeList">
	<table>
		<c:choose>
			<c:when test="${writeGubun='write'}">
				<tbody>
					<tr>
						<td>
							<label for="title">제목 : </label><input type="text" id="title" name="title" value="${test.CONTENT_TITLE}"/>
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
							<button type="submit" onclick="save()">작성</button>
						</td>
					</tr>			
					<input type="hidden" id="gubun" name="gubun" value="2"/>
					<input type="hidden" id="BOARD_ID" name="BOARD_ID" value="01"/>
				</tbody>			
			</c:when>
			<c:otherwise>
				<c:forEach var="test" items="${dsTable}">
					<tbody>
						<tr>
							<td>
								<label for="CONTENT_TITLE">제목 : </label><input type="text" id="CONTENT_TITLE" name="CONTENT_TITLE" value="${test.CONTENT_TITLE}"/>
							</td>
						</tr>	
						<tr>
							<td>
								<label for="CONTENT_DETAIL">내용 : </label><textarea id="CONTENT_DETAIL" name="CONTENT_DETAIL">${test.CONTENT_DETAIL}</textarea>
							</td>
						</tr>
						<tr>
							<td>
								<label for="MEMBER_ID">작성자 : </label><input type="text" id="MEMBER_ID" name="MEMBER_ID" value="${test.MEMBER_ID}"/>
							</td>
						</tr>
						<tr>
							<td>						
								<button type="submit" onclick="update()">수정</button>
							</td>
						</tr>			
						<input type="hidden" id="CONTENT_SN" name="CONTENT_SN" value="${test.CONTENT_SN}"/>
						<input type="hidden" id="gubun" name="gubun" value="3"/>
						<input type="hidden" id="writeGubun" name="writeGubun" value="update"/>
						<input type="hidden" id="BOARD_ID" name="BOARD_ID" value="01"/>
					</tbody>		
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</form>
</body>
</html>