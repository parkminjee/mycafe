<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
<title>COFFEENIE</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mycafe/assets/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url = "/WEB-INF/views/include/header.jsp">
			</c:import>
		</div>
		<div id="wrapper">
			<div id="content">
				<div id="site-introduction">
					<img id="profile" src="/mycafe/image/coffeenie.jpg"  width = 350; align="middle">
					<h2>COFFEENIE</h2>
					<p>
						이용해주셔서 감사합니다.<br>
					</p>
					<p>
						<a href="/mycafe/index">메인으로</a>
					</p>					
				</div>
			</div>
		</div>
		<div id="navigation">
			<c:import url = "/WEB-INF/views/include/navigation.jsp">
				<c:param name="type" value ="main"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>