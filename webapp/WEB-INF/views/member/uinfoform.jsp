
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//HttpSession sess = request.getSession(false);
	//MemberVo authMember = (MemberVo)session.getAttribute ("authMember");
%>
<!doctype html>
<html>
<head>
<title>COFFEENIE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mycafe/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
		<jsp:include page="/WEB-INF/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">

				<form id="join-form" name="joinForm" method="post" action="/mycafe/member/uinfo">
					<input type="hidden" name="a" value="edit">
					<input type="hidden" name="no" value="${authMember.no }">
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value="${authMember.name }">
											
					<label class="block-label">패스워드</label>
					<input name="password" type="password" value="${authMember.password }">
					
					<input type="submit" value="수정">
					
				</form>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/WEB-INF/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>