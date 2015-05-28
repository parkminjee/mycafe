<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<div id="board" class="board-form">
				<table class="tbl-ex">
					<tr>
						<th colspan="2">상품 상세정보</th>
					</tr>
					<tr>
						<td class="label">사진</td>
						<td><img src="/mycafe/assets/css/images/${view.orderno }.gif"/ width = 400></td>
					</tr>
					<tr>
						<td class="label">상품명</td>
						<td>${view.name }</td>
					</tr>
					<tr>
						<td class="label">가격</td>
						<td>
							<div class="view-content">
							<fmt:formatNumber value="${view.price }" type="number"/>
							</div>
						</td>
					</tr>
					<tr>
						<td class="label">설명</td>
						<td>${view.content }</td>
					</tr>
					<tr>
						<td class="label">우선순위/파일명</td>
						<td>${view.orderno }</td>
					</tr>
					
				</table>
				<div class="bottom">
					<a href="/mycafe/menu/index">상품목록</a>
					<a href="/mycafe/menu/update?no=${view.no }">상품수정</a>
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