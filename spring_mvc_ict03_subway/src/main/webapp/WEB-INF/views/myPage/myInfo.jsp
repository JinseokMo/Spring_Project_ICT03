<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY PAGE :: 내정보 상세화면</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- 스타일 시작 -->
<style>
	.info-box {
		border: 1px solid #ced4da;
		border-radius: 10px;
		padding: 20px;
		margin: 20px auto; /* 수평 가운데 정렬 */
		background-color: #f8f9fa;
		max-width: 600px; /* 최대 너비 설정 */
	}
    .info-box .info-item {
      margin-bottom: 15px;
    }
    .info-box .info-item label {
      font-weight: bold;
      margin-right: 10px;
    }
    
</style>
<!-- 스타일 끝 -->

</head>
<!-- 구성요소 -->
<body>
	<!-- header 시작 -->
	<%@ include file="/WEB-INF/views/resources/common/header/logout_header.jsp" %>
	<!-- header 끝 -->

	<div class="wrap">
		<header class="bg-light py-3">
			<div class="container d-flex align-items-center justify-content-between">
			
	
	<!-- 콘텐츠 요소 -->
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<h2 class="mt-5 text-center"> My Information </h2>
				
					<div class="info-box">
					<div class="info-item">
						<label for="userCountry"> 국가 : </label>
						<span id="userCountry"> 대한민국 </span>
					</div>
					
					<div class="info-item">
						<label for="userBirth"> 생년월일 : </label>
						<span id="userBirth"> 2024-01-01 </span>
					</div>
					
					<div class="info-item">
						<label for="lastName"> 성 : </label>
						<span id="lastName"> 홍 </span>
					</div>
					
					<div class="info-item">
						<label for="firstName"> 이름 : </label>
						<span id="firstName"> 길동 </span>
					</div>
					
					<div class="info-item">
						<label for="userEmail"> 아이디 : </label>
						<span id="userEmail"> hong@email.com </span>
					</div>
					
					<div class="info-item">
						<label for="userPW"> 비밀번호 : </label>
						<span id="userPW"> hong1234 </span>
					</div>
					
					<div class="info-item">
						<label for="userHP"> 전화번호 : </label>
						<span id="userHP"> 010-1234-5678 </span>
					</div>
					
					<div class="info-item">
						<label for="userNickname"> 닉네임 : </label>
						<span id="userNickname"> 홍씨 </span>
					</div>
					
					
					<div class="text-center">
						<button type="button" onclick="${path}/modifyUser.mp" class="btn btn-primary" data-toggle="modal" data-target="#editModal">
							수정하기
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Edit Modal -->
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="editModalLabel">정보 수정하기</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			<div class="modal-body">
	
	<!-- 사용자 정보 수정 폼 -->
	<form id="editForm">
		<div class="form-group">
			<label for="editCountry"> 국가 </label>
			<input type="text" class="form-control" id="editCountry" value="대한민국">
		</div>
		
		<div class="form-group">
			<label for="editBirth"> 생년월일 </label>
			<input type="date" class="form-control" id="editBirth" value="2024-01-01">
		</div>
		
		<div class="form-group">
			<label for="editLastName"> 성 </label>
			<input type="text" class="form-control" id="editLastName" value="홍">
		</div>
		
		<div class="form-group">
			<label for="editFirstName"> 이름 </label>
			<input type="text" class="form-control" id="editFirstName" value="길동">
		</div>
		
		<div class="form-group">
			<label for="editUserEmail"> 아이디 </label>
			<input type="text" class="form-control" id="editUserEmail" value="hong@email.com">
		</div>
		
		<div class="form-group">
			<label for="editPassword"> 비밀번호 </label>
			<input type="password" class="form-control" id="editPassword" placeholder="새 비밀번호 입력">
		</div>
		
		<div class="form-group">
			<label for="editPhone"> 전화번호 </label>
			<input type="text" class="form-control" id="editPhone" value="010-1234-5678">
		</div>
		
		<div class="form-group">
			<label for="editNickname"> 닉네임 </label>
			<input type="text" class="form-control" id="editNickname" value="홍씨">
		</div>
	</form>
	</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal"> 닫기 </button>
				<button type="button" class="btn btn-primary" id="saveChangesBtn"> 저장 </button>
			</div>
		</div>
	</div>
</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<script>
		$(document).ready(function() {
			// 수정 버튼 클릭 시 처리
			$('#saveChangesBtn').click(function() {
				// 각 입력 필드에서 값 가져오기
				var userCountry = $('#editCountry').val();
				var userBirth = $('#editBirth').val();
				var lastName = $('#editLastName').val();
				var firstName = $('#editFirstName').val()
				var userEmail = $('#editUserEmail').val();
				var userPW = $('#editPassword').val();
				var userHP = $('#editPhone').val();
				var userNickname = $('#editNickname').val();
				
				
			// 값들을 페이지에 반영
			$('#userCountry').text(userCountry);
			$('#userBirth').text(userBirth);
			$('#lastName').text(lastName);
			$('#firstName').text(firstName);
			$('#userEmail').text(userEmail);
			$('#userPW').text(userPW);
			$('#userHP').text(userHP);
			$('#userNickname').text(userNickname);
			
			/* 
			// 로컬 스토리지에 저장
			var userData = {
				country: country,
				lastName: lastName,
				firstName: firstName,
				userEmail: userEmail,
				userPwd: userPwd,
				phone: phone,
				nickname: nickname
			};
			localStorage.setItem('userData', JSON.stringify(userData));
			 */
			
			// 모달 닫기
			$('#editModal').modal('hide');
			});
		});
	</script>
</body>
</html>
