<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1">
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<%-- <link rel="stylesheet" href="${path}/resources/css/customer/join.css"> --%>
<title>ID 중복확인</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/customer/main.js" defer></script>
<script src="${path}/resources/js/user/join.js" defer></script>
</head>
<body onload="idConfirmFoucus()">
		
		<!-- contents 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙 1 시작 -->
				<div id="section1">
					<h1 align="center"> 이메일 사용여부 </h1>
				</div>
				<!-- 상단 중앙 2 시작 -->
				<div id="section2">
					<div id="s2_inner">
						<div class="join">
							<form name="confirmform" method="post"
								onsubmit="return confirmId_email()">
							
								<!-- ID 중복일 때 -->
								<c:if test="${selectCnt == 1}">
									<div class="row">
						              <div class="col-10">
						              	<span>${strEmail}는 사용할 수 없습니다.</span>
											<div class="input-group mb-3">
											  <input type="text" class="form-control" name="email1" size="20" placeholder="이메일 앞부분" aria-label="이메일 앞부분" required>
											  <span class="input-group-text">@</span>
											  <input type="text" class="form-control" name="email2" size="20" placeholder="이메일 뒷부분" aria-label="이메일 뒷부분" required>
											  <select class="form-select" name="email3" onchange="u_selectEmailChk()">
												    <option selected>자동선택</option>
												    <option value="naver.com">naver.com</option>
												    <option value="gmail.com">gmail.com</option>
												    <option value="hanmail.net">hanmail.net</option>
												    <option value="nate.com">nate.com</option>
											  </select>
											 </div>
										</div>
										<div class="col-2">
											<button type="submit" class="btn btn-primary p-1">중복확인</button>
										</div>
								  	</div>
									<%-- <table align="center" width="500px">
											<tr>
												<th colspan="2" align="center">
													<span>${strEmail}는 사용할 수 없습니다.</span>
												</th>
											</tr>
											<tr>
												<th align="center">* 이메일</th>
												<td>
													<input type="text" class="input" name="email1" size="20" required>
													@
													<input type="text" class="input" name="email2" size="20" required>
													<select class="input" name="email3"onchange="u_selectEmailChk()">
														<option value="0">직접입력</option>
														<option value="naver.com">naver.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="nate.com">nate.com</option>
													</select>
												</td>
												<!-- <th align="center">* 이메일</th>
												<td>
													<input type="text" class="input" name="userEmail" size="20" placeholder="공백없이 20자이내로 작성" required autofocus>
												</td> -->
											</tr>
											<tr>
												<td colspan="2" style="border-bottom:none">
													<br>
													<div align="right">
														<input class="inputButton" type="submit" value="중복확인">
														<input class="inputButton" type="reset" value="초기화">
													</div> 
												</td>
											</tr>
									</table> --%>
								</c:if>
								
								<c:if test="${selectCnt != 1}">
									<table align="center" width="500px">
											<tr>
												<th colspan="2" align="center">
													<span>${strEmail}는 사용할 수 있습니다.</span>
												</th>
											</tr>
											<tr>
												<td colspan="2" style="border-bottom:none">
													<br>
													<div align="right">
														<input class="inputButton" type="button" value="확인" onclick="setUserId('${strEmail}')">
													</div> 
												</td>
											</tr>
									</table>
								</c:if>
							</form>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<!-- contents 끝 -->
</body>
</html>