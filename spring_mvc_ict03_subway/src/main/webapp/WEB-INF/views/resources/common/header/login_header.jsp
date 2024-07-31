<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <link rel="icon" href="${path}/resources/image/board/main/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-info shadow p-3 mb-5 bg-body-tertiary rounded" data-bs-theme="light">
        <div class="container-fluid">
            <a class="navbar-brand" href="${path}/board_home.bc" style="max-width: 50px;"><img src="${path}/resources/image/board/main_img.png" class="img-fluid rounded-circle"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor01">
                <form class="d-flex ms-auto me-auto" action="${path}/boardSearch.bc" method ='POST' name="boardSearchForm" id="boardSearchForm">
                    <input class="form-control me-sm-2" type="search" placeholder="Search" size="40vw;" id="boardSearch" name = "boardSearch">
                    <button class="btn btn-light" type="submit">Search</button>
                </form>
                <div class="">
                    <div class="dropdown dropdown">
                        <a href="${path}/login.us" class="btn btn-light">Log-In</a>
                        <a href="${path}/join.us" class="btn btn-light ms-2">Sign-Up</a>
                    </div>
                </div>
            </div>
        </div>
          
      </nav>
      <script src="https://kit.fontawesome.com/48783c3602.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>