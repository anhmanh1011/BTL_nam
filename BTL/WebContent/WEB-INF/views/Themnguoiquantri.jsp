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
	>

	<div>
		<jsp:include page="header.jsp" />

	</div>

	<div>
		<jsp:include page="menu.jsp" />

	</div>
 <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item active">Quản Lý</li>
          <!-- Breadcrumb Menu-->
          <li class="breadcrumb-menu d-md-down-none">
            <div class="btn-group" role="group" aria-label="Button group">
              <a class="btn" href="#">
                <i class="icon-speech"></i>
              </a>
              <a class="btn" href="./">
                <i class="icon-graph"></i>  Quản Lý</a>
              <a class="btn" href="#">
                <i class="icon-settings"></i>  Cài Đặt</a>
            </div>
          </li>
        </ol>
        <div class="container">
          <div class="animated fadeIn">
            
            <!-- /.row-->
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-5">
                    <h4 class="card-title mb-0">Tạo tài khoản người dùng</h4></br>
                    <form action="${pageContext.request.contextPath}/themnguoiquantri"
							method="post" enctype="multipart/form-data">
					<label for="code">Tên</label>: </br> <input type="text"  name="user_name" size="40"/></br>
					<label for="name">Tên đăng nhập</label>: </br> <input type="text" name="user_account" size="40"/></br>
						<label for="name">Email</label>: </br> <input type="text" name="user_email" size="40"/></br>
					<label for="image">Mật khẩu</label>: </br> <input type="password"  name="user_password" size="40" /></br>	
					<label for="name">Nhập lại mật khẩu</label>: </br> <input type="password"  name="re_user_password" size="40"/></br>
					<label for="image">Ảnh</label> <input type="file"  name="user_photo" size="40" /></br>
					<input type="submit" value="tạo tài khoản"/>
					</form>
        
            
        </div>
                  </div>
				  
                  <!-- Thêm món ăn-->
				  <section class="content">
                <div id="BookController">
				
					

        <div class="box-body">
            <div class="box-body-toolbar">
                <form action="" class="form-inline">
				</form>
            </div>



            <div class="box-body-links">
                <ul class="pagination" role="navigation">
            </li>
            </ul>

            </div>
        </div>
    </div>
</div>
            </section>
                  <!-- delete HERE -->
                  <!-- /.col-->
                </div>
                <!-- /.row-->
                <div class="chart-wrapper" style="height:300px;margin-top:40px;">
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