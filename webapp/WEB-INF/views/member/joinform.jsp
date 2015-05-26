<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<title>mysite</title>

<script type="text/javascript" src="/mysite3/assets/js/jquery/jquery-1.9.0.js"></script>
<script>
$( function() {
	
	$( "#join-form" ).submit( function() {
		if( $( "#email-checked" ).is( ":visible" ) == false ) {
			alert( "이메일 중복 여부를 확인 해 주세요." );
			return false;
		}
		
		return false;
	});
	
	/* $( "#email" ).change( function() {
		$( "#check-email" ).show();
		$( "#email-checked" ).hide();
	});
	 */
	$( "#check-email" ).click( function() {
		var email = $( "#email" ).val();
		if( email == "" ) {
			alert( "이메일이 비어 있습니다." );
			return;
		}
		
		var postData = "email=" +  email;
		  $.ajax( {
			    url : "/mysite3/member/api/checkEmail",
			    type: "post",
//			    dataType: "json",
			    data: postData,
//			    contentType: "application/json",
			    success: function( response ){
			    	/* if( response.result == false  ) {
			    		// 사용가능
			    		$( "#check-email" ).hide();
			    		$( "#email-checked" ).show();
			    	} else {
			    		alert( response.data );
			    	} */
			    	console.log( response );
			    },
			    error: function( jqXHR, status, e ){
			       console.error( status + " : " + e );
			    }

			   });
	});
});
</script>


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

				<form id="join-form" name="joinForm" method="post" action="/mysite3/member/join">
					
					<input type="hidden" name="a" value="join">
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value="">

					<label class="block-label" for="email">이메일</label>
					<input id="email" name="email" type="text" value="">
					<input type="button" value="id 중복체크">
					
					<label class="block-label">패스워드</label>
					<input name="password" type="password" value="">
					
					<fieldset>
						<legend>약관동의</legend>
						<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
						<label>서비스 약관에 동의합니다.</label>
					</fieldset>
					
					<input type="submit" value="가입하기">
					
					<c:if test="${param.result=='fail'}"> 오류 :  가입실패! 다시 입력하세요  </c:if>
					
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