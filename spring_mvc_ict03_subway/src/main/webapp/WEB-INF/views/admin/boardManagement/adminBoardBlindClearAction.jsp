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
	<c:if test="${blindClearRsult == 1}">
	    <script type="text/javascript">
	    	alert("게시글 블라인드 해제 성공하였습니다.");
	        window.location = '${path}/boardBlindList.ad';
	    </script>
	</c:if>
	
	<c:if test="${blindClearRsult != 1}">
	    <script type="text/javascript">
	        alert("게시글 블라인드 해제 실패하였습니다.");
	        window.location = '${path}/boardBlindList.ad';
	    </script>
	</c:if>
</body>
</html>