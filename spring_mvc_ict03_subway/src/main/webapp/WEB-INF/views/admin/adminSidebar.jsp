<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.sidebar {
            min-height: 100vh;
            width: 100%;
}
</style>
</head>
<body>
<div class="d-flex flex-column p-3 text-bg-dark col-md-2 sidebar" style ="max-width: 300px; min-width: 150px;">
    <div class="mx-auto row text-center mt-3">
        <a href ="${path}/adminPageHome.ad"><img class="img-fluid mx-auto rounded-circle" src="${path}/resources/image/admin/profile/default.png" style="max-width: 50%;"></a>
        <span class="fs-5 justify-content-center w-100 mt-3">${sessionScope.userDTO.adminName}</span>
        <br>
    </div>
    <hr>
    <ul class="list-unstyled flex-column mb-auto">
        <li class="mb-1">
            <button class="text-light btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                ▶ 유저관리
            </button>
            <div class="collapse show" id="home-collapse" style="">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="${path}/userListAuthority.ad" class="ms-4 text-light link-info d-inline-flex text-decoration-none rounded">정상 유저목록</a></li>
                    <li><a href="${path}/adminUserHideList.ad" class="ms-4 text-light link-info d-inline-flex text-decoration-none rounded">숨김 유저목록</a></li>
                </ul>
            </div>
        </li>
        <li class="mb-1">
            <button class="text-light btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">
              ▶ 게시글관리
            </button>
            <div class="collapse show" id="dashboard-collapse" style="">
                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="${path}/boardList.ad" class="ms-4 text-light link-info d-inline-flex text-decoration-none rounded">정상 게시글목록</a></li>
                    <li><a href="${path}/boardBlindList.ad" class="ms-4 text-light link-info d-inline-flex text-decoration-none rounded">숨김 게시글목록</a></li>
                </ul>
            </div>
        </li>
    </ul>
    <hr>
    <div class="dropdown dropend">
        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="${path}/resources/image/admin/profile/default.png" alt="" width="32" height="32" class="rounded-circle me-2">
            <strong>${sessionScope.userDTO.adminName} 관리자</strong>
        </a>
        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
            <li><a class="dropdown-item" href="${path}/adminMypage.ad">내 정보 수정</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="${path}/adminLogout.ad">Sign out</a></li>
        </ul>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>