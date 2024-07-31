<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 상세페이지</title>
<%-- <link rel="stylesheet" href="${path}/resources/css/board/board_list.css"> --%>
 
</head>
<body>
	<div id="right">
			<div class="table_div pt-2">
				<form name="boardList">
				<c:forEach var="dto" items="${list}">
					<div class="pt-2">
						<div class="card">
						  <div class="card-header text-start">
						    ${dto.writeDate}
						  </div>
						  <div class="card-body text-start">
						    <h6 class="card-title text-start">${dto.userNickname}님의 댓글 </h6>
						    <p class="card-text text-start">${dto.commentContent}</p>
						    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
						  </div>
						</div>
					</div>	
				</c:forEach>
				</form>
			</div>
		</div>
</div>
</body>
</html>
