<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("newLineChar", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<title>COFFEENIE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mycafe/assets/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/WEB-INF/views/include/header.jsp" />
		</div>
		<div id="content">
			<div id="board" class="board-form">
				<table class="tbl-ex">
				
					
					<tr>
						<th colspan="4">글보기</th>
					</tr>
					<tr>
								<td class="view-form">제목</td>
								<td colspan=3>${view.title }</td>
							</tr>
							<tr>
								<td class="view-form">이름</td>
								<td class="view-form">${view.member_name }</td>
								<td class="view-form">작성일</td>
								<td>${view.regdate }</td>
							</tr>
							<tr>
								<td colspan=4>${fn:replace( view.content, newLineChar, "<br>" ) }</td>
							</tr>
							
					
				</table>
				<div class="bottom">
					<a href="/mycafe/board/list">글목록</a>
					<c:if test="${authMember.no==1 }">
						<a href="/mycafe/board/modify?no=${view.no }">글수정</a>
					</c:if>
				</div>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/WEB-INF/views/include/navigation.jsp" />
		</div>
		<div id="footer">
			<c:import url="/WEB-INF/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>