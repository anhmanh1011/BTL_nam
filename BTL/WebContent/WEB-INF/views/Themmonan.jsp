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
							<h4 class="card-title mb-0">Thêm Món Ăn</h4>
						</div>

						<!-- Thêm Món Ăn-->
						<form action="${pageContext.request.contextPath}/themmonan"
							method="post" enctype="multipart/form-data">
							<section class="contentt"> <label for="name"><b>Tên
									Món Ăn</b></label>: </br>
							<input type="text" id="n" name="tenMonAn" size="40" /> </br>

							<label for="kind"><b>Loại Món Ăn</b></label>: </br>
							<select name="idFoodtype">
								<c:forEach items="${dsFoodType}" var="foodtype">
									<option value="${foodtype.idFoodtype}">${foodtype.nameFoodType}</option>
								</c:forEach>

							</select> </br>

							<label for="image"><b>Hình Ảnh</b></label>: </br>
							<input type="file" name="hinhanh" size="40"> </br>

							<label for="time"><b>Thời Gian</b></label>: </br>
							<select name="time">
								<option value="Cả Ngày">Cả Ngày</option>
								<option value="Bữa Sáng">Bữa Sáng</option>
								<option value="Bữa Chiều">Bữa Chiều</option>
								<option value="Bữa Tối">Bữa Tối</option>
							</select> </br>

							<label for="price"><b>Giá (VNĐ) </b></label>: </br>
							<input type="text" name="gia" size="40" /> </br>


							<div class="box-header with-border">
								<h3 class="box-title">
									<input type="submit" class="btn btn-primary btn-sm btn-flat">
								</h3>


							</div>

							</section>
						</form>



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