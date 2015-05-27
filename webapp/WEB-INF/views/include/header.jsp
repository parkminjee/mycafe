<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--
<%
	HttpSession sess = request.getSession(false);
	MemberVo authMember = (MemberVo)session.getAttribute ("authMember");
%>
--%>
	<h1><a href="/mycafe/index">COFFEENIE</a></h1>
	<ul>
	
		<br>
	
	<c:if test="${empty authMember}">
		<li><a href="/mycafe/member/login">로그인</a></li>
		<li><a href="/mycafe/member/join">회원가입</a></li>
	</c:if>
	<c:if test="${!empty authMember}">
		<li><a href="/mycafe/member/uinfo">회원정보수정</a></li>
		<li><a href="/mycafe/member/logout">로그아웃</a></li>
		<li>${sessionScope.authMember.name}님 JAVA한사발 하시죠^^</li>
	</c:if> 

	</ul>