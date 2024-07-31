<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/admin/ad_productList.css">
 <link rel="stylesheet" href="${path}/resources/css/comment.css">

<script src="https://kit.fontawesome.com/b435fbc087.js" crossorigin="anonymous"></script> --%>
<%-- <script src="${path}/resources/js/customer/main.js" defer></script> --%>
 <title>Comment Section</title>
<!--     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet"> -->
</head>
<body>
	
	
	<body>
	<div id="right">
		<div class="table_div">
			<form name="boardList">
				<table border="1" width="1000px">
					<tr>
						<th style="width: 10%"> 작성자 </th>
						<th style="width: 15%"> 글내용 </th>
						<th style="width: 10%"> 작성일 </th>										
					</tr>
					
					<!-- 댓글이 있으면 -->
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.userNickname}</td>									
							<td>${dto.commentContent}</td>									
							<td>${dto.writeDate}</td>									
						</tr>
					</c:forEach>
				</table>										
			</form>
		</div>
	</div>
	
	
	
	
	
        
    

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>