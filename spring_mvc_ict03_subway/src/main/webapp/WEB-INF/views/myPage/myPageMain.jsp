<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY PAGE :: 마이피드</title>
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
   <!-- header 시작 -->
    <c:choose>
        <c:when test="${empty sessionScope.sessionID}">
            <%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
        </c:when>
        <c:otherwise>
            <%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
        </c:otherwise>
    </c:choose>
   <!-- header 끝 -->
   
    <div class="container-fluid mt-2 bg-body-secondary col-md-12" style="border: solid 1px linen;">
        <div class="mt-3 flex" style="display: flex;">
            <a class="ms-5"><img src="${path}/resources/image/user/profile/${userDTO.userProfile}" class="rounded-circle" style="max-width : 200px; max-height: 200px; min-width :200px; min-height:200px;"></a>
            <div class="my-auto ms-5">
                <h3 class="h3">${userDTO.lastName} ${userDTO.firstName}</h3>
                <span class="fs-4 w-100">${userDTO.userCountry}</span>
            </div>
            <div class="my-auto ms-auto">
                <a href="${path}/userInfoDetail.us" class="btn btn-primary">내 정보</a>
                <a class="btn btn-primary ms-2">좋아요</a>
            </div>
        </div>
        <div>
           <button class="mt-1 btn btn-outline-dark" style ="margin-left : 6%;"onclick="location.href=('${path}/userProfileReset.us?userNo=${sessionScope.userDTO.userNo}')">초기화</button>
        </div>
    </div>
    <!-- 프로필 라인 끝-->
    <div class="container-fluid mt-3 col-md-12 border">
        <h5 class="h5">나의 게시글</h5>
    </div>
    
    <div class="wrap">
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
                    <p>글번호 : ${boardList.boardNo}</p>
                    <p>조회수 : ${boardList.viewCount}</p>
                    <p>작성자 : ${boardList.userNickname}</p>
                    <p>작성일 : ${boardList.boardWriteDate}</p>
                    <input type="hidden" name="hiddenBoardNo" value="${boardList.boardNo}">
                    <input class="inputButton" type="button" value="수정" onclick="window.location='${path}/updateContent.bc?boardNo=${boardList.boardNo}'">
                    <input class="inputButton" type="button" value="삭제" onclick="window.location='${path}/board_deleteAction.bc?boardNo=${boardList.boardNo}'">
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</body>
</html>