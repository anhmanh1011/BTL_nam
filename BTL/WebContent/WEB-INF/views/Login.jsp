<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="vi">
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Main styles for this application-->
<link href="<c:url value="/resource/css/style.css" />" rel="stylesheet">
<link
	href="<c:url value="/resource/vendors/pace-progress/css/pace.min.css" />"
	rel="stylesheet">

<!-- Global site tag (gtag.js) - Google Analytics-->
<script src="https://www.googletagmanager.com/gtag/js?id=UA-118965717-3"></script>
<script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      // Shared ID
      gtag('config', 'UA-118965717-3');
      // Bootstrap ID
      gtag('config', 'UA-118965717-5');
    </script>
</head>
<body class="app flex-row align-items-center">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card-group">
					<div class="card p-4">
						<div class="card-body">
							<h1>Đăng Nhập</h1>
							<p class="text-muted">Đăng Nhập vào tài khoản của bạn</p>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="icon-user"></i>
									</span>
								</div>
								<input class="form-control" type="text" placeholder="Tài Khoản">
							</div>
							<div class="input-group mb-4">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i class="icon-lock"></i>
									</span>
								</div>
								<input class="form-control" type="password"
									placeholder="Mật Khẩu">
							</div>
							<div class="row">
								<div class="col-6">
									<h3 class="box-title">
										<a href="quanlyloaimonan.html" title="Login"
											class="btn btn-primary btn-sm btn-flat"> <span>Đăng
												Nhập</span>
										</a>

									</h3>
								</div>
								<div class="col-6 text-right">
									<button class="btn btn-link px-0" type="button">Quên
										Mật Khẩu?</button>
								</div>
							</div>
						</div>
					</div>
					<div class="card text-white bg-primary py-5 d-md-down-none"
						style="width: 44%">
						<div class="card-body text-center">
							<div>
								<h2>Gold Duck Restaurant</h2>
								<p>
									Hệ thống quản trị <br> dành cho quản trị viên
								</p>
								<button class="btn btn-primary active mt-3" type="button">Xin
									cấp quyền quản trị!</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>