<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   	<title>Kettle</title>
   
   	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/image/favicon.ico">
	<!-- Place favicon.ico in the root directory -->
	<!-- Jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/meanmenu.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/default.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <!-- BootStrap CSS-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <!-- BootStrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    <!-- 다음 우편번호 검색 스크립트 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/daumPostCode.js"></script>
	
	<script src="${pageConext.request.contextPath }/assets/js/user/registView.js"></script>
	
	
	<style type="text/css">
		.col-md-8 {
			display: inline-flex;
		}
	</style>
	
	
	<script type="text/javascript">
		
	</script>
</head>
<body>

	<header class="header3">
		<c:import url="${pageContext.request.contextPath }/assets/include/header.jsp" />
	</header>
	
	<div class='container'>
	    <div class='page-header'>
	        <h1>회원가입</h1>
	    </div>
	    <hr />
	    <!-- 가입폼 시작 -->
	    <form method="POST" class="form-horizontal" id="registForm" name="myform"   enctype="multipart/form-data">
	
	        <div class="form-group">
	            <label for='userid' class="col-md-2">아이디*</label>
	            <div class="col-md-8">
                	<input type="text" name="user_id" id="user_id" class="form-control"/>
                	<button type="button" class="btn btn-primary" id="chkUserId" onClick="javascript:duplicationUserId();"> 중복아이디 확인</button>
	            </div>
	        </div>
	
	        <div class="form-group">
	            <label for='"password"' class="col-md-2">비밀번호*</label>
	            <div class="col-md-8">
	                <input type="password" name="user_pw" id="user_pw" class="form-control" placeholder="최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자"/>
	            </div>
	        </div>
	
	        <div class="form-group">
	            <label for='password_re' class="col-md-2">비밀번호 확인*</label>
	            <div class="col-md-8">
	                <input type="password" name="user_pw_re" id="user_pw_re" class="form-control"/>
	            </div>
	        </div>
	
	        <div class="form-group">
	            <label for='name' class="col-md-2">이름*</label>
	            <div class="col-md-8">
	                <input type="text" name="name" id="name" class="form-control"/>
	            </div>
	        </div>
	
	        <div class="form-group">
	            <label for='email' class="col-md-2">이메일*</label>
	            <div class="col-md-8">
                	<input type="email" name="email" id="email" class="form-control"/>
                	<button type="button" class="btn btn-primary" id="chkEmail" onClick="javascript:duplicationEmail();"> 중복이메일 확인</button>
	            </div>
	        </div>
	
	        <div class="form-group" style="display: flex;">
	            <label for='tel' class="col-md-2">연락처*</label>
	            <div class="col-md-8" style="display: flex;">
	                <input type="tel" name="tel" id="tel_1" class="form-control col-md-3" maxlength="3" placeholder="010"/>
	                &nbsp;&nbsp; - &nbsp;&nbsp;
	                <input type="tel" name="tel" id="tel_2" class="form-control col-md-3" maxlength="4" placeholder="1234"/>
	                &nbsp;&nbsp; - &nbsp;&nbsp;
	                <input type="tel" name="tel" id="tel_3" class="form-control col-md-3" maxlength="4" placeholder="5678"/>
	            </div>
	        </div>
	        
			<div class="form-group" style="display: flex; align-items: end;">
				<label for="peopleType" class="col-md-2">구분*</label>
				<label class="radio-inline">
					<input type="radio" name="peopleType" id="corporater" value="corporater"> 자영업자
				</label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label class="radio-inline">
					<input type="radio" name="peopleType" id="consumer" value="consumer"> 개인 사용자
				</label>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<label for="birthdate" class="col-md-2">생년월일*</label>
				<div class="col-md-3 text_area">
					<input type="date" name="birthday" id="birthday" class="form-control" placeholder="yyyy-mm-dd">
				</div>
			</div>

	        <div class="form-group">
	            <label for='postcode' class="col-md-2">우편번호</label>
	            <div class="col-md-10 clearfix" style="display: flex;">
	                <input type="text" name="postcode" id="postcode" class="form-control pull-left" style='width: 120px; margin-right: 5px'/>
	                <!-- 클릭 시, Javascript 함수 호출 : openDaumPostcode() -->
	                <input type='button' value='우편번호 찾기' class='btn btn-warning' onclick='execDaumPostcode("postcode", "addr1", "addr2")'/>
	            </div>
	        </div>
	
			<div class="form-group" style="display: flex;">
	            <div class="col-md-5">
                    <label for="addr1" class="col-md-2">주소</label>
	                <input type="text" name="addr1" id="addr1" class="form-control">
	            </div>
      			<div class="col-md-5">
                    <label for="addr2" class="col-md-3">상세주소</label>
	                <input type="text" name="addr2" id="addr2" class="form-control">
	            </div>
	        </div>
			
	        <div class="form-group">
	            <div class="col-md-offset-2 col-md-10">
	                <button type="button" id="registBtn" class="btn btn-primary">가입하기</button>
	                <button type="reset" class="btn btn-danger">다시작성</button>
	            </div>
	        </div>
	        
	        <input type="hidden" name="type" id="type" value="normal" />
	        <input type="hidden" id="userIdChk" value="N" />
	        <input type="hidden" id="emailChk" value="N" />
	    </form>
	    <!-- 가입폼 끝 -->
	</div>
	
	<footer>
		<c:import url="${pageContext.request.contextPath }/assets/include/footer.jsp" />
	</footer>
</body>
</html>