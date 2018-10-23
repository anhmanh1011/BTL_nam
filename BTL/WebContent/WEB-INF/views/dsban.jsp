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
							<h4 class="card-title mb-0">Trạng Thái Bàn</h4>
							<div class="small text-muted">
								26 Tháng 9 2018<br>
							</div>
						</div>

						<!-- Chỉnh sửa bàn ăn-->
						<section class="content">
						<div id="FoodController">
							<div class="box">
								<div class="box-header with-border">
									<h3 class="box-title">
										<a href="${pageContext.request.contextPath}/table" title="Thêm Bàn"
											class="btn btn-primary btn-sm btn-flat"> <span>Thêm
												mới</span>
										</a>

									</h3>


								</div>

								<div class="box-body">
									<div class="box-body-toolbar">
										<form action="" class="form-inline">
											<div class="form-group">
												<select class="form-control input-sm" name="attribute">
													<option value="code">Số bàn</option>

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

									<!-- Xem danh sách bàn-->

									<section class="content">
									<div id="FoodController">
										<div class="box">


											<div class="box-body">
												<div class="box-body-content table-responsive">
													<br> <br> <br>
													<table>
														<tr>
															<th>Số Bàn</th>
															<th>Trạng Thái</th>
															<th>Chú thích</th>
															<th>Loại Bàn</th>
															<th>Thao tác</th>
														</tr>



														<c:forEach items="${dsBan}" var="table">
															<tr>
																<td>${table.idTable}</td>
																<td>${table.status_table}</td>
																<td>${table.number_of_people}</td>
																<td>${table.type_table}</td>
																<td><a href="suaban.html" title="Sửa"
																	class="btn btn-default btn-xs btn-flat"> <i
																		class="fa fa-trash"></i> Sửa
																</a>
																	<button title="Xóa"
																		class="btn btn-danger btn-xs btn-flat btn-delete">
																		<i class="fa fa-trash"></i> Xóa

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
								<div class="chart-wrapper"
									style="height: 300px; margin-top: 40px;">
									<canvas class="chart" id="main-chart" height="300"></canvas>
								</div>
							</div>

						</div>
						<!-- /.card--> <!-- /.row-->
					</div>
				</div>
	</main>





	<div>

		<jsp:include page="footer.jsp" />
	</div>
	<script src="<c:url value="/resource/js/main.js"/>"></script>
</body>
</html>