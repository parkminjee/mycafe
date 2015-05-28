<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<ul>
	<li class="selected">COFFEENIE CAFE</li>
	<li><a href="/mycafe/board/list">공지사항</a></li>
	<li id="order"><a href="/mycafe/order/refresh">주문하기</a></li>
	<c:if test="${authMember.no == 1 }">
		<li class="selected">관리자메뉴</li>
		<li><a href="/mycafe/menu/index">메뉴추가</a></li>
		<li><a href="/mycafe/admin/index">회원관리</a></li>
	</c:if>		
</ul>