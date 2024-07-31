<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css" rel="stylesheet">
<style>
	.ellipsis {
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 1; /* 표시할 줄 수 */
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    max-width: 100%; /* col 사이즈에 맞춤 */
	}
	
		.ellipsis1 {
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 5; /* 표시할 줄 수 */
    word-break:break-all;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    max-width: 100%; /* col 사이즈에 맞춤 */
	}
</style>
</head>
<body>
    <div class="wrap">
        <c:choose>
            <c:when test="${empty sessionScope.sessionID}">
                <%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
            </c:when>
            <c:otherwise>
                <%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
            </c:otherwise>
        </c:choose>
        <c:forEach var="boardList" items="${boardList}">
        <div class="col-lg-12 col-md-12 col-sm-12 d-flex justify-content-center">
            <div class="w-75 border my-3 row">
                <img src="${boardList.userImg1}" class="img-thumbnail" style="max-width: 200px; min-width: 200px;">
                <div class="col">
                    <a href="${path}/board_detail.bc?boardNo=${boardList.boardNo}" style="text-decoration : none; color : black;"><h class="h4 my-1 ellipsis">${boardList.boardTitle}</h></a>
                    <p class = "ellipsis1">${boardList.boardContent}</p>
                </div>
                <div class="col-md-2">
                	<c:if test="">
                    <div style="color : red; display: flext; align-items:center">
                    	<i class="bi bi-heart" style="font-size: 30px;"></i>
                    	<p style="color: black; margin: 0;">${boardList.likeNo}</p>
                    </div>
                    <div style="color: red; display: flex; align-items: center;">
			            <i class="bi bi-heart-fill" style="font-size: 30px; margin-right: 10px;"></i>
			            <p style="color: black; margin: 0;">${boardList.likeNo}</p>
       				 </div>
       				 </c:if>
                    <p>조회수 : ${boardList.viewCount}</p>
                    <p>작성자 : ${boardList.userNickname}</p>
                    <p>작성일 : ${boardList.boardWriteDate}</p>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</body>
</html>