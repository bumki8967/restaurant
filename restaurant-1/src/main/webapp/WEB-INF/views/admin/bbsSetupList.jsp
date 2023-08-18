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
								<span>
									<h1 class="m-0">게시판 리스트</h1>
								</span>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- /.content-header -->
				
				
				<form method="POST" class="form" id="form" name="viewForm">
					<!-- Main content -->
					<div class="content">
						<div class="container-fluid">
							<div class="card">
								<div class="card-header border-0" style="display: flex;">
									<h3 class="col-sm-10 title"> Board List </h3>
									<div class="col-md-3" style="display: flex;">
										<button type="button" class="btn btn-warning" id="updateBtn" onClick="javascript:alert('구현 예정입니다.');"> 게시판 상태변경 </button>
										&nbsp;&nbsp;
										<button type="button" class="btn btn-danger" id="deleteBtn" onClick="javascript:alert('구현 예정입니다.');"> 게시판 삭제 </button>
									</div>
								</div>
								<hr />
								<div class="card-header table-responsive">
									<table id="data_list">
										<thead>
											<tr>
												<th style="text-align: center;">
													<input type="checkbox" id="allCheck" name="allCheck">
												</th>
												<th style="text-align: center;"> 번호 </th>
												<th style="text-align: center;"> 게시판 이름 </th>
												<th style="text-align: center;"> 게시판 사용여부 </th>
												<th style="text-align: center;"> 다운로드 사용여부 </th>
												<th style="text-align: center;"> 답글 사용여부 </th>
												<th style="text-align: center;"> 댓글 사용여부 </th>
												<th style="text-align: center;"> 익명 사용여부 </th>
												<th style="text-align: center;"> 비밀글 사용여부 </th>
												<th style="text-align: center;"> 비고 </th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${setupList }" varStatus="stat">
												<tr style="text-align: center;">
													<td>
														<input type="checkbox" name="checkbox" class="deleteBbsSetupSeqs" value="${list.bbs_setup_seq }" />
													</td>
													<td>
														${list.bbs_setup_seq }
													</td>
													<td>
														${list.bbs_name }
													</td>
													<td>
														<c:choose>
															<c:when test="${list.bbs_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<c:choose>
															<c:when test="${list.down_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<c:choose>
															<c:when test="${list.answer_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<c:choose>
															<c:when test="${list.comment_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<c:choose>
															<c:when test="${list.annymty_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<c:choose>
															<c:when test="${list.secret_use_yn == 'Y' }">
																사용중
															</c:when>
															<c:otherwise>
																미사용
															</c:otherwise>															
														</c:choose>
													</td>
													<td>
														<span>
															<a href="javascript:alert('구현 준비 중 입니다.');">
																<input type="button" class="btn btn-primary" value="수정" />
															</a>
														</span>
														<span>
															<a href="javascript:alert('구현 준비 중 입니다.');">
																<input type="button" class="btn btn-danger" id="delete" value="삭제" />
															<input type="hidden" name="user_seq" id="user_seq" value="${list.bbs_setup_seq }" />
															</a>
														</span>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div style="display: flex; justify-content: flex-end; margin-right: 2rem;">
					<span>
						<a href="/admin/bbsSetupRegistView">
							<button type="button" class="btn btn-primary">게시판 추가</button>
						</a>
						<a href="#">
							<button type="button" class="btn btn-danger">게시판 삭제</button>
						</a>
					</span>
				</div>
				 
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

<script type="text/javascript">
	var table = $("#data_list").DataTable({
		"destroy"	:	true,
		"order"		:	[0, "DESC"]
	});
	
	$("#data_list").dataTable({
		data : data,
		columns : [
			{ data : 'bbs_setup_seq' },
			{ data : 'bbs_name' },
			{ data : 'bbs_use_yn' },
			{ data : 'down_use_yn' },
			{ data : 'answer_use_yn' },
			{ data : 'comment_use_yn' },
			{ data : 'annymty_use_yn' },
			{ data : 'secret_use_yn' },
		]
	});
</script>

</body>
</html>