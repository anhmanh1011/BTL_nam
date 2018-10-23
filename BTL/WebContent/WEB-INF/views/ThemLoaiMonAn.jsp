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
<body
	class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">

	<div>
		<jsp:include page="header.jsp" />

	</div>

	<div>
		<jsp:include page="menu.jsp" />

	</div>
	<main class="main"> <!-- Breadcrumb-->
	<ol class="breadcrumb">
		<li class="breadcrumb-item">Home</li>
		<li class="breadcrumb-item active">Quản Lý</li>
	</ol>

	<div class="container">
		<div class="animated fadeIn">

			<!-- /.row-->
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-sm-5">

							<h4 class="card-title mb-0">Thêm Loại Món Ăn</h4>
							<div class="small text-muted">
								3 Tháng 10 2018<br>
							</div>
						</div>

						<!-- Thêm Món Ăn-->

						<section class="contentt">
						<div id="FoodControllerr">
							<h2 style="color: red">${mes}</h2>
							<form action="${pageContext.request.contextPath}/themloaimonan" method="post">
								<label for="name"><b>Tên Loại</b></label>: </br> <input type="text"
									id="name" name="tenLoai" size="40" />
								<div class="box">
									<div class="box-header with-border">
										<input class="btn btn-primary btn-sm btn-flat" type="submit"
											value="thêm">
									</div>
								</div>
							</form>
						</div>
						</section>
					</div>

				</div>

			</div>

		</div>
	</div>
	</main>

	<div>
		<jsp:include page="footer.jsp" />

	</div>
</body>
</html>