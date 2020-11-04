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
<body>
<h1> 상세보기화면</h1>
<c:forEach var="test" items="${dsTable}">
	<form role="form">
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
	 </c:forEach>
<%
	/* String name = request.getParameter("name");
	String contents = request.getParameter("contents");
	
	request.setAttribute("name", name);
	request.setAttribute("contents", contents);
	
	response.sendRedirect("noticeList.jsp"); */
%>
</body>
</html>