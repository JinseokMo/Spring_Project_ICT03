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
	<c:if test="${nickNameCheck == 1}">
	    사용이 불가능 합니다.
	</c:if>
	
	<c:if test="${nickNameCheck == 0}">
	    사용이 가능합니다.
	</c:if>
</body>
</html>