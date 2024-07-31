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
	
	<p>${hideRsult}</p>
	<c:if test="${hideRsult == 1}">
	    <script type="text/javascript">
	    	alert("유저 숨김을 성공하였습니다.");
	        window.location = '${path}/userList.ad';
	    </script>
	</c:if>
	
	<c:if test="${hideRsult != 1}">
	    <script type="text/javascript">
	        alert("유저 숨김을 실패하였습니다.");
	        window.location = '${path}/userList.ad';
	    </script>
	</c:if>
</body>
</html>