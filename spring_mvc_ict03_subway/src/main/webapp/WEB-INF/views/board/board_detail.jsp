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
 
<script>
	$(function() {	// 상세페이지가 로딩되면
		
		// 댓글목록 자동 호출
		comment_list();
		
		// 1. 댓글쓰기 버튼 클릭 (1)
		$('#btnCommentSave').click(function(){
			comment_add();
		});
	
		// 게시판 목록버튼 클릭시 컨트롤러릐 목록으로 이동
		$('#btnList').click(function(){
			// 컨트롤러로 이동
			location.href="${path}/board_home.bc";
		});
	});
	function comment_add(){	// (2)
		// 게시글번호, 댓글작성, 댓글내용을 파라미터로 넘김
		let param = {
				"boardNo" : ${dto.boardNo}, // ket: value => 댓글번호: 게시글 번호
				"sessionUserNo" : sessionStorage.getItem('sessionUserNo'), // 세션에 저장된 사용자 ID
				"userNickname" : sessionStorage.getItem('userNickname'), // 세션에 저장된 사용자 이름
				"commentContent" : $('#commentContent').val()
		}
		
		$.ajax({
			url:'${path}/board_comment_insert.bc', // form의 action // 컨트롤로러 이동(3)
			type:'POST', // form의 method
			data: param,	// submit의 역할을 함 데이터 전송
			success: function(){	// 콜백함수(6) => 댓글쓰기가 완료되면 서버에서 콜백함수 호출
				/* $('#${userNickname}').val(""); */
				$('#commentContent').val("");
				comment_list(); // 댓글목록 새로고침(7)
			},
			error: function(){
				alert('로그인 후 이용가능합니다.');
			}
		});
	}
	
	// 자동으로 댓글목록 호출
	function comment_list(){	//(8)
		$.ajax({
			url:'${path}/board_comment_list.bc',		//컨트롤로러 이동(9)
			type:'POST',
			data: 'boardNo=${dto.boardNo}',
			// 서버에서 콜백함수 호출: result는 comment_list.jsp(컨트롤러에서 넘긴)
			success: function(result){	//(13)
				// div id가 commentList자리에 리스트페이지 출력
				$('#commentList').html(result);
			},
			error:function(){
				alert('comment_list() 오류');
			}
		});
	}
</script>
</head>
<body>
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
<div class="container pt-3 position-relative">
	<article class="blog-post">
		<form name="detailFrom" method="post">
	       <h3 class="display-5 link-body-emphasis mb-1"><strong>${dto.boardTitle}</strong></h3>
	       <p class="blog-post-meta">${dto.boardWriteDate} by ${dto.userNickname}</p>
	       <div class="btn-group position-absolute top-0 end-0 py-5">
             <button type="button" class="btn btn-outline-secondary">
               	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
		  			<path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15"/>
				</svg>
				${dto.getLikeNo()}
               	<span class="visually-hidden">Button</span>
             </button>
            </div>
			<div class="p-4 p-md-5 mb-4 rounded bg-body-secondary ">
		    	<div id="carouselExampleIndicators" class="carousel slide">
		            <div class="carousel-indicators">
		                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
		            </div>
	           
		            <div class="carousel-inner">
		                <div class="carousel-item active">
		                    <img src="${dto.getUserImg1()}" class="img-fluid rounded mx-auto d-block" alt="img_1">
		                </div>
		                <div class="carousel-item">
		                    <img src="${dto.userImg2}" class="img-fluid rounded mx-auto d-block" alt="img_2">
		                </div>
		                <div class="carousel-item">
		                    <img src="${dto.userImg3}" class="img-fluid rounded mx-auto d-block" alt="img_3">
		                </div>
		                <div class="carousel-item">
		                    <img src="${dto.userImg4}" class="img-fluid rounded mx-auto d-block" alt="img_4">
		                </div>
		                <div class="carousel-item">
		                    <img src="${dto.userImg5}" class="img-fluid rounded mx-auto d-block" alt="img_5">
		                </div>
		            </div>
	           
		            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		                <span class="visually-hidden">Previous</span>
		            </button>
		            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		                <span class="carousel-control-next-icon" aria-hidden="true"></span>
		                <span class="visually-hidden">Next</span>
		            </button>
		        </div>
			</div>
			<div class="row">
		    	<div class="col">
			        <p>${dto.boardContent}</p>
			        <hr>
		      </div>
			</div>
			<!-- 댓글 입력 코드 -->
			<div class="row">
				<div class="col-10">
					<div class="form-floating">
						 <textarea class="form-control" name="commentContent" id="commentContent" placeholder="댓글 작성..."></textarea>
					 	 <label for="floatingTextarea">댓글 입력</label>
					</div>
				</div>
				<div class="col-2">
					<button type="submit" class="btn btn-primary" id="btnCommentSave" >댓글 등록</button>
				</div>
			</div>
			<!-- 댓글 목록 코드 -->
			<div id="commentList" align="center">
				<!-- 댓글목록 -->
			</div>
		</form>
    </article>
</div>
  
</body>
</html>
