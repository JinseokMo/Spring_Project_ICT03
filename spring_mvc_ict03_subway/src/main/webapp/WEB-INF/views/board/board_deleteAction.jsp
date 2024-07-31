<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<%-- <link rel="stylesheet" href="${path}/resources/css/board/board_add.css"> --%>
</head>
<body>

	<c:choose>
        <c:when test="${empty sessionScope.sessionID}">
            <%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
        </c:when>
        <c:otherwise>
            <%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
        </c:otherwise>
    </c:choose>
	
	<!-- 시작 -->
	<div class="container py-5">
		<c:if test="${deleteCnt == 1}">
			<script type="text/javascript">
				setTimeout(function(){
					alert("게시글 삭제 성공!");
					window.location="${path}/myInfo.us";
				},1000);
			</script>
		</c:if>
		
		<c:if test="${deleteCnt != 1}">
			<script type="text/javascript">
				setTimeout(function(){
					alert("게시글 삭제 실패!");
					window.location="${path}/myInfo.us";
				},1000);
			</script>
		</c:if>
	</div>
					<!-- 끝 -->
</body>
</html>