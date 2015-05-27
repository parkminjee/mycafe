<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>COFFEENIE</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mycafe/assets/css/board.css" rel="stylesheet"
	type="text/css">
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
						<td>메뉴</td>
					</tr>
					<tr>
						<th>사진</th>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>더하기</th>
						<th>빼기</th>
						<th>합계</th>
					</tr>
					<c:forEach items="${list }" var="vo">
						<tr>
							<td><img src="/mycafe/assets/css/images/${vo.orderno }.gif"
								/ width=40></td>
							<td><a href="/mycafe/order/view?no=${vo.no }">${vo.name }</a></td>
							<td>${vo.price }원</td>
							<td>${vo.quantity }잔</td>


							<td><a href="/mycafe/order/plus?no=${vo.no }"><img
									src="/mycafe/assets/css/images/add.png" width=30 alt="더하기" /></a></td>
							<c:choose>
								<c:when test="${vo.quantity>=1 }">
									<td><a href="/mycafe/order/minus?no=${vo.no }"><img
											src="/mycafe/assets/css/images/sub.png" width=30 alt="빼기" /></a></td>
								</c:when>
								<c:otherwise>
									<td><a href=""><img
											src="/mycafe/assets/css/images/sub.png" width=30 alt="빼기" /></a></td>
								</c:otherwise>
							</c:choose>
							<td>${vo.price * vo.quantity }원</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td>총합 : ${sum }원</td>
					</tr>
				</table>
				<c:choose>
					<c:when test="${sum!=0 }">
						<div class="bottom">
							<a href="/mycafe/order/buy" id="new-book"> 주문하기 </a> <a
								href="/mycafe/order/refresh" id="new-book"> 주문초기화 </a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="bottom">
							<p>주문할 상품을 선택해주세요</p>
						</div>
					</c:otherwise>
				</c:choose>

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