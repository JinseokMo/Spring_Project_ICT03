<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class = "row d-flex align-items-stretch">
        <c:choose>
            <c:when test="${empty sessionScope.sessionID}">
                <%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
            </c:when>
            <c:otherwise>
                <%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
            </c:otherwise>
        </c:choose>
		<!-- 본문시작 div -->
		<div class = "col-md-12 d-flex flex-column justify-content-center align-items-center">
		<!-- 본문시작 div -->
			<div class = "w-75 mb-3 d-flex justify-content-center">
				<img id ="profileImg" class = "img-fluid mx-auto rounded-circle" src="${path}/resources/image/user/profile/${sessionScope.userDTO.userProfile}" style="max-width: 200px;">
			</div>
			<form class ="w-75 text-center border" method="POST" name="adminUserInfo" action="${path}/userInfoModify.us">
				<div class="mt-3 mb-3 row">							   		
			   		<label for="userEmail" class="col-md-3 col-form-label">Email</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" name= "userEmail" id="userEmail" value="${sessionScope.userDTO.userEmail}">
			   		</div>
			 	</div>
			 	
			 	<div class="mb-3 row">
			   		<label for="userName"  class="col-md-3 col-form-label">LastName</label>
			   		<div class="col-md-2">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="lastName" name="lastName" value="${sessionScope.userDTO.lastName}">
			   		</div>
			   		<label for="userName" class="col-md-3 col-form-label">FistName</label>
			   		<div class="col-md-2">
			    		<input type="text" readonly class="form-control-plaintext text-center" id=fistName name="fistName" value="${sessionScope.userDTO.firstName}">
			   		</div>
			 	</div>
			 	
			 	<div class="mb-3 row">
			   		<label for="userHP" class="col-md-3 col-form-label">HP</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="userHP" name="userHP" value="${sessionScope.userDTO.userHP}">
			   		</div>
			 	</div>
			 	
			 	<div class="mb-3 row">
			   		<label for="userNickname" class="col-md-3 col-form-label">Nickname</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center col-md-1" id="userNickname" name="userNickname" value="${sessionScope.userDTO.userNickname}">
			   		</div>
			   		
			 	</div>
			 	
			 	<div class="mb-3 row">
			   		<label for="userBirth" class="col-md-3 col-form-label">Birth</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="userBirth" name="userBirth" value="${sessionScope.userDTO.userBirth}">
			   		</div>
			 	</div>
			 	
			 	<div class="mb-3 row">
			   		<label for="userCountry" class="col-md-3 col-form-label">Country</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="userCountry" name="userCountry" value="${sessionScope.userDTO.userCountry}">
			   		</div>
			 	</div>
			 	
			 	<!-- <div class="mb-3 row">
			   		<label for="inputPassword" class="col-md-3 col-form-label" id="adminPW">Password</label>
			   		<div class="col-md-7">
			    		<input type="password" class="form-control" name="adminPW" id="adminPW">
			   		</div>
			 	</div> -->
			 	<div class="col-md-10 d-flex justify-content-end">
			 		<input class = "btn btn-outline-dark mb-3" type="submit" value ="수정">
			 	</div>
			 </form>
		<!-- 본문닫는 div -->	
		</div>
		<!-- 본문닫는 div -->
	</div>
</body>
</html>