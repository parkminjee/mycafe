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
				<table class="tbl-ex">
					<tr>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>더하기</th>
						<th>빼기</th>
						<th>합계</th>
					</tr>
					<c:forEach items="${list }" var = "vo" >
					<tr>
						<td><a href="/mycafe/menu/view?no=${vo.no }">${vo.name }</a></td>
						<td>${vo.price }</td>
						<td>${vo.quantity }</td>
						<td><a href="/mycafe/order/plus?no=${vo.no }" >더하기</a></td>
						<td><a href="/mycafe/order/minus?no=${vo.no }">빼기</a></td>
						<td>${vo.price * vo.quantity }원</a></td>
					</tr>
					</c:forEach>
					<tr>
						<td> 총합 : </td>
					</tr>										
				</table>
				<div class="bottom">
					<a href="/mycafe/order/buy" id="new-book"> 주문하기 </a>
					<a href="/mycafe/order/refresh" id="new-book"> 주문초기화 </a>
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