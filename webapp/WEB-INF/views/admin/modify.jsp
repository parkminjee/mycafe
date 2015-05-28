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
				<form class="board-form" method="post" action="/mycafe/admin/update?no=${edit.no }">
					<table class="tbl-ex">
						<tr>
							<th colspan="2">회원정보 수정</th>
						</tr>
						<tr>
							<td class="label">이름</td>
							<td><input type="text" name="name" value="${edit.name }"></td>
						</tr>
						<tr>
							<td class="label">email</td>
							<td><input type="text" name="email" value="${edit.email }"></td>
						</tr>
						<tr>
							<td class="label">비밀번호</td>
							<td><input type="text" name="password" value="${edit.password }"></td>
						</tr>
						<tr>
							<td class="label">누적주문금액</td>
							<td><input type="text" name="orderprice" value="${edit.orderprice }"></td>
						</tr>
						<tr>
							<td class="label">가입일자</td>
							<td><input type="text" name="joindate" value="${edit.joindate }"></td>
						</tr>
						
					
					</table>
					<div class="bottom">
						<a href="/mycafe/admin/index">수정취소</a>
						<input type="submit" value="회원정보수정">
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