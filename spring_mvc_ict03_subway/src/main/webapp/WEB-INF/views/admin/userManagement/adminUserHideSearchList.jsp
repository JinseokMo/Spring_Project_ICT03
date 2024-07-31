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
    		<h3>유저 목록</h3>
    		<form class="d-flex mt-1" role="search" action="${path}/userHideListSearch.ad" method ='POST' name="hideSearchForm" id="hideSearchForm"> 
        		<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="hideSearch" name = "hideSearch">
        		<button class="btn btn-outline-success me-2" type="submit">Search</button>
      		</form>
    	</div>
	    <table class="table table-hover" style = "text-align :center; vertical-align : middle;">
	    	<tr>
	    		<th>회원번호</th>
	    		<th>회원 아이디</th>
	    		<th>회원 닉네임</th>
	    		<th>회원 이름</th>
	    		<th>생년월일</th>
	    		<th>국가</th>
	    		<th>H.P.</th>
	    		<th> 수정 / 삭제 </th>
	    	</tr>
	    	<c:forEach var="hideSearchList" items="${hideSearchList}">
	    	<tr>
	    		<td>${hideSearchList.userNo}</td>
	    		<td>${hideSearchList.userEmail}</td>
	    		<td>${hideSearchList.userNickname}</td>
	    		<td>${hideSearchList.lastName} ${hideSearchList.firstName}</td>
	    		<td>${hideSearchList.userBirth}</td>
	    		<td>${hideSearchList.userCountry}</td>
	    		<td>${hideSearchList.userHP}</td>
	    		<td>
	    			<button class= "btn btn-dark btn-sm" onclick="location.href=('userHideClear.ad?userNo=${hideList.userNo}')">해제</button>
	    		</td>
	    	</tr>
	    	</c:forEach>
	    </table>
    </div>
    </div>
</body>
</html>