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
	<c:if test="${sessionScope.userDTO.adminGrade eq 'super'}">
    <script type="text/javascript">
        window.location = '${path}/userList.ad';
    </script>
	</c:if>
	<c:if test="${sessionScope.userDTO.adminGrade ne 'super'}">
    <script type="text/javascript">
        alert("권한이 없습니다. 관리자에게 문의 하세요.");
        window.location = '${path}/adminPageHome.ad';
    </script>
	</c:if>
</body>
</html>