<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.userDTO == null}">
		<script type="text/javascript">
			alert("로그인 실패 : 이메일 또는 비밀번호를 확인해 주세요.");
			window.location= '${path}/adminLogin.ad';
		</script>
	</c:if>
	
	<c:if test="${sessionScope.userDTO != null}">
		<script type="text/javascript">
			window.location= '${path}/adminPageHome.ad';
		</script>
	</c:if>
</body>
</html>