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
<link rel="stylesheet" href="${path}/resources/css/customer/join.css">
<title>Nickname 중복확인</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/customer/main.js" defer></script>
<script src="${path}/resources/js/user/join.js" defer></script>
</head>
<body onload="idConfirmFoucus()">
	<div class="wrap">
		
		<!-- contents 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙 1 시작 -->
				<div id="section1">
					<h1 align="center"> 닉네임 사용여부 </h1>
				</div>
				<!-- 상단 중앙 2 시작 -->
				<div id="section2">
					<div id="s2_inner">
						<div class="join">
							<form name="confirmform" action="userNicknameConfirmAction.mp" method="post"
								onsubmit="return userNicknameConfirmCheck()">
							
								<!-- ID 중복일 때 -->
								<c:if test="${selectCnt == 1}">
									<table align="center" width="500px">
											<tr>
												<th colspan="2" align="center">
													<span>${strNickname}는 사용할 수 없습니다.</span>
												</th>
											</tr>
											<tr>
												<th align="center">* 닉네임</th>
												<td>
													<input type="text" class="input" name="userNickname" size="20" placeholder="공백없이 20자이내로 작성" required autofocus>
												</td>
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
									</table>
								</c:if>
								
								<c:if test="${selectCnt != 1}">
									<table align="center" width="500px">
											<tr>
												<th colspan="2" align="center">
													<span>${strNickname}는 사용할 수 있습니다.</span>
												</th>
											</tr>
											<tr>
												<td colspan="2" style="border-bottom:none">
													<br>
													<div align="right">
														<input class="inputButton" type="button" value="확인" onclick="setUserId2('${strNickname}')">
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
	</div>
</body>
</html>