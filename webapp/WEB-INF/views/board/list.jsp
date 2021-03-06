<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<div id="board">
				<form id="search_form" action="/mycafe/board/search" method="post">
					<input type="text" id="kwd" name="kwd" value="">
					<input type="submit" value="찾기">
				</form>
				<table class="tbl-ex">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>조회수</th>
						<th>작성일</th>
						<th>&nbsp;</th>
					</tr>
					<c:forEach items="${list }" var = "vo" >				
					<tr>
						<td>${vo.no }</td>
						<td><a href="/mycafe/board/view?no=${vo.no }">${vo.title }</a></td>
						<td>${vo.member_name }</td>
						<td>${vo.viewcnt }</td>
						<td>${vo.regdate }</td>
						<td>
							<c:if test = "${authMember.no == 1 }">
								<a href="/mycafe/board/delete?no=${vo.no }" class="del">삭제</a>
							</c:if>
						</td>
					</tr>
					</c:forEach>										
				</table>
				<div class="bottom">
					<c:if test = "${authMember.no == 1 }">
						<a href="/mycafe/board/write" id="new-book">글쓰기</a>
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