<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=divice-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/user/join.css">
<title>회원가입</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/customer/main.js" defer></script>

<!-- join.js -->
<script src="${path}/resources/js/user/join.js" defer></script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
		<!-- header 끝 -->
		
		<!-- contents 시작 -->
		<div class="container">
			<div class="contents">
				<c:if test="${insertCnt == 1}">
					<script type="text/javascript">
						alert("회원가입 성공!")
						window.location='${path}/login.us';
					</script>
				</c:if>	
		
				<c:if test="${insertCnt != 1}">
					<script type="text/javascript">
						alert("회원가입 실패!")
						window.location='${path}/join.us';
					</script>
				</c:if>		
				
			
			</div>
		</div>
		<!-- contents 끝 -->
		
	<!-- footer 시작 -->
	<%-- <%@ include file="../../common/footer.jsp" %> --%>
	<!-- footer 끝 -->
	</div>
</body>
</html>