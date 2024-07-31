<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
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
	
	<form name="board_edit" action="board_editAction.bc" method="post" enctype="multipart/form-data">
		<%-- <input type="hidden" name="hiddenPageNum" value="${pageNum}"> --%>
		<input type="hidden" name="hiddenBoardNo" value="${dto.boardNo}">
		<input type="hidden" name="hiddenUserImg1" value="${dto.userImg1}">
		<input type="hidden" name="hiddenUserImg2" value="${dto.userImg2}">
		<input type="hidden" name="hiddenUserImg3" value="${dto.userImg3}">
		<input type="hidden" name="hiddenUserImg4" value="${dto.userImg4}">
		<input type="hidden" name="hiddenUserImg5" value="${dto.userImg5}">
	<div class="container py-5">
			<div class="pb-0">
            	<h4>게시글 수정</h4>
			</div>
			<hr class="my-4">
            <div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">게시글 제목</span>
			  <input type="text" class="form-control" name="boardTitle" id="boardTitle" value="${dto.getBoardTitle()}" placeholder="제목을 입력하세요." required aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="">
			</div>
			
			<div class="input-group mb-3">
			  <span class="input-group-text">게시글 내용</span>
			  <textarea class="form-control" aria-label="With textarea" name="boardContent" id="boardContent" placeholder="내용을 입력하세요." required>${dto.getBoardContent()}</textarea>
			</div>

            <div class="input-group mb-3">
              <img src="${dto.getUserImg1()}" width="80px" alt="이미지1">
			  <input type="file" class="form-control"  name="${dto.getUserImg1()}" id="userImg1" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <img src="${dto.getUserImg2()}" width="80px" alt="이미지1">
			  <input type="file" class="form-control"  name="userImg2" id="userImg2" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <img src="${dto.getUserImg3()}" width="80px" alt="이미지1">
			  <input type="file" class="form-control"  name="userImg3" id="userImg3" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <img src="${dto.getUserImg4()}" width="80px" alt="이미지1">
			  <input type="file" class="form-control"  name="userImg4" id="userImg4" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div> 
			<div class="input-group mb-3">
			  <img src="${dto.getUserImg5()}" width="80px" alt="이미지1">
			  <input type="file" class="form-control"  name="userImg5" id="userImg5" accept="image/*">
			  <label class="input-group-text" for="inputGroupFile02">Upload</label>
			</div>
			
			<hr class="my-4"> 
        
        <div class="text-end">
	        <input class="btn btn-primary" type="reset" value="삭제" onclick="window.location='${path}/board_deleteAction.bc?boardNo=${dto.boardNo}'">
	        <input class="btn btn-primary" type="submit" value="수정완료">
        </div>
    </div>
    </form>
</body>
</html>