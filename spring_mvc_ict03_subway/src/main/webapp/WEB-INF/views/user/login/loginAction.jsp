<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=divice-width, initial-scale=1">
<%-- <link rel="stylesheet" href="${path}/resources/css/user/login.css"> --%>
<title>login</title>
<script src="https://kit.fontawesome.com/46af44825d.js" crossorigin="anonymous"></script>
<script type="text/javascript">
function login() {
    $.ajax({
        url: '${path}/user/login/loginAction.us', // 로그인 요청을 처리할 서버의 URL
        type: 'POST',
        data: {
            email: $('#userEmail').val(),
            password: $('#userPW').val()
        },
        success: function(response) {
            // 서버에서 응답으로 받은 세션 정보 저장
            sessionStorage.setItem('sessionUserNo', response.sessionUserNo);
            sessionStorage.setItem('sessionUserName', response.sessionUserName);

            // 로그인 후 리다이렉트 또는 추가 작업
            window.location.href = 'board_home.bc';
        },
        error: function(xhr, status, error) {
            console.error('로그인 실패:', error);
            alert('로그인에 실패했습니다.');
        }
    });
}
</script>
</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/resources/common/header/login_header.jsp" %>
		<!-- header 끝 -->
		
		<!-- contents 시작 -->
		<div class="container px-4 py-5">
			<div class="contents">
				<!-- 상단 중앙 1 시작 -->
					<!-- <h2> 로그인 </h2> -->
				<!-- 상단 중앙 2 시작 -->
				<div id="section2">
					<div id="s2_inner">
						<div class="join">
							<form name="loginform" action="loginAction.us" method="post" id="login-form">
								<c:if test="${sessionScope.sessionID == null}">
									
									<%-- <table>
										<tr>
											<td colspan="2" align="center">
												<span style="color:#FF82AA"><b>아이디와 비밀번호를 다시 확인해주세요.</b></span>
											</td>
										</tr>
										<input type="text" class="input" name="userEmail" size="20" placeholder="이메일을 입력하세요" required autofocus>
							            <input type="password" class="input" name="userPW" size="20" placeholder="비밀번호를 입력하세요" required>
							            <label for="remember-check">
							                <input type="checkbox" id="remember-check"> 아이디 저장하기
							            </label>
							            <input type="submit" value="Login">
										
										<tr>
											<td colspan="2" style="border-bottom:none">
												<br>
												<div align="right">
													<input class="inputButton" type="submit" value="로그인">
													<input class="inputButton" type="reset" value="초기화">
													<input class="inputButton" type="button" value="회원가입" onclick="window.location='/jsp_pj_ict03_subway/join.us'">
													<a href="${path}/admin/ad_product/ad_productAdd.jsp" style="color:black; border:2px solid black; background: whitesmoke; padding: 5px 10px 5px 10px;">관리자</a>
												</div> 
											</td>
										</tr>
									</table> --%>
									
									
									<div class="row align-items-center g-lg-5 py-5">
								      <div class="col-lg-7 text-center text-lg-start">
								        <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">당신의 값진 여행 경험을<br>공유해주세요</h1>
								        <p class="col-lg-10 fs-4">여행은 단순한 이동이 아닙니다. 그것은 새로운 세계를 발견하고, 다른 문화와 사람들을 만나는 특별한 경험입니다. 여러분이 기억에 남는 여행을 떠났다면, 그 소중한 순간들을 우리와 나누어 보세요!</p>
								      </div>
								      <div class="col-md-10 mx-auto col-lg-5">
								        <div class="p-4 p-md-5 border rounded-3 bg-body-tertiary">
								        <span style="color:#FF82AA"><b>아이디와 비밀번호를 다시 확인해주세요.</b></span>
								          <div class="form-floating mb-3">
								            <input type="email" class="form-control" name="userEmail" size="20" placeholder="name@example.com" required autofocus>
								            <label for="floatingInput">Email address</label>
								          </div>
								          <div class="form-floating mb-3">
								            <input type="password" class="form-control" name="userPW" size="20" placeholder="Password" required>
								            <label for="floatingPassword">Password</label>
								          </div>
								          <div class="checkbox mb-3">
								            <label>
								              <input type="checkbox" value="remember-me"> Remember me
								            </label>
								          </div>
								          <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
								          <hr class="my-4">
								          <small class="text-body-secondary">아직 회원이 아니신가요? </small>
								          <button class="btn btn-link" type="button" onclick="window.location='/jsp_pj_ict03_subway/join.us'">회원가입</button>
								        </div>
								      </div>
								    </div>
								</c:if>
								<!-- 세션이 있는 경우 -->
								<c:if test="${sessionScope.sessionID != null}" >	
									<script type="text/javascript">
										setTimeout(function() {
											var sessionID = "${sessionScope.sessionID}";
											// alert(sessionID +'님 안녕하세요');
											window.location="${path}/board_home.bc";
										}, 1000);
									</script>
								</c:if>
							</form>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<!-- contents 끝 -->
		
		<!-- footer 시작 -->
	<%-- <%@ include file="/common/footer.jsp" %> --%>
	<!-- footer 끝 -->
	</div>
</body>
</html>