<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1">
<title>상품등록</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/customer/main.js" defer></script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙 1 시작 -->
				
				
				<!-- 상단 중앙 2 시작 -->
				<div id="section2">
				
					<!-- 우측 화면 시작 -->
					<c:if test="${insertCnt == 1}">
						<script type="text/javascript">
							setTimeout(function() {
								alert("글 등록 성공!");
								window.location="${path}/board_home.bc";
							}, 1000);
						</script>
					</c:if>
					
					<c:if test="${insertCnt != 1}">
						<script type="text/javascript">
							setTimeout(function() {
								alert("글 등록 실패!");
								window.location="${path}/board_add.bc";
							}, 1000);
						</script>
					</c:if>
					<!-- 우측 화면 종료 -->
				</div>
			</div>   
		</div>
		<!-- 컨텐츠 끝 -->

		<!-- footer 시작 -->
		<!-- footer 끝 -->
	</div>
</body>
</html>