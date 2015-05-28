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
			<div id="board">
				<table class="tbl-ex">
					<tr>
						<th>번호</th>					
						<th>이름</th>					
						<th>email</th>					
						<th>비밀번호</th>					
						<th>주문금액</th>					
						<th>마일리지</th>					
						<th>가입일</th>					
						<th>&nbsp;</th>
					</tr>
					<c:forEach items="${list }" var = "vo" >				
					<tr>
						<td>${vo.no }</td>
						<td><a href="/mycafe/admin/edit?no=${vo.no }">${vo.name }</a></td>
						<td>${vo.email }</td>
						<td>${vo.password }</td>
						<td><fmt:formatNumber value="${vo.orderprice }" type="number"/>  원</td>
						<td><fmt:formatNumber value="${vo.orderprice*0.1 }" type="number"/>  점</td>
						<td>${vo.joindate }</td>
						<td><a href="/mycafe/admin/delete?no=${vo.no }" class="del">회원삭제</a></td>
					</tr>
					</c:forEach>
					<tr>
					<td></td>
					<td>총매출액 :</td>
						<td> ${sum }원</td>
					</tr>										
				</table>
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