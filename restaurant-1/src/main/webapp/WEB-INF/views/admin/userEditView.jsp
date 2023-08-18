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

	<!-- 다음 우편번호 검색 스크립트 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/daumPostCode.js"></script>
  
  <script type="text/javascript">
  	function updateDate() {
  		var con = confirm("내용을 수정하시겠습니까?");
  		
  		if (con) {
			alert("내용이 수정되었습니다.");
			$("#updateForm").attr('action', '/admin/userEdit.do');
			$("#updateForm").submit();	
  		} else {
  			alert("취소되었습니다.");
  			return;
  		}
  	}
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


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2" style="width: 90%; margin: auto;">
          <div class="col-sm-6">
            <h1 class="m-0">
            	<strong>
            		회원정보 수정
            	</strong>	
          		</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main Content -->
    <form method="POST" id="updateForm">
		<section class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body" style="width: 90%; margin: auto;">
								<div class="form-group">
						           	<label for='userId' class="col-md-2">아이디</label>
						            <div class="col-md-8">
						                <input type="text" name="userId" id="userId" class="form-control" value="${user.userId }" />
						            </div>
						        </div>

								<div class="form-group">
						           	<label for='name' class="col-md-2">이름</label>
						            <div class="col-md-8">
						                <input type="text" name="name" id="name" class="form-control" value="${user.name }" />
						            </div>
						        </div>

								<div class="form-group">
						           	<label for='email' class="col-md-2">이메일</label>
						            <div class="col-md-8">
						                <input type="text" name="email" id="email" class="form-control" value="${user.email }" />
						            </div>
						        </div>
						
						        <div class="form-group">
						            <label for="tel" class="col-md-2">연락처</label>
						            <div class="col-md-8">
						                <input type="text" name="tel" id="tel" class="form-control" value="${user.tel }" />
						            </div>
						        </div>
						

								<!--
						        <div class="form-group">
						            <label for="peopleType" class="col-md-5"> 구분 </label>
						            <div class="col-md-5">
										<c:choose>
											<c:when test="${user.peopleType == 'corporater'}">
												<input type="text" name="peopleType" id="peopleType" class="form-control" value="자영업자" />
											</c:when>
											<c:when test="${user.peopleType == 'consumer'}">
												<input type="text" name="peopleType" id="peopleType" class="form-control" value="개인 사용자" />
											</c:when>
										</c:choose>
						            </div>
						        </div>
						
						        <div class="form-group">
						           <label for='birthday' class="col-md-2">생년월일</label>
						            <div class="col-md-10">
						                <input type="text" name="birthday" id="birthday" class="form-control" value="${user.birthday }" />
						            </div>
						        </div>
								-->

								<div class="form-group" style="display: flex; align-items: end;">
									<label for="peopleType" class="col-md-1">구분*</label>
									&emsp;
									<c:choose>
										<c:when test="${user.peopleType == 'corporater'}">
											<label class="radio-inline">
												<input type="radio" name="peopleType" id="corporater" value="corporater" checked> 자영업자	
											</label>
											&emsp;&emsp;
											<label class="radio-inline">
												<input type="radio" name="peopleType" id="consumer" value="consumer"> 개인 사용자
											</label>
										</c:when>
										<c:when test="${user.peopleType == 'consumer'}">
											<label class="radio-inline">
												<input type="radio" name="peopleType" id="corporater" value="corporater"> 자영업자
											</label>
											&emsp;&emsp;
											<label class="radio-inline">
												<input type="radio" name="peopleType" id="consumer" value="consumer" checked> 개인 사용자
											</label>
										</c:when>
									</c:choose>
									&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
									<label for="birthday" class="col-md-2">생년월일*</label>
									<div class="col-md-2 text_area">
										<input type="date" name="birthday" id="birthday" class="form-control" placeholder="yyyy-mm-dd" value="${user.birthday }">
									</div>
								</div>

						
								<div class="col-md-10 clearfix" style="display: flex;">
									<input type="text" name="postcode" id="postcode" class="form-control pull-left" style="width: 120px; margin-right: 5px" value="${user.postcode }">
									<!-- 클릭 시, Javascript 함수 호출 : openDaumPostcode() -->
									<input type="button" value="우편번호 찾기" class="btn btn-warning" onclick="execDaumPostcode(&quot;postcode&quot;, &quot;addr1&quot;, &quot;addr2&quot;)">
								</div>

						        <div class="form-group" style="display: flex;">
									<div class="col-md-4">
										<label for="addr1" class="col-md-2">주소</label>
										<input type="text" name="addr1" id="addr1" class="form-control" value="${user.addr1 }">
									</div>
									<div class="col-md-4">
										<label for="addr2" class="col-md-3">상세주소</label>
										<input type="text" name="addr2" id="addr2" class="form-control"value="${user.addr2 }">
									</div>
								</div>
						
								<div class="form-group">
									<input type="button" class="btn btn-primary" value="수정하기" onClick="updateDate();" /> &nbsp;&nbsp; <input type="button" class="btn btn-warning" value="뒤로가기" onClick="javascript:history.back();"/> 
								</div>
								
								<input type="hidden" name="userSeq" id="userSeq" value="${user.userSeq }" />
							</div>
							
						</div>
					</div>
					
					<!-- /.col-md-6 -->
				</div>
				<!-- /.row -->
			</div>
		</section>
	</form>
  </div>
  <!-- /.content-wrapper -->
   <!-- footer 시작 -->
	<footer class="main-footer">
		<c:import url="${pageContext.request.contextPath }/assets/include/admin_footer.jsp" />
	</footer>
<!-- // footer 끝 -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="${pageContext.request.contextPath }/assets/plugins/jquery-ui/jquery-ui.min.js"></script>
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
