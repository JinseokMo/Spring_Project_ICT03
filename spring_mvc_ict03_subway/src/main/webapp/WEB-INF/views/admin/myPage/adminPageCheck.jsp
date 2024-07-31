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
	<c:if test="${check == 1}">
		<script type="text/javascript">
			window.location = '${path}/adminModify.ad';
		</script>
	</c:if>
	<c:if test="${check == 0}">
		<script type="text/javascript">
			alert("비밀번호를 확인하세요.");
			window.location = '${path}/adminMypage.ad';
		</script>
	</c:if>
</body>
</html>