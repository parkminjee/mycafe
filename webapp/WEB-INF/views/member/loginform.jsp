<%@ page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<%
	String result = request.getParameter("result");
%>
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
				<form id="login-form" name="loginform" method="post" action="/mycafe/member/login">
					
					<label class="block-label" for="email">이메일</label>
					<input id="email" name="email" type="text" value="">
					<label class="block-label" >패스워드</label>
					<input name="password" type="password" value="">
					<p>
					<%
						if( "fail".equals( result )) //result 대신 ${param.result}로 쓸수있다. 
						{
					%>
						로그인이 실패 했습니다.
					<%
						}
					%>
					</p>
					<input type="submit" value="로그인">
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