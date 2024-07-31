/**
 * 
 */
 function selectEmailChk(){
		// select 박스에서 이메일주소를 선택시 해당값이 들어가도록 한다.
		if(document.joinform.email3.value == 0){
			document.joinform.email2.value = "";
			document.joinform.email2.focus();
			return false;
		}
		else{
			document.joinform.email2.value = document.joinform.email3.value;
			return false;
		}
	}
 function u_selectEmailChk(){
		// select 박스에서 이메일주소를 선택시 해당값이 들어가도록 한다.
		if(document.confirmform.email3.value == 0){
			document.confirmform.email2.value = "";
			document.confirmform.email2.focus();
			return false;
		}
		else{
			document.confirmform.email2.value = document.confirmform.email3.value;
			return false;
		}
	}
 // 아이디 중복확인 버튼 클릭 시
 // 1. 중복확인 페이지 open
function confirmId(){
	// alert("중복확인");
	if(!document.joinform.email1.value) {
		alert("로그인을 위해 이메일을 입력하세요!");
		document.joinform.email1.focus();
		return false;
	}else if(!document.joinform.email2.value) {
		alert("로그인을 위해 이메일을 입력하세요!");
		document.joinform.email2.focus();
		return false;
	}
	
	// 중복확인 버튼 클릭시 컨트롤러로 url을 전달
	//http://localhost/jsp_pj_ict03/idConfirmAction.do?userid=hong
	let url="/jsp_pj_ict03_subway/idConfirmAction.us?userEmail=" + document.joinform.email1.value +"@"+ document.joinform.email2.value;
	window.open(url, "confirm", "menubar=no, width=600, height=300");
}

function confirmId_email(){
	// alert("중복확인");
	if(!document.confirmform.email1.value) {
		alert("로그인을 위해 이메일을 입력하세요!");
		document.confirmform.email1.focus();
		return false;
	}else if(!document.confirmform.email2.value) {
		alert("로그인을 위해 이메일을 입력하세요!");
		document.confirmform.email2.focus();
		return false;
	}
	
	// 중복확인 버튼 클릭시 컨트롤러로 url을 전달
	//http://localhost/jsp_pj_ict03/idConfirmAction.do?userid=hong
	let url="/jsp_pj_ict03_subway/idConfirmAction.us?userEmail=" + document.confirmform.email1.value +"@"+ document.confirmform.email2.value;
	location.href=url;
}

function confirmId2(){
	// alert("중복확인");
	if(!document.joinform.userNickname.value) {
		alert("닉네임을 입력하세요!");
		document.joinform.userNickname.focus();
		return false;
	}
	
	// 중복확인 버튼 클릭시 컨트롤러로 url을 전달
	//http://localhost/jsp_pj_ict03/idConfirmAction.do?userid=hong
	let url="/jsp_pj_ict03_subway/userNicknameConfirmAction.us?userNickname=" + document.joinform.userNickname.value;
	window.open(url, "confirm", "menubar=no, width=600, height=300");
}

// 2. join.jsp - onsubmit - 회원가입 페이지 필수 체크
function signInCheck(){
	// 2-1. 중복확인
	// <input type="hidden" name="hiddenUserid" value="0">
	// hiddenUserid : 중복확인 버튼 클릭여부 체크(0:클릭안함, 1:클릭함)
   
	// 2-2. 중복확인 버튼을 클릭하지 않는 경우 "중복확인 해주세요!!" 메시지 띄운다.
	if(document.joinform.hiddenUserEmail.value == "0"){
		alert("중복확인 해주세요!");
		document.joinform.dubChk.focus();
		return false;
	}
	
	
}
// 3. idConfirmAction.jsp - onload(body부분)
function idConfirmFoucus(){
	document.confirmform.email1.focus();
}

// 4. idConfirmAction.jsp
function idConfirmCheck(){
	if(!document.confirmform.email1.value){
		alert("이메일을 입력하세요!!");
		document.confirmform.email1.focus();
		return false;
	}
}

// 3. userNicknameConfirmCheck.jsp - onload(body부분)
function userNicknameConfirmFoucus(){
	document.confirmform.userNickname.focus();
}

// 4. idConfirmAction.jsp
function userNicknameConfirmCheck(){
	if(!document.confirmform.userNickname.value){
		alert("이메일을 입력하세요!!");
		document.confirmform.userNickname.focus();
		return false;
	}
}

// 5. 자식창에서 부모창으로 userid 값을 전달 => 사용가능한 id를 찾은 경우(idConfirmAction.jsp)
/*
    opener : window 객체의 open() 메서드로 열린 자식창(=중복확인창)에서 부모창(=회원가입창)에 접근할 때 사용
    hiddenUserid : 중복확인 버튼 클릭여부 체크(0:클릭안함, 1:클릭함)
    self.close();  // 자식창 닫기
*/
function setUserId(userEmail){
	var email = userEmail.split('@');
	
	if(email.length == 2){
		opener.document.joinform.email1.value = email[0];
		opener.document.joinform.email2.value = email[1];
	}
	
	// opener.document.joinform.email1.value = userEmail;
	//opener.document.joinform.email1.value += opener.document.joinform.email2.value += opener.document.joinform.email3.value = userEmail;
	opener.document.joinform.hiddenUserEmail.value = "1";
	self.close();
}

function setUserId2(userNickname){
	
	opener.document.joinform.userNickname.value = userNickname;
	opener.document.joinform.hiddenUserNickname.value = "1";
	self.close();
}

