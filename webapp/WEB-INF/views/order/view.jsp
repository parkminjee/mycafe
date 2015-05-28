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
					<tr>
						<td class="label">상품명</td>
						<td>${view.name }</td>
					</tr>
					<tr>
						<td class="label">가격</td>
						<td>
							<div class="view-content">
							<fmt:formatNumber value="${view.price }" type="number"/> 원 
								</div>
						</td>
					</tr>
					<tr>
						<td class="label">설명</td>
						<td>${view.content }</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
</body>
</html>