<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	<form name="board_add" action="board_addAction.bc" method="post" enctype="multipart/form-data">
	<div class="container py-5">
			<div class="pb-0">
            	<h4>게시글 작성</h4>
			</div>
			<hr class="my-4">
            <div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">게시글 제목</span>
			  <input type="text" class="form-control" name="boardTitle" id="boardTitle" placeholder="제목을 입력하세요." required aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
			</div>
			
			<div class="input-group mb-3">
			  <span class="input-group-text">게시글 내용</span>
			  <textarea class="form-control" aria-label="With textarea" name="boardContent" id="boardContent" placeholder="내용을 입력하세요." required></textarea>
			</div>

            <div class="input-group mb-3">
			  <input type="file" class="form-control"  name="userImg1" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <input type="file" class="form-control"  name="userImg2" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <input type="file" class="form-control"  name="userImg3" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <input type="file" class="form-control"  name="userImg4" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <input type="file" class="form-control"  name="userImg5" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div>
			
			<hr class="my-4"> 
        
        <div class="text-end">
	        <button type="button" class="btn btn-outline-primary" onclick="window.location='board_add.bc'">취소</button>
	        <input class="btn btn-primary" type="submit" value="등록">
        </div>
    </div>
    </form>
</body>
</html>