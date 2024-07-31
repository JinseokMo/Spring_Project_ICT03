<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자-유저목록</title>
<style>
    body {
        min-height: 100vh;
    }
</style>
</head>
<body>
	<div class="row">
	<!-- Sidebar -->
	<div class = "col-md-2">
    	<%@ include file="/WEB-INF/views/admin/adminSidebar.jsp" %>
    </div>
    <!-- Main -->
    <div class="col-md-10 container-fluid">
    	<div class ="pt-4">
    		<h3>게시글 목록</h3>
    		<form class="d-flex mt-1" role="search" action="${path}/boardBlindListSearch.ad">
        		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="search" name = "search">
        		<button class="btn btn-outline-success me-2" type="submit">Search</button>
      		</form>
    	</div>
	    <table class="table table-hover" style = "text-align :center; vertical-align : middle;">
	    	<tr>
	    		<th>글번호</th>
	    		<th>사진</th>
	    		<th>제목</th>
	    		<th>작성자</th>
	    		<th>작성일</th>
	    		<th>조회수</th>
	    		<th>좋아요</th>
	    		<th>수정 / 삭제</th>
	    	</tr>
	    	<c:forEach var="blindList" items="${blindList}">
	    	<tr>
	    		<td>${blindList.boardNo}</td>
	    		<td style="max-width:100px;">
	    			<div id="slide" class="carousel slide">
				  		<div class="carousel-inner">
				    		<div class="carousel-item active">
				    			 <img src="${path}/resources/image/board/main/${blindList.userImg1}" class="d-block w-100">
				    		</div>
				    		<div class="carousel-item">
				     			 <img src="${path}/resources/image/board/main/${blindList.userImg2}" class="d-block w-100">
				    		</div>
				    		<div class="carousel-item">
				   			   <img src="${path}/resources/image/board/main/${blindList.userImg3}" class="d-block w-100">
				    		</div>
				    		<div class="carousel-item">
				     			 <img src="${path}/resources/image/board/main/${blindList.userImg4}" class="d-block w-100">
				    		</div>
				    		<div class="carousel-item">
				      			<img src="${path}/resources/image/board/main/${blindList.userImg5}" class="d-block w-100">
				    		</div>
				 		 </div>
				 		 <button class="carousel-control-prev" type="button" data-bs-target="slide" data-bs-slide="prev">
				    		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				   			 <span class="visually-hidden">Previous</span>
				  		</button>
				  		<button class="carousel-control-next" type="button" data-bs-target="slide" data-bs-slide="next">
				    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
				    		<span class="visually-hidden">Next</span>
				  		</button>
					</div>
				</td>
	    		<td>${blindList.boardTitle}</td>
	    		<td>${blindList.userNickname}</td>
	    		<td>${blindList.boardWriteDate}</td>
	    		<td>${blindList.likeNo}</td>
	    		<td>${blindList.viewCount}</td>
	    		<td>
	    			<button class= "btn btn-dark btn-sm" onclick="location.href=('boardBlindClear.ad?boardNo=${blindList.boardNo}')">해제</button>
	    		</td>
	    	</tr>
	    	</c:forEach>
	    </table>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>







