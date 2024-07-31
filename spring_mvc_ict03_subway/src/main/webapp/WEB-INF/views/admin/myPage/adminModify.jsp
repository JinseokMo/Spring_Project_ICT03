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
		<div class = "col-md-2">
			<%@ include file="/WEB-INF/views/admin/adminSidebar.jsp" %>
		</div>
		<!-- 본문시작 div -->
		<div class = "col-md-10 d-flex flex-column justify-content-center align-items-center">
		<!-- 본문시작 div -->
			<div class = "w-75 mb-3 d-flex justify-content-center">
				<a><img class = "img-fluid mx-auto rounded-circle" src="${path}/resources/image/admin/profile/default.png" style="max-width: 200px;"></a>
			</div>
			<form class ="w-75 text-center border" method="POST" name="adminInfo" action="adminMypagePWCheck.ad">
				<div class="mt-3 mb-3 row">
			   		<label for="adminEmail" class="col-md-3 col-form-label">Email</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" name= "adminEmail" id="adminEmail" value="${sessionScope.userDTO.adminEmail}">
			   		</div>
			 	</div>
			 	<div class="mb-3 row">
			   		<label for="adminName" class="col-md-3 col-form-label">Name</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="adminName" value="${sessionScope.userDTO.adminName}">
			   		</div>
			 	</div>
			 	<div class="mb-3 row">
			   		<label for="adminGrade" class="col-md-3 col-form-label">Admin Grade</label>
			   		<div class="col-md-7">
			    		<input type="text" readonly class="form-control-plaintext text-center" id="adminGrade" value="${sessionScope.userDTO.adminGrade}">
			   		</div>
			 	</div>
			 	<div class="mb-3 row">
			   		<label for="inputPassword" class="col-md-3 col-form-label" id="adminPW">Password</label>
			   		<div class="col-md-7">
			    		<input type="password" class="form-control" name="adminPW" id="adminPW">
			   		</div>
			 	</div>
			 	<div class="mb-3 row">
			   		<label for="inputPassword" class="col-md-3 col-form-label" id="adminPW_che">Password Check</label>
			   		<div class="col-md-7">
			    		<input type="password" class="form-control" name="adminPW_che" id="adminPW_che">
			   		</div>
			 	</div>
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