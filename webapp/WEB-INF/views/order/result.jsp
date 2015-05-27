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
						<td> 주문결과 </td>
					</tr>
					<tr>
						<th>사진</th>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>합계</th>
					</tr>
					<c:forEach items="${list }" var = "vo" >
					<tr>
						<c:if test="${vo.quantity>0 }">
							<td><img src="/mycafe/assets/css/images/${vo.orderno }.gif"/ width = 40></td>
							<td><a href="/mycafe/order/view?no=${vo.no }" onclick = "window.open(this.href,'','width=700, height=650');return false;">${vo.name }</a></td>
							<td>${vo.price }원</td>
							<td>${vo.quantity }잔</td>
							<td>${vo.price * vo.quantity }원</a></td>
						</c:if>
					</tr>
					</c:forEach>
					<tr>
						<td> 총합 :  ${sum }원</td>
					</tr>										
				</table>
				<div class="bottom">
					<a href="/mycafe/order/ultorder" id="new-book"> 최종결제 </a>
					<a href="/mycafe/order/reorder" id="new-book"> 주문다시하기 </a>
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