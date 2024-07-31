<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/main.css">

</head>
<body>
<div class="wrap">
    <!-- header 시작 -->
    <%-- 세션 상태에 따라 로그인 헤더 또는 로그아웃 헤더를 포함 --%>
    <c:choose>
        <c:when test="${empty sessionScope.sessionID}">
            <%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
        </c:when>
        <c:otherwise>
            <%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
        </c:otherwise>
    </c:choose>
    <!-- header 끝 -->
    
   <%--  <%@ include file="/board/board_home2.jsp" %> --%>
   <div class="container py-5" id="custom-cards">
    <h4 class="pb-0">인기글</h4>
    	<div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-3">
			<c:forEach var="dto" items="${top3Posts}">
		      <div class="col">
		      	<a href="${path}/board_detail.bc?boardNo=${dto.getBoardNo()}" style="text-decoration-line: none;">
		        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image:url('${dto.getUserImg1()}'); background-size: cover;">
		          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
		            <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" >${dto.getBoardTitle()}</h3>
		            <ul class="d-flex list-unstyled mt-auto">
		              <li class="me-auto">
		                <img src="${path}/resources/image/board/main/default.png" alt="profile_pic" width="32" height="32" class="rounded-circle border border-white">
		              </li>
		              <li class="d-flex align-items-center me-3">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"/></svg>
		                <small>${dto.getUserNickname()}</small>
		              </li>
		              <li class="d-flex align-items-center">
		                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"/></svg>
		                <div class="btn-group">
			                <button type="button" class="btn btn-outline-danger">
				                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
				  					<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15"/>
								</svg>
				                ${dto.getLikeNo()}
				            </button>
			                <%-- <button type="button" class="btn btn-outline-secondary">
			                  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
								  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15"/>
								</svg>
								${dto.getLikeNo()}
			                  	<span class="visually-hidden">Button</span>
			                </button> --%>
		                </div>
		              </li>
		            </ul>
		          </div>
		        </div>
		        </a>
		      </div>
		    </c:forEach>
    	</div>
  	</div> 
  	
  	
 <!-- ======================= Main content START -->
    <section class="position-relative">
        <div class="container" data-sticky-container>
            <div class="row">
                <!-- Main Post START -->
                    <div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 align-items-stretch g-4 py-5">
                        <c:forEach var="dto" items="${list}">
                            <!-- Card item START -->
                            <div class="col">
                                <div class="card">
                                    <a href="${path}/board_detail.bc?boardNo=${dto.getBoardNo()}">
                                        <!-- Card img -->
                                        <div class="position-relative">
                                            <img class="card-img" src="${dto.getUserImg1()}" alt="Card image">
                                        </div>
                                        <div class="card-body position-relative">
                                            <h4 class="card-title"><a href="post-single.html" class="btn-link text-reset fw-bold" style="text-decoration:none;">${dto.getBoardTitle()}</a></h4>
                                            <div class="nav-item" style="color:#E2E2E2">${dto.getBoardWriteDate()}</div>
                                            <%-- <p class="card-text" style="overflow:hidden;">${dto.getBoardContent()}</p> --%>
                                            <c:set var="boardContent" value="${dto.boardContent}" />
											<c:set var="first80Chars" value="${fn:length(boardContent) > 80 ? fn:substring(boardContent, 0, 80) : boardContent}" />
											<p class="card-text">${first80Chars}...</p>
                                            <!-- Card info -->
                                           	<!-- 프로필/닉네임/좋아요-시작 -->
                                           	<div class="position-absolute bottom-0">
	                                            <div class ="row align-items-center">
	                                            	<div class="col-9">
									               	 	<img src="${path}/resources/image/board/main/default.png" alt="profile_pic" width="32" height="32" class="rounded-circle border border-white">
													
									                	<small>${dto.getUserNickname()}</small>
									                </div>
													<div class="col-md-3">
										                <div class="btn-group px-0">
											                <button type="button" class="btn btn-outline-secondary">
											                  	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
																  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15"/>
																</svg>
																${dto.getLikeNo()}
											                  	<span class="visually-hidden">Button</span>
											                </button>
										                </div>
										             </div>
								            	 </div>
							            	 </div>
							            	<!-- 프로필/닉네임/좋아요-끝 --> 
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                    </div> <!-- Row end -->
                </div>
            </div>
    </section>
    <!-- ======================= Main content END -->

    
    <!-- contents 끝 -->
</div>
</body>
</html>
