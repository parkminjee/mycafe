<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
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
				<form class="board-form" method="post" action="/mycafe/menu/update?no=${update.no }">
					<table class="tbl-ex">
						<tr>
							<th colspan="2">상품수정</th>
						</tr>
						<tr>
							<td class="label">상품명</td>
							<td><input type="text" name="name" value="${update.name }"></td>
						</tr>
						<tr>
							<td class="label">가격</td>
							<td><input type="text" name="price" value="${update.price }"></td>
						</tr>
						<tr>
							<td class="label">설명</td>
							<td><input type="text" name="content" value="${update.content }"></td>
						</tr>
						<tr>
							<td class="label">우선순위</td>
							<td><input type="text" name="orderno" value="${update.orderno }"></td>
						</tr>
					
					</table>
					<div class="bottom">
						<a href="/mycafe/menu/view?no=${update.no }">수정취소</a>
						<input type="submit" value="상품수정">
					</div>
				</form>				
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