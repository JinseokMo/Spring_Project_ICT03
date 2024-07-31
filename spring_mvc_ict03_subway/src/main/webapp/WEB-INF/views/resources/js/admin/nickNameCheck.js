/**
 * 
 */

function confirmNickname() {
	let i = document.getElementById('userNickname').value;
	alert(i);
	if(!i){
		alert("닉네임을 입력하세요!");
		document.joinform.userNickname.focus();
		return false;
	}
	
	// get 방식	// 중복확인 버튼 클릭시 컨트롤러로 url을 전달하는 과정, 컨트롤러에 추가
	// http://localhost/jsp_pj_ict03/idConfirmAction.do?userid=hong
	let url="/jsp_pj_ict03_subway/adminUserNickNameCheck.ad?userNickname=" + i;
	window.open(url, "confirm", "menubar=no, width=500, height=400");
	
}

