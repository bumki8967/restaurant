<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>관리자 페이지</title>
 
  <!-- Jquery -->
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <!-- DataTable -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/DataTables/datatables.min.css">
	<script type="text/javascript" charset="utf8" src="${pageContext.request.contextPath }/assets/DataTables/datatables.min.js"></script>
  	<!-- jQuery UI 1.11.4 -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/plugins/summernote/summernote-bs4.min.css">
  <!-- JS -->
  <script src="${pageConext.request.contextPath }/assets/js/admin/index.js"></script>

	<script>
	$(document).ready(function() {
		$("#registBtn").click(function() {
			if (confirm("게시판을 생성하시겠습니까?")) {
				alert("게시판을 생성하였습니다.");
				$("#registForm").attr('action', '/admin/bbsSetupRegist.do');
				$("#registForm").submit();
			} 
		});
	});
	</script>

  <style>
	.form-group {
		display: flex;
	}
  </style>
</head>
<body>




<div class="wrapper">

		<!-- Preloader -->
		<div class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake" src="${pageContext.request.contextPath }/assets/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
		</div>

		<!-- Navbar 시작 -->
		<c:import url="${pageContext.request.contextPath }/assets/include/admin_navbar.jsp" />
		<!-- // Navbar 끝 -->

		<!-- sidebar 시작 -->
		<c:import url="${pageContext.request.contextPath }/assets/include/admin_sidebar.jsp" />
		<!-- // sidebar 끝 -->


		<div class="content-container">
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-10" style="display: flex; justify-content: space-between;">
								<h1 class="m-0">게시판 등록</h1>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- /.content-header -->
				
				<hr />
				
				<form method="POST" id="registForm">
					<!-- Main content -->
					<div class="content">
						<div class="container-fluid">
							<div class="card">
								<div class="card-header border-0">
									<!-- 게시판 명 -->
									<div class="form-group">
										<label for="bbs_name" class="col-md-2"> 게시판명 </label>
										<div class="col-md-3">
											<input type="text" name="bbs_name" id="bbs_name" class="form-control" required />
										</div>
									</div>

									<hr />

									<!-- 게시판 사용 여부 -->
									<div class="form-group">
										<label for="bbs_use_yn" class="col-md-2"> 게시판 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="bbs_use_y">
													<input type="radio" id="bbs_use_y" name="bbs_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="bbs_use_n">
													<input type="radio" id="bbs_use_n" name="bbs_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>
 
 
 									<hr />
 
									<!-- 다운로드 사용 여부 -->
									<div class="form-group">
										<label for="down_use_yn" class="col-md-2"> 다운로드 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="down_use_y">
													<input type="radio" id="down_use_y" name="down_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="down_use_n">
													<input type="radio" id="down_use_n" name="down_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>
									
 									<hr />									

									<!-- 답변 사용 여부 -->
									<div class="form-group">
										<label for="answer_use_yn" class="col-md-2"> 답변 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="answer_use_y">
													<input type="radio" id="answer_use_y" name="answer_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="answer_use_n">
													<input type="radio" id="answer_use_n" name="answer_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>
									
 									<hr />									
									
									<!-- 댓글 사용 여부 -->
									<div class="form-group">
										<label for="comment_use_yn" class="col-md-2"> 댓글 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="comment_use_y">
													<input type="radio" id="comment_use_y" name="comment_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="comment_use_n">
													<input type="radio" id="comment_use_n" name="comment_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>

 									<hr />

									<!-- 익명 사용 여부 -->
									<div class="form-group">
										<label for="annymty_use_yn" class="col-md-2"> 익명 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="annymty_use_y">
													<input type="radio" id="annymty_use_y" name="annymty_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="annymty_use_n">
													<input type="radio" id="annymty_use_n" name="annymty_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>

 									<hr />

									<!-- 비밀글 사용 여부 -->
									<div class="form-group">
										<label for="secret_use_yn" class="col-md-2"> 비밀글 사용여부 </label>
										<div class="col-md-3">
											<span>
												<label for="secret_use_y">
													<input type="radio" id="secret_use_y" name="secret_use_yn" value="Y" checked /> 사용
												</label>
											</span>
											&emsp;&emsp;
											<span>
												<label for="secret_use_n">
													<input type="radio" id="secret_use_n" name="secret_use_yn" value="N" /> 미사용
												</label>
											</span>
										</div>
									</div>

 									<hr />

									<div class="form-group">
										<div class="col-md-offset-2 col-md-10">
											<button type="button" class="btn btn-primary" id="registBtn"> 생성하기 </button>
											&emsp;
											<button type="button" class="btn btn-warning" onClick="javascript:history.back(-1);"> 뒤로가기 </button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- // Main content -->
				</form>
			</div>
		</div>
		<!-- /.content-wrapper -->
		
		<!-- footer 시작 -->
		<footer class="main-footer">
			<c:import
				url="${pageContext.request.contextPath }/assets/include/admin_footer.jsp" />
		</footer>
		<!-- // footer 끝 -->
	</div>
	<!-- ./wrapper -->






<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath }/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath }/assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="${pageContext.request.contextPath }/assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath }/assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="${pageContext.request.contextPath }/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="${pageContext.request.contextPath }/assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="${pageContext.request.contextPath }/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath }/assets/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath }/assets/dist/js/pages/dashboard.js"></script>

</body>
</html>