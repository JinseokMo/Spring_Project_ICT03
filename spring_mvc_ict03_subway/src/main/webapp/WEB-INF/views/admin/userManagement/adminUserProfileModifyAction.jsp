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
	<c:if test="${profileModify == 1}">
	    <script type="text/javascript">
	    	alert("유저 프로필 변경 성공.");
	        window.location = '${path}/userList.ad';
	    </script>
	</c:if>
	
	<c:if test="${profileModify != 1}">
	    <script type="text/javascript">
	        alert("유저 프로필 변경 실패.");
	        window.location = '${path}/userList.ad';
	    </script>
	</c:if>
</body>
</html>