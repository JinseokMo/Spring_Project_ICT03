/**
 * new > Javascript File > main.js
 (3-3-1). 자바스크립트에 이벤트 추가 : 햄버거 아이콘을 클릭하면 아래쪽으로 메뉴가 나오도록 main.js에 작성
 */
 
 
 	// 햄버거 버튼
const toggleBtn = document.querySelector(".navbar_toggleBtn"); //햄버거
const menu = document.querySelector(".navbar_menu"); //메뉴
const icons = document.querySelector(".navbar_icons"); //아이콘

toggleBtn.addEventListener('click', () => { // 햄버거 버튼 클릭시
	// 메뉴 활성화
	menu.classList.toggle('active');
	// 아이콘 활성화
	icons.classList.toggle('active');
});