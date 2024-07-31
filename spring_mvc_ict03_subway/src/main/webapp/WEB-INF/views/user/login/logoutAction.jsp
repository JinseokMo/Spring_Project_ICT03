<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기에 제목을 입력하세요</title>
<script type="text/javascript">
    // 페이지가 로드될 때 실행되는 함수
    window.onload = function() {
        // 경고창을 통해 메시지 표시
        alert('로그아웃했습니다.');
        
        // 3초 후에 다른 페이지로 이동
        setTimeout(function() {
            window.location.href = '${pageContext.request.contextPath}/logoutAction.us'; // 로그아웃 후 이동할 페이지의 URL을 입력하세요
        }, 1000); // 
    };
</script>
</head>
<body>
    
</body>
</html>
