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
	<c:if test="${result == 1}">
	    <script type="text/javascript">
	    	alert("내정보 업데이트를 성공하였습니다.");
	        window.location = '${path}/myInfo.us';
	    </script>
	</c:if>
	
	<c:if test="${result != 1}">
	    <script type="text/javascript">
	        alert("내정보 업데이트를 실패하였습니다.");
	        window.location = '${path}/myInfo.us';
	    </script>
	</c:if>
</body>
</html>