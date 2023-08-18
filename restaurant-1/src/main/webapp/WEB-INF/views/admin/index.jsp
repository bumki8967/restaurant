<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
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
  
  <script type="text/javascript">
	

  </script>
	
</head>
<body class="hold-transition sidebar-mini layout-fixed">
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
							<div class="col-sm-10">
								<h1 class="m-0">메인 페이지</h1>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- /.content-header -->
				
				
				
				<%--
				<form method="POST" class="form" id="form" name="viewForm">
					<input type="hidden" name="chk" />
					<!-- Main content -->
					<div class="content">
						<div class="container-fluid">
							<div class="card">
								<div class="card-header border-0" style="display: flex;">
									<h3 class="col-sm-10 title">Member List</h3>
									<div>
										<button type="button" class="btn btn-danger" id="deleteBtn" onClick="javascript:selectUserDelete();"> 선택회원 삭제</button>
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
												<th style="text-align: center;"> 이름 </th>
												<th style="text-align: center;"> 아이디 </th>
												<th style="text-align: center;"> 핸드폰번호 </th>
												<th style="text-align: center;"> 생일 </th>
												<th style="text-align: center;"> 구분 </th>
												<th style="text-align: center;"> 가입날짜 </th>
												<th style="text-align: center;"> 로그인유형 </th>
												<th style="text-align: center;"> 비고 </th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${userList }" varStatus="stat">
												<tr style="text-align: center;">
													<td>
														<input type="checkbox" name="rowCheck" class="deleteUserSeqs" value="${list.userSeq}" />
													</td>
													<td>
														${list.userSeq }
													</td>	
													<td>
														${list.name }
													</td>
													<td>
														${list.userId }
													</td>
													<td>
														${list.tel }
													</td>
													<td>
														${list.birthday }
													</td>
													<td>
														<c:choose>
															<c:when test="${list.gender == 'male'}">
																남자
															</c:when>
															<c:when test="${list.gender == 'female'}">
																여자
															</c:when>
														</c:choose>
													</td>
													<td>
														<fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd" />  
													</td>
													<td>
														<c:choose>
															<c:when test="${list.login_type == 'site'}">
																사이트
															</c:when>
															<c:when test="${list.login_type == 'kakao'}">
																카카오
															</c:when>
															<c:when test="${list.login_type == 'naver'}">
																네이버
															</c:when>
															<c:when test="${list.login_type == 'google'}">
																구글
															</c:when>
														</c:choose>
														
													</td>
													<td>
														<span>
															<a href="${pageConext.request.contextPath }/admin/userEditView?userSeq=${list.userSeq}">
																<input type="button" class="btn btn-primary" value="수정" />
															</a>
														</span>
														<span>
														<a href="javascript:userDelete('${list.userSeq }');">
															<input type="button" class="btn btn-danger" id="delete" value="삭제" />
															<input type="hidden" name="userSeq" id="userSeq" value="${list.userSeq }" />
														</a>
													</span>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card -->
						</div>
						<!-- /.container-fluid -->
					</div>
					<!-- /.content -->
				</form>
				 --%>
				 
				 
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
			"order"		:	[0, "DESC"],
			//"autoWith"	:	true
	});

	$("#data_list").dataTable({
		data : data,
		columns : [
			{ data : 'userSeq' },
			{ data : 'name' },
			{ data : 'tel' },
			{ data : 'birthday' },
			{ data : 'peopleType' },
			{ data : 'regDate' }
		]
	});
</script>



</body>
</html>