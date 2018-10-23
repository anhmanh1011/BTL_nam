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
							<h4 class="card-title mb-0">Danh Sách Người Dùng</h4>
							<div class="small text-muted">Tháng 9 2018</div>
						</div>

						<!-- Chỉnh sửa danh sách món ăn-->
						<section class="content">
						<div id="FoodController">
							<div class="box">
								<div class="box-header with-border">
									<h3 class="box-title">
										<a href="${pageContext.request.contextPath}/themnguoiquantri" title="Thêm Món Ăn"
											class="btn btn-primary btn-sm btn-flat"> <span>Thêm
												Người Quản Trị</span>
										</a>

									</h3>


								</div>

								<div class="box-body">
									<div class="box-body-toolbar">
										<form action="...linktimkiem" class="form-inline">
											<div class="form-group">
												<select class="form-control input-sm" name="attribute">
													<option value="code">Tên</option>
													<option value="name">Email</option>
												</select>
											</div>
											<div class="form-group">
												<input class="form-control input-sm" placeholder="Từ khóa"
													name="q" type="text">
											</div>
											<div class="form-group" style="margin-top: -2px;">
												<button class="btn btn-primary btn-flat btn-sm">
													Tìm kiếm</button>
											</div>
										</form>
									</div>

									<div class="box-body-content table-responsive">
										<table>
											<tr>
												<th>STT</th>
												<th>Ảnh Đại Diện</th>
												<th>Họ Tên</th>
												<th>Email</th>
												<th>Vai Trò</th>
												<th>Thao Tác</th>
											</tr>

											<!-- Thông Tin Người Dùng-->
											<c:forEach items="${dsUsers}" var="user">
											<tr>
												<td>${user.user_id}</td>
												<td><img src="<c:url value="/resource/img/avatars/${user.user_photo}" />" alt="Food Image"
													class="thumbnail" style="width: 45px; height: 60px;">
												</td>
												<td>${user.user_name}</td>
												<td>${user.user_email}</td>
												<td>QTV</td>
												<td><a href="suaquantrivien.html" title="Sửa"
													class="btn btn-default btn-xs btn-flat"> <i
														class="fa fa-trash"></i> Sửa
												</a>
													<button title="Xóa"
														class="btn btn-danger btn-xs btn-flat btn-delete">
														<i class="fa fa-trash"></i> Xóa
														<form method="POST" action="...linkxoa"
															accept-charset="UTF-8" class="hidden">
															<input name="_method" type="hidden" value="DELETE">
															<input name="_token" type="hidden" value="">
														</form>
													</button></td>
											</tr>
											</c:forEach>

										</table>
									</div>


								</div>
							</div>
						</div>
						</section>
						<!-- delete HERE -->

						<!-- /.col-->
					</div>
					<!-- /.row-->
					<div class="chart-wrapper" style="height: 300px; margin-top: 40px;">
						<canvas class="chart" id="main-chart" height="300"></canvas>
					</div>
				</div>

			</div>
			<!-- /.card-->

			<!-- /.row-->

		</div>
	</div>
	</main>
	<div>

		<jsp:include page="footer.jsp" />
	</div>
	<script src="<c:url value="/resource/js/main.js"/>"></script>
</body>
</html>