<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<table class="tbl-ex">
					<tr>
						<th>상품명</th>
						<th>가격</th>
						<th>우선순위</th>
						<th>&nbsp;</th>
					</tr>
					<c:forEach items="${list }" var = "vo" >				
					<tr>
						<td><a href="/mycafe/menu/view?no=${vo.no }">${vo.name }</a></td>
						<td>${vo.price }</td>
						<td>${vo.orderno }</td>
						<td><a href="/mycafe/menu/delete?no=${vo.no }" class="del">상품삭제</a></td>
					</tr>
					</c:forEach>										
				</table>
				<div class="bottom">
					<a href="/mycafe/menu/write" id="new-book">상품추가</a>
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