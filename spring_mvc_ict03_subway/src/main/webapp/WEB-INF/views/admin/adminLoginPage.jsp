<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body, .container-fluid {
            min-height: 100vh;
        }
    </style>
</head>
<body>
    <div class="container-fluid d-flex justify-content-center align-items-center">
        <form class="col-lg-3 col-xs-8 mx-auto" action ="adminLoginAction.ad" method = "POST">
            <div class="col-md-5 mx-auto text-center">
                <img class="mb-4 rounded-circle" src="${path}/resources/image/board/main_img.png" alt="" width="72" height="72">
                <h3 class="h3 mb-3 fw-normal">관리자 로그인</h1>
            </div>
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="adminEmail" name ="adminEmail" placeholder="name@example.com" required>
                <label for="floatingInput">Admin Email</label>
            </div>
            <div class="form-floating mb-3">
                <input type="password" class="form-control" id="adminPW" name="adminPW" placeholder="Password" required>
                <label for="floatingPassword">Password</label>
            </div>
            <div class="form-check text-start my-3">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">Remember me</label>
            </div>
            <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
            <div class="col-md-5 mx-auto text-center">
                <p class="mt-5 mb-3 text-body-secondary">© 2024</p>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>