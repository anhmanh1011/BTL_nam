<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="app-body">
		<div class="sidebar">
			<nav class="sidebar-nav">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/home"> <i class="nav-icon icon-speedometer"></i>
						Quản Lý <span class="badge badge-primary">NEW</span>
				</a></li>

				<li class="nav-title">Quản Lý Món Ăn</li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/danhsachloaimonan"> <i class="nav-icon icon-drop"></i>
						Loại Món Ăn
				</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/danhsachmonan">
						<i class="nav-icon icon-pencil"></i> Danh Sách Món Ăn
				</a></li>


				<li class="nav-title">Quản Lý Đặt Bàn</li>
				<li class="nav-item nav-dropdown"><a
					class="nav-link nav-dropdown-toggle" href="${pageContext.request.contextPath}/danhsachban"> <i
						class="nav-icon icon-puzzle"></i> Quản Lý Bàn
				</a> <a class="nav-link nav-dropdown-toggle" href="${pageContext.request.contextPath}/danhsachbandat">
						<i class="nav-icon icon-puzzle"></i> Đơn Đặt Bàn
				</a></li>


				<li class="nav-title">Quản Lý Nội Dung Web</li>
				<li class="nav-item nav-dropdown"><a
					class="nav-link nav-dropdown-toggle" href="${pageContext.request.contextPath}/home">
						<i class="nav-icon icon-star"></i> Thông Tin Nhà Hàng
				</a> <a class="nav-link nav-dropdown-toggle" href="${pageContext.request.contextPath}/home"> <i
						class="nav-icon icon-star"></i> Blog
				</a></li>

			</ul>
			</nav>
		</div>
</body>
</html>